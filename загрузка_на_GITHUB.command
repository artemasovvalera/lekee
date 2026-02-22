#!/bin/bash
cd "/Users/Valerii/Documents/Лекции  Эксплуатация электрооборудования"
clear
echo "========================================"
echo "   ЗАГРУЗКА НА GITHUB"
echo "========================================"
echo ""
echo "Добавление файлов..."
git add .
echo ""
read -p "Введите описание изменений: " message
if [ -z "$message" ]; then
    message="Обновление файлов"
fi
echo ""
echo "Создание коммита..."
git commit -m "$message"
echo ""
echo "Отправка на GitHub..."
git push
echo ""
if [ $? -eq 0 ]; then
    echo "✓ Загрузка успешно завершена!"
else
    echo "✗ Ошибка при загрузке!"
fi
echo ""
echo "========================================"
echo ""
read -p "Нажмите Enter для выхода..."
EOF