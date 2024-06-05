# Support création d'un espace de travail pour équipe grâce à GitHub

Toutes les commandes sont effectuer dans un Git Bash.

![Git Bash Image](/github_setup_images/git_bash_highlight.png "Open Git Bash")

## Mis en place du répértoire de travail

Dans le répértoire root dans lequel vous voulez travailler, ecrivez
`git clone`
suivi du lien au répértoire GitHub que vous voulez cloner dans votre machine (ce lien est accèsible en cliquant sur le bouton "Code" dans un répértoire GitHub, sous "HTTPS").

![Git Clone Command](/github_setup_images/git_clone_command.png "Clone Remote Repository")

Une fois le répértoire cloné, déplacez-vous dans celui-ci et ouvrez un Git Bash.

(Vous pouvez aussi vous déplacer depuis le même Git Bash, avec `cd`)
![CD Command](/github_setup_images/get_to_cloned_repository.png "Get To Cloned Repository")

Vous devriez vous retrouvez sur la branche "main", avec aucun changement fait sur cette branche.

![Git Status Command](/github_setup_images/git_status_command.png "Get Repository Status")

Afin de travailler, vous devez a présent créer une nouvelle branche:

## Création d'une branche

Dans votre répértoire, ecrivez
`git branch`
Suivi du nom que vous voulez donner à votre branche, par example une fonctionnalité à ajouter.

![Git Branch And Checkout Command](/github_setup_images/git_branch_and_checkout_command.png "Create And Move To Branch")

Effectuez ensuite un `git checkout nom_branch` pour vous déplacer dans la branche en question.

À présent, vous pouvez modifier les fichiers dans le répértoire.

## Stage et Commit

Après avoir effectuer des modifications, vous devez saufgarder votre travail avec `git stage .` (vous pouvez specifier un fichier en particulier après le `git stage`, mais le `.` est plus souvent utiliser, car il séléctionne tout).
Note: `git stage` est un alias de `git add`, ces deux commandes font exactement la même chose.

Par exemple, j'ai ici ajouter 6 fichiers, ce support en question ainsi que 5 images
![Git Stage And Status Command](/github_setup_images/git_stage_and_status_command.png "Stage Changes And Display Branch Status")

Après avoir ajouté ces fichiers, je peut les "commit", afin de les enregister réelement sous une "snapshot", qui me permettera de retrouver cette version dans le future.

![Git Commit Command](/github_setup_images/git_commit_command.png "Commit Stages Changes")

Le text dans le `-m " ... "` permet de directement ajouter un message au commit, qui servira à se repérer entre les commits, ce message doit être assez bref.

## Push dans GitHub

Pour l'instant, vous n'avez que utiliser Git localement (apart pour la récupération du répértoire), mais pour travailler avec une equipe, il faut mettre ses changement à disposition de tous.
C'est pourquoi nous utilisant GitHub (aussi pratique pour déplacer des fichiers entre ordinateurs et avoir une saufgarde suplémentaire, même pour les travaux seul).

Afin de mettre en ligne votre travail, ecrivez
`git push origin`
Suivi de la branch que vous voulez push, dans ce cas, ça serais "github_setup_guide".
Bien evidemment, il vous faut être autorisé au push par le propriétaire du répértoire.

![Git Push Command](/github_setup_images/git_push_command.png "Push To Repository")

Attention : si vous ne vous êtes pas encore identifié à GitHub sur votre Git Bash, cette fenêtre va s'afficher:

![Git Sign In Popup](/github_setup_images/gitbuh_sign_in_popup.png "Sign In GitHub")

Je vous conseil d'utiliser la première option, car elle est plus rapide (si vous êtes déjà connecté à GitHub sur votre navigateur).

Vous devriez maintenant pouvoir voir votre nouvelle branche dans votre répértoire github:

![GitHub New Branch Pushed](/github_setup_images/github_new_branch_pushed.png "Successful Push In GitHub")

A présent, dès que vous avez travailler sur votre branche, n'oublier pas de stage et commit, et au moins une fois par jour, push ces changement dans votre branche GitHub.

## Merge

Une fois que vous avez fini de travailler sur la fonctionalité liée à votre branche, vous voudrez sûrement ajouter cette fonctionnalité au projet principale (qui se trouve dans le main), pour cela, il vous faut "merge" votre branche avec le main:

Sur votre branche dans GitHub, vous devriez avoir un bouton "Contribute", ce bouton vous permet de comparer votre branche à une autre, et ouvrire une requête de "pull".

![GitHub Contribute Button](/github_setup_images/github_compare_and_pull_request.png "Compare Or Open Pull Request")

Vous aurez alors la possibilité d'ajouter une description à la Pull request:

![GitHub Write Pull Request Description](/github_setup_images/github_write_pull_request_desription.png "Add A Description To Your Pull Request")

Vous serez alors informé des "conflicts de Merge" qui se sont produit, normalement si tout à bien été fait, il ne devrais pas en avoir.


![GitHub Merge Pull Request](/github_setup_images/github_merge_pull_request.png "Merge A GitHub Branch To Another")

Et voilà ! Votre Merge est fait et la branche "Main" doit a présent avoir votre fonctionnalité en plus, vous pouvez a présent surpprimer votre branche (surprimmer les branches après les merge est conseillé si vous n'allez pas modifier cette branche dans le future, par example en devloppement "Trunk Based", une pratique conseillé pour les petites équipes de Dev)

![GitHub Delete A Branch After Merge](/github_setup_images/github_delete_branch_after_merge.png "Delete A Branch After Merging It")


