
Git 
https://git-scm.com/downloads  telecharger GIT
Lancer l'installation de Git
Verifier la version : Ouvrir un terminal et taper $ git --version
resultat : git version 2.21.0.windows.1
installation Git terminé


 GitHub
https://github.com/ s'enregistrer
Allez dans l'onglet Repository(referentiels) => faire un NEW
 => remplir le formulaire (laisser en pubic et ne pas cocher le README)
 Laisser la page de configuration
 
 Ouvrir une console
 se positionner dans le dossier à  mettre sur le github $ cd C:\myworkspace\DB_LabJSP_12_Braderie
 
 => copier coller la premiere cellule via l'icon en haut a droite :
			 $: C:\myworkspace\DB_LabJSP_12_Braderie>echo "# braderie" >> README.md

			C:\myworkspace\DB_LabJSP_12_Braderie>git init
			Reinitialized existing Git repository in C:/myworkspace/DB_LabJSP_12_Braderie/.git/

			C:\myworkspace\DB_LabJSP_12_Braderie>git add README.md

			C:\myworkspace\DB_LabJSP_12_Braderie>git commit -m "first commit"
			[master (root-commit) 94df0a3] first commit
			 Committer: 31010-10-03 <31010-10-03@exchange.ad.afpanet>
			Your name and email address were configured automatically based
			on your username and hostname. Please check that they are accurate.
			You can suppress this message by setting them explicitly. Run the
			following command and follow the instructions in your editor to edit
			your configuration file:

				git config --global --edit

			After doing this, you may fix the identity used for this commit with:

				git commit --amend --reset-author

			 1 file changed, 1 insertion(+)
			 create mode 100644 README.md

			C:\myworkspace\DB_LabJSP_12_Braderie>git remote add origin https://github.com/Davys31/braderie.git

=> Rentrer les identifiants et valider 

			C:\myworkspace\DB_LabJSP_12_Braderie>git push -u origin master
			Enumerating objects: 3, done.
			Counting objects: 100% (3/3), done.
			Writing objects: 100% (3/3), 229 bytes | 229.00 KiB/s, done.
			Total 3 (delta 0), reused 0 (delta 0)
			To https://github.com/Davys31/braderie.git
			 * [new branch]      master -> master
			Branch 'master' set up to track remote branch 'master' from 'origin'.

La connection au GitHub est reussie
Verifier sur le https://github.com/ que le repository existe ( onglet repository)

=> Dans le projet : C:\myworkspace\DB_LabJSP_12_Braderie>
Effectuer les commandes suivantes : 
$ git status => voir le status rouge des modifications
$ git add . => ajouter toutes les modifications ou git add src/
$ git status => toutes les modifications doivent etre au vert 
$ git commit -m v1 => met les modifications en attente de validation (v1) nom du commit
$ git push => enregistrer sur le gitHub

Regarder sur le git Hub le dernier commit 


Recuperer le dossier sur linux
creer un nouveu dossier
ouvrir ce dossier avec vscode ou eclipse 
ouvir un terminal lier au dossier
copier sur le gitHub le lien clone or Download
faire dans le terminal du dossier
$ git clone "coller le lien"