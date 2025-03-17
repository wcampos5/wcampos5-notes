#vpn #mfa #pin #ciscoclient #security #anyconnect #passkey #touchid

Windows[^1]
Mac[^2]
***
### Windows
#### Delelar o PIN corrente:

```cmd
certutil.exe -deletehellocontainer
```

#### Adicionar novo PIN

:fab_windows:  WIN+I -> :far_user: Accounts -> :fas_key: Sign in options

:obs_keyboard_glyph: Windows Hello PIN
	Add New

You will got a verification message number in your cellphone.

After that you will be prompted to type the new PIN 
![[Pasted image 20241216144348.png]]

All set!

#### Connect to your VPN at first time after update

- Open the Cisco Security Cliente (VPN)
	![[Pasted image 20241216144625.png]]
	Choose: _Use another account_
		Type you cdsis@ford.com
		Pick Sign-in Option:
			Choose: _Face, Fingerprint, PIN or Security Key_
		![[Pasted image 20241216144954.png]]
		Windows Hello ou Chave de Segurança Externa

		Type you new PIN
		




***
[[]] | [[]]
#### Tags
***
[^1]: [Windows](https://www.techatford.com/esc?id=kb_article&table=kb_knowledge&sysparm_article=KB0012114&searchTerm=windows%20hello%20for%20business)
[^2]: [Mac](https://www.techatford.com/esc?id=kb_article&table=kb_knowledge&sysparm_article=KB0012115&searchTerm=passkey)