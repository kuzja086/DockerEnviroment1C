#Установка Bitwarden
## Создаем директорию и выдаем права
sudo mkdir /opt/bitwarden
sudo chmod -R 700 /opt/bitwarden
sudo chown -R bitwarden:bitwarden /opt/bitwarden
## Скачиваем и запускаем скрипт
curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh \
    && chmod 700 bitwarden.sh

./bitwarden.sh install

## Дополнительно нужно открыть порты и использовать майл сервер для подтвержения регистрации
 

# Использование 
./bitwarden.sh rebuild - пересборка после изменения конфигурационных параметров
./bitwarden.sh start - Запуск
./bitwarden.sh stop - Остановка


