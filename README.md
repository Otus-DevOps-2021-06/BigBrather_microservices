# BigBrather_microservices
BigBrather microservices repository

HomeWork №16
---
При выполнении домашнего задания с лекции №16, было выполнено:
 1) Основное задание:
 - создан **Dockerfile** содержащий образ с приложением Reddit и необходимыми пакетами для работы;
 - конфигурационный файл для MongoDB;
 - переменная окружения для MongoDB;
 - script для запуска приложения Reddit.
 2) Образ опубликован на Docker Hub (**bigbrather/otus-reddit**):
 - запуск контейнера (**docker run --name reddit -d -p 9292:9292 bigbrather/otus-reddit:1.0**).
 4) Задание со * (1):
 - в файле *docker-monolith/docker-1.log* содержится объяснение, чем отличается контейнер от образа.
 5) Задание со * (2):
 - создана директория infra c cодержимым:
   - конфигурация для Terraform (запуск **terraform apply**);
   - плейбуки Ansible (запуск **ansible-playbook main.yml**);
   - конфигурация для сборки образа Packer (запуск **packer build -var-file=variables.json app.json**).

HomeWork №17
---
При выполнении домашнего задания с лекции №17, было выполнено:
 1) Основное задание:
 - cборка Docker-образов для сервисного приложения;
 - оптимизация работы с Docker-образами;
 - запуск и работа с приложением на основе Docker-образов;
 - создание сети и использование volume.

HomeWork №18
---
При выполнении домашнего задания с лекции №18, было выполнено:
 1) Основное задание:
 - изучены варианты подключения docker-контейнеров к сети с помощью драйверов none, host, bridge;
 - создание кастомной сети с bridge драйвером, подключение к ней контейнеров с возможностью их обнаружения по alias;
 - описание и запуск сервисов с помощью docker-compose, параметризация с помощью переменных окружения, записанных в .env файл.
 
 Вопрос: Узнайте как образуется базовое имя проекта. Можно ли его задать? Если можно то как?
 
 Ответ: Команда для замены базового имени проекта - (**docker-compose up -p <your_name>**).
 
 HomeWork №20
---
При выполнении домашнего задания с лекции №20, было выполнено:
 1) Основное задание:
 - в файле gitlab-ci.yml в корне репозитория описаны этапы pipeline GitLab CI;
 - в gitlab-ci/docker-compose.yml описана конфигурация для запуска.
 
 HomeWork №22
---
При выполнении домашнего задания с лекции №22, было выполнено:
 1) Основное задание:
 - перенос конфигурации **docker-compose** в директорию **docker**;
 - в **docker-compose.yml** добавлен сервис **prometheus** с приложением для монинторинга и **node-exporter** в качестве экспортера для сбора метрик с хоста;
 - конфигурация prometheus и Dockerfile для сборки образа находится в **monitoring/prometheus**;
 - build образов производиться одной командой из основной директории **for i in ui post-py comment; do cd src/$i; bash docker_build.sh; cd -; done**;
 - запуск сервисов производится из директории docker командой **docker-compose up -d**, для остановки сервисов **docker-compose down**.
 2) Задание со * (1):
 - добавлен мониторинг MongoDB c помощью экспортера bitnami/mongodb-exporter.
 
 Ссылки на образы в Docker Hub: [UI](https://hub.docker.com/repository/docker/bigbrather/ui), [Post](https://hub.docker.com/repository/docker/bigbrather/post), [Comment](https://hub.docker.com/repository/docker/bigbrather/comment), [Prometheus](https://hub.docker.com/repository/docker/bigbrather/prometheus).
 
 HomeWork №23
---
При выполнении домашнего задания с лекции №23, было выполнено:
 1) Основное задание:
 - мониторинг Docker контейнеров;
 - визуализация метрик, сбор метрик работы приложения и бизнес метрик;
 - настройка и проверка алёртинга с помощью AlertManager + его интеграция со Slack.
 
 Была проведена работа с cAdvisor UI, Grafana, Prometheus, AlertManager.
 
 Ссылки на образы в Docker Hub:
 [UI](https://hub.docker.com/repository/docker/bigbrather/ui), [Comment](https://hub.docker.com/repository/docker/bigbrather/comment), [Post](https://hub.docker.com/repository/docker/bigbrather/post), [Prometheus](https://hub.docker.com/repository/docker/bigbrather/prometheus), [AlertManager](https://hub.docker.com/repository/docker/bigbrather/alertmanager).
 
 HomeWork №25
---
При выполнении домашнего задания с лекции №25, было выполнено:
 1) Основное задание:
 - подготовка окружающей среды;
 - логирование контейнеров Docker;
 - сбор неструктурированных журналов;
 - визуализация журналов;
 - сбор структурированных журналов;
 - распределенное отслеживание.

 HomeWork №27
---
При выполнении домашнего задания с лекции №27, было выполнено:
 1) Основное задание:
 - установка k8s на двух node при помощи утилиты kubeadm;
 - установка сетевого плагина Calico;
 - проверка статусов node и pods.
 2) Задание со ** (1):
 - описана установку кластера k8s с помощью terraform и ansible.

 HomeWork №28
---
При выполнении домашнего задания с лекции №28, было выполнено:
 1) Основное задание:
 - запуск Minikube-Cluster;
 - применение конфигураций ресурсов Deployment, Service, Namespace;
 - получение внешнего IP-адреса node cluster:
 - получение порта публикации ui-service.

Произведено развёртывание полноценного Kubernetes-Cluster в Yandex.Cloude.

Открыть приложение можно по адресу http://node-ip:NodePort
