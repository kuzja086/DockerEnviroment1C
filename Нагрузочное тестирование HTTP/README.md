#Нагрузочное тестирование http-сервисов
Используем https://github.com/grafana/k6 для тестов
Документация https://k6.io/docs/
Строка запуска docker run --rm -i grafana/k6 run --vus 30 --duration 30s --out=influxdb=http://influxdb:8086/k6  - <script.js

--vus - Количество пользователей
--duration - Длительность запросов
script.js - скрипт запуска запроса
http://influxdb:8086/k6 - Адрес для хранения результатов
https://grafana.com/grafana/dashboards/2587-k6-load-testing-results/ - Дашбоард графана

Для превращения коллекции Postman используем https://github.com/apideck-libraries/postman-to-k6
Dockerfile исправил

Для использования запускаем 