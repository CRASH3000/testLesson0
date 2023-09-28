#!/bin/bash

# Переключаемся на ветку dev
git checkout dev

# Получаем последний коммит
latest_commit=$(git rev-parse HEAD)

# Переключаемся на ветку prd
git checkout prd

# Применяем изменения из последнего коммита dev
git cherry-pick $latest_commit

# Запрашиваем имя тега от пользователя
read -p "Enter tag name: " tag_name

# Устанавливаем тэг для текущего коммита
git tag $tag_name
