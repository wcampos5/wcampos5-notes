#sm #smlearning #smpsd

Product Specification Document[^1]
***

#### Overview

>[!info] SM Business Logic
>New Batch Schedule Maintenance Business Logic
[SM Business Logic](https://github.ford.com/gdia-prognostics/gcp-ol-prog/blob/dev/bq/development/prog_dags_sql_sandbox/sm_prediction/sm_business_rules.md)
#smbusinesslogic #businesslogic 


É uma expansão da feature de Vehicle Prognostics atualmente oferecida pelo time de VHA - Vehicle Health Alert, é um alerta confiável chamando o consumidor para agendar sua manutenção periódica.

#### Método

As informações serão coletadas e enviadas para a nuvem para processamento offboard.
Quando um alerta for emitido pela modelo de treinamento, o alerta será analisado pelo time de VHA para enviar uma notificação para o aplicativo mobile do consumidor (Ford PASS).


_Jornada de notificação_
***
![[notification_journey.jpg]]

![[notification_journey.canvas]]

#### Suposições/ Restrições / Dependências /Exclusões

A1-  Ford Pass instalado, usuario criado e autorização dos dados
A3 - VHA/PAE não consumirá dados anonimos de diagnostico do SDN ou TMC.
A5 - Quando  as configuraçãoes de conexão (CCS) forem restringidas pelo consumidor para a coleta de dados, o recurso ficará desabilitado para o VIN em particular para esta conta de usuario no app.

D1 - Veículo necessita ser equipado com o 4G TCU no minimo


#ws-mod
#### Web Service Module
Base de dados que contém as recopmendações de agendamento de manutenção.

***

## Casos de Uso

Sumário dos Gatilhos

Uncertain Bin
#ub #incertaintbin

|                                          |      Samples       |        Estimativa Miles / Days         | Estimativa Km / Days |           Estimativa<br>dias            |          UB          | Dist<br>Over<br>Mileage<br>Interval | Caso Uso | FT  |
| ---------------------------------------- | :----------------: | :------------------------------------: | :------------------: | :-------------------------------------: | :------------------: | ----------------------------------- | -------- | --- |
| Tempo x Distância Model                  |         -          |                   -                    |          -           |                    -                    | :fas_greater_than: 3 |                                     | UC1      |     |
| Antes de enviar msg.                     |        >150        |                 >3000                  |        >4800         | >120                ≤3          equal:3 |                      | UC2                                 |          |     |
| Planejar (2nd) _por distancia_           |        >150        | >3000 :fas_greater_than_equal: d > 500 |        >4800         |                                         | :fas_greater_than: 3 |                                     | UC3      |     |
| Planejar (2nd) _por tempo_               |        >150        |                                        |                      |         120 days ≥ t > 30 Days          |          ≤3          |                                     | UC4      |     |
| Planejar<br>_UB_ :fas_less_than_equal: 3 |        >150        |                                        |                      |         30 days ≥  t  > 14 Days         |          ≤3          |                                     | UC5      |     |
| Manutenção<br>aproximando                |        >150        |   500 :fas_greater_than_equal: t > 0   |                      |                                         | :fas_greater_than: 3 |                                     | UC6      |     |
| Manutenção<br>aproximando                |        >150        |                                        |                      |             14 days ≥ t > 0             |          ≤3          |                                     | UC7      |     |
| Manutenção<br>Requerida                  |        >150        |                  ≤ 0                   |                      |                 OR ≤ 0                  |                      | ≤ 500                               | UC8      |     |
| Manutenção<br>Reset                      | Oil Reset Received |                                        |                      |         OR 14 days over SM date         |                      | OR ≥ 500                            | UC9      |     |




#### UC1 SM - Vehicle Time vs. Distance Model Developing
(tempo x distância)

| **UC Descrição**       | Número insuficiente de dados para fornecer ao cliente uma estimativa precisa do tempo no intervalo de quilometragem programado.                                                                                                                                                                           |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Trigger**            | Payload recebido do veículo                                                                                                                                                                                                                                                                               |
| **VHA Post Condition** | App - Quando o veículo estiver com uncertanty BIN > 3, o aplicativo móvel não exibirá nenhuma estimativa de tempo ou espaço reservado para estimativas.<br><br>VHR - Quando o veículo estiver com uncertanty BIN > 3, o VHR não exibirá nenhuma estimativa de tempo ou espaço reservado para estimativas. |


#### UC2 SM - Prior to Messaging

| **UC Descrição**       | Distância estimada para intervalo de manutenção é > 3000 milhas (4800 km) AND Uncertanty BIN > 3 OR Tempo estimado para manutenção > 120 dias E _UB_ ≤ 3     |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Pré-Condição**       | Número suficiente de trips                                                                                                                                   |
| **Trigger**            | Distância estimada para intervalo de manutenção > 3000 miles (4800km) AND UB > 3 OR tempo estimado pra manutenção >120 dias AND _UB_ :fas_less_than_equal: 3 |
| **VHA Post Condition** | Estimativa será mostrada no app para _UB_ :fas_less_than_equal: 3                                                                                            |


#### UC3 SM - Time to Plan (Secondary) for _UB_  > 3

| **UC Descrição**       | Distância estimada para intervalo de manutenção é > 3000 milhas (4800 km) :fas_greater_than_equal:  d  > 500 miles (800km) AND _UB_ > 3                                                                                                                                                                |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Pré-Condição**       | Número suficiente de trips                                                                                                                                                                                                                                                                             |
| **Trigger**            | Distância estimada para intervalo de manutenção > 3000 miles (4800km)  :fas_greater_than_equal: d > 500 miles (800km) AND _UB_ > 3                                                                                                                                                                     |
| **VHA Post Condition** | 1. Mantenha a Notificação secundária no VHA com o seguinte: _Planejar (secundário)_<br><br>2. Disponibilizar os dados para VHR e Vehicle Status de acordo com a tabela de agendamento de manutenção.<br><br>3. Smart tile, banner and Land Page ?<br><br>4. Não exibir estimativa no app para _UB_ > 3 |











***
[[]] | [[]]
#### Tags
***
[^1]: [Product Specification Document](https://azureford.sharepoint.com/:w:/s/CSIAnalytics/EVPzYfu1xkdKq7mryxcH154B2eVI_W1LiJlROmWkRm81zw?e=I7a1gu)