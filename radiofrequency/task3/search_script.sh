#!/bin/bash

# default values
DEFAULT_FILE="config.txt"
DEFAULT_WORD="path"

# check arguments count
# 0 args -> use default
if [ $# -eq 0 ]; then
    file="$DEFAULT_FILE"
    word="$DEFAULT_WORD"
# 1 arg -> error
elif [ $# -eq 1 ]; then
    echo "Ошибка: требуется два параметра - путь к файлу и слово для поиска."
    echo "Пример использования: $0 файл.txt слово"
    exit 1
# 2 args -> file & word
elif [ $# -eq 2 ]; then
    file="$1"
    word="$2"
# more then 2 args -> error
else
    echo "Ошибка: слишком много аргументов."
    exit 1
fi

# if file exist
if [ ! -f "$file" ]; then
    echo "Файл '$file' не найден."
    exit 1
fi

# find word in file
grep -i "$word" "$file" || echo "Слово '$word' не найдено в файле."
