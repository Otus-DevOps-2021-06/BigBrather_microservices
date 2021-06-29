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
 - Создана директория infra c cодержимым:
   - конфигурация для Terraform (запуск **terraform apply**);
   - плейбуки Ansible (запуск **ansible-playbook main.yml**);
   - конфигурация для сборки образа Packer (запуск **packer build -var-file=variables.json app.json**).
