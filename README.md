Запуск:

`docker build -t try-echo ./echo/`

`docker build -t try-history ./history/`

`docker-compouse up`

Чтобы проверить, можно отправлять запросы в `/` ручку вида `localhost:2345?test`. Он ответит эхо-ответов, вернув строчку запроса, при этом отправит эту строку другому приложению, чтобы оно его сохранило.

Историю запросов можно получить по адресу `localhost:8082/history`
