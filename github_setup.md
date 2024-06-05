# Support création d'un espace de travail pour équipe grâce à GitHub

toutes les commandes sont efféctuer dans un Git Bash.
![Git Bash Image](/github_setup_images/git_bash_highlight.png "Open Git Bash")

## Mis en place du répértoire de travail

dans le répértoire root dans lequel vous voulez travailler, ecrivez
´git clone´
suivi du lien au répértoire GitHub que vous voulez cloner dans votre machine (ce lien est accèsible en cliquant sur le bouton "Code" dans un répértoire GitHub, sous "HTTPS").

![Git Clone Command](/github_setup_images/git_clone_command.png "Clones Remote Repository")

Une fois le répértoire cloné, déplacez-vous dans celui-ci et ouvrez un Git Bash.

(Vous pouvez aussi vous déplacer depuis le même Git Bash, avec 'cd')
![CD Command](/github_setup_images/get_to_cloned_repository.png "Get To Cloned Repository")

Vous devriez vous retrouvez sur la branche "main", avec aucun changement fait sur cette branche.

![Git Status Command](/github_setup_images/git_status_command.png "Get Repository Status")

afin de travailler, vous devez a présent créer une nouvelle branche:

## Création d'une branche

dans votre répértoire, ecrivez
'git branch'
suivi du nom que vous voulez donner à votre branche, par example une fonctionnalité à ajouter.

![Git Branch And Checkout Command](/github_setup_images/git_branch_and_checkout_command.png "Create And Move To Branch")

Effectuez ensuite un 'git checkout nom_branch' pour vous déplacer dans la branche en question.

à présent, vous pouvez modifier les fichiers dans le répértoire.

## Stage et Commit

après avoir effectuer des modifications, vous devez saufgarder votre travail avec 'git stage .' (vous pouvez specifier un fichier en particulier après le 'git stage', mais le '.' est plus souvent utiliser, car il séléctionne tout).