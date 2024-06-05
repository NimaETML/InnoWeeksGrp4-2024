# Support création d'un espace de travail pour équipe grâce à GitHub

Toutes les commandes sont effectuer dans un Git Bash.

![Git Bash Image](/github_setup_images/git_bash_highlight.png "Open Git Bash")

## Mis en place du répertoire de travail

Dans le répertoire root dans lequel vous voulez travailler, écrivez
`git clone`
suivi du lien au répertoire GitHub que vous voulez cloner dans votre machine (ce lien est accessible en cliquant sur le bouton "Code" dans un répertoire GitHub, sous "HTTPS").

![Git Clone Command](/github_setup_images/git_clone_command.png "Clone Remote Repository")

Une fois le répertoire cloné, déplacez-vous dans celui-ci et ouvrez un Git Bash.

(Vous pouvez aussi vous déplacer depuis le même Git Bash, avec `cd`)
![CD Command](/github_setup_images/get_to_cloned_repository.png "Get To Cloned Repository")

Vous devriez vous retrouvez sur la branche "main", avec aucun changement fait sur cette branche.

![Git Status Command](/github_setup_images/git_status_command.png "Get Repository Status")

Afin de travailler, vous devez à présent créer une nouvelle branche:

## Création d'une branche

Dans votre répertoire, écrivez
`git branch`
Suivi du nom que vous voulez donner à votre branche, par exemple une fonctionnalité à ajouter.

![Git Branch And Checkout Command](/github_setup_images/git_branch_and_checkout_command.png "Create And Move To Branch")

Effectuez ensuite un `git checkout nom_branch` pour vous déplacer dans la branche en question.

À présent, vous pouvez modifier les fichiers dans le répertoire.

## Stage et Commit

Après avoir effectué des modifications, vous devez sauvegarder votre travail avec `git stage .` (vous pouvez spécifier un fichier en particulier après le `git stage`, mais le `.` est plus souvent utiliser, car il sélectionne tout).
Note: `git stage` est un alias de `git add`, ces deux commandes font exactement la même chose.

Par exemple, j'ai ici ajouter 6 fichiers, ce support en question ainsi que 5 images
![Git Stage And Status Command](/github_setup_images/git_stage_and_status_command.png "Stage Changes And Display Branch Status")

Après avoir ajouté ces fichiers, je peut les "commit", afin de les enregister réelement sous une "snapshot", qui me permettera de retrouver cette version dans le future.

![Git Commit Command](/github_setup_images/git_commit_command.png "Commit Stages Changes")

Le texte dans le `-m " ... "` permet de directement ajouter un message au commit, qui servira à se repérer entre les commits, ce message doit être assez bref.

## Push dans GitHub

Pour l'instant, vous n'avez qu’utilisé Git localement (sauf pour la répertoire du répertoire), mais pour travailler avec une équipe, il faut mettre ses changements à disposition de tous.
C'est pourquoi nous utilisant GitHub (aussi pratique pour déplacer des fichiers entre ordinateurs et avoir une sauvegard supplémentaire, même pour les travaux seul).

Afin de mettre en ligne votre travail, écrivez
`git push origin`
Suivi de la branche que vous voulez push, dans ce cas, ça serait "github_setup_guide".
Bien évidemment, il vous faut être autorisé au push par le propriétaire du répertoire.

![Git Push Command](/github_setup_images/git_push_command.png "Push To Repository")

Attention : si vous ne vous êtes pas encore identifié à GitHub sur votre Git Bash, cette fenêtre va s'afficher :

![Git Sign In Popup](/github_setup_images/gitbuh_sign_in_popup.png "Sign In GitHub")

Je vous conseille d'utiliser la première option, car elle est plus rapide (si vous êtes déjà connecté à GitHub sur votre navigateur).

Vous devriez maintenant pouvoir voir votre nouvelle branche dans votre répertoire GitHub:

![GitHub New Branch Pushed](/github_setup_images/github_new_branch_pushed.png "Successful Push In GitHub")

A présent, dès que vous avez travaillé sur votre branche, n'oublier pas de stage et commit, et au moins une fois par jour, push ces changement dans votre branche GitHub.

## Merge

Une fois que vous avez fini de travailler sur la fonctionnalité  liée à votre branche, vous voudrez sûrement ajouter cette fonctionnalité au projet principale (qui se trouve dans le main), pour cela, il vous faut "merge" votre branche avec le main:

Sur votre branche dans GitHub, vous devriez avoir un bouton "Contribute", ce bouton vous permet de comparer votre branche à une autre, et ouvrir une requête de "pull".

![GitHub Contribute Button](/github_setup_images/github_compare_and_pull_request.png "Compare Or Open Pull Request")

Vous aurez alors la possibilité d'ajouter une description à la Pull request:

![GitHub Write Pull Request Description](/github_setup_images/github_write_pull_request_desription.png "Add A Description To Your Pull Request")

Vous serez alors informé des "conflicts de Merge" qui se sont produit, normalement si tout à bien été fait, il ne devrait pas en avoir.


![GitHub Merge Pull Request](/github_setup_images/github_merge_pull_request.png "Merge A GitHub Branch To Another")

Et voilà ! Votre Merge est fait et la branche "Main" doit à présent avoir votre fonctionnalité en plus, vous pouvez à présent supprimer votre branche (supprimer les branches après les merge est conseillé si vous n'allez pas modifier cette branche dans le future, par exemple en dévloppement "Trunk Based", une pratique conseillé pour les petites équipes de Dev)

![GitHub Delete A Branch After Merge](/github_setup_images/github_delete_branch_after_merge.png "Delete A Branch After Merging It")


