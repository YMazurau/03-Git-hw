#!bin/bash

#cd /home/ym/03.Git/repo
# Получить список удаленных репозиториев из .git/config
remote_names=($(grep -E '\[remote\.[^\]]+\]' .git/config | awk -F '.' '{print $2}'))

# Перебрать каждый удаленный репозиторий и выполнить git push
for remote_name in "${remote_names[@]}"
do
  echo "Выполняется push в удаленный репозиторий: ${remote_name}"
  git push -u "${remote_name}" --all
done
