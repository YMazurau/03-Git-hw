#!bin/bash

cd /home/ym/03.Git/repo
# Получить массив удаленных репозиториев из .git/config
remote_names=(`git remote`)
# Перебрать каждый удаленный репозиторий из массива и выполнить git push
for remote_name in "${remote_names[@]}"
do
  echo "Выполняется push в удаленный репозиторий: ${remote_name}"
  git push -u "${remote_name}" --all
done
