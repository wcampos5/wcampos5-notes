#tag #gittag

Utilizadas para criar marcações nas versões diferentes de um sistema, são um atalho, um ponteiro para um ponto especifico do sistema.

As tags sempre se referem ao commit atual

#### Create Tag
###### Create a tag to the current commit
```bash
git tag -a nome-da-tag -m “Mensagem”
```

#### List Tags
#taglist

```bash
git tag
```

###### Create Tag to on old commit

- [ ] List the commits 
```bash
git log --pretty=oneline
```

- [ ] Copy the Hash

>[!warning] Tips:
>No canto superior esquerdo do terminal com o botão direito do mouse selecionar **==editar > marcar > ENTER para copiar==**

- [ ] Create commit Tag   

```bash
git tag -a tagname  CTRL + Insert para colar **_-m “Mensagem”
```


#### Show tag details
#tagdetails
```bash
git tag show tagname
```

Utilização de uma tag

Reverter arquivos utilizando tags:

#### Reset using tag
#tagreset
- [ ] Checkout the Tag
```bash
git checkout tagname
```

- [ ] Reset removing all commit after that tag

```bash
git reset  - -hard tag_name 
```

>[!error] WARNING
>All of the commits after that TAG will be lost


#### Deleting Tag
#tagdelete
Must be in the default branch

###### Delete tag locally
```bash
git tag -d tagname
```

Delete remote tag

```bash
git push --delete origin tagname
```