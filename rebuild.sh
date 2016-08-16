#!/bin/bash

# Reset master
git checkout master
git reset --hard $(git rev-list --max-parents=0 HEAD)

# Create file
rm medalhistas.csv
echo "Rafaela Silva,Judô,Bronze" >> medalhistas.csv
git add .
git commit -am "add rafaela silva"

# Create new branch
git branch -D add-atletismo
git checkout -b add-atletismo
echo "Thiago Braz,Atletismo,Ouro" >> medalhistas.csv
git commit -am "add thiago braz"

# Create new branch from a branch
git branch -D add-tiro-esportivo
git checkout -b add-tiro-esportivo
echo "Felipe Wu,Tiro Espoertivo,Prata" >> medalhistas.csv
git commit -am "add felipe wu"

# Push to upstream
git push origin --all -f
