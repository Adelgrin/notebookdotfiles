## CHEZMOI UPDATE

para puxar as configuracoes deste diretorio:
```
export GITHUB_USERNAME=Adelgrin
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME/notebookdotfiles
```
então para atualizar as configuracoes e preparar o .config

```
chezmoi update
```
