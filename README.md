# ПРАКТИЧЕСКАЯ РАБОТА №4
## Создание проекта с использованием Cubit
### Цель работы: создать проект с использование Cubit и реализовать в нем кликер с темной и светлой темой.
### Ход работы:
### Для данного проекта необходимо скачать следующую библиотеку:
###  ![image](https://user-images.githubusercontent.com/80402777/205403676-a932da9a-d2cd-4988-8b3c-e2ff514cca4e.png)
### Рисунок 34 - библиотека
### Также необходимо скачать расширение:
###  ![image](https://user-images.githubusercontent.com/80402777/205403698-a550bf8f-912d-4b02-b1c1-5ccd1c035052.png)
### Рисунок 35 - расширение
### Для создания нового Cubit надо нажать на папку lib и выбрать Cubit: new Cubit.
###  ![image](https://user-images.githubusercontent.com/80402777/205403708-2400da84-7b0e-46d1-bc94-ed1564de59ad.png)
### Рисунок 36 - создание cubit
### Таким образом у нас автоматически создадутся файлы cubit и state
###  ![image](https://user-images.githubusercontent.com/80402777/205403722-fc6bf70b-d863-47ff-98ba-f107fe867135.png)
### Рисунок 37 - созданные файлы
### Для данной практической работы необходимо создать следующие cubit:
###  ![image](https://user-images.githubusercontent.com/80402777/205403730-865f8af3-d7b7-4f05-b352-2591e25e9c77.png)
### Рисунок 38 - необходимые cubit
### Они отвечают за работу смены темы, счетчика и листа.
### На следующих изображениях предоставлен пример cubit для листа:
###  ![image](https://user-images.githubusercontent.com/80402777/205403742-21128a4b-06f8-4cad-8ab3-efde4f0bb708.png)
### Рисунок 39 - listState
### List Cubit содержит два метода. Один из них отвечает за запись числа в Text, другой очищает лист. 
###  ![image](https://user-images.githubusercontent.com/80402777/205403758-1413ade0-11d2-4942-9563-a3663251f582.png)
### Рисунок 40 - listCubit
### В main мы добавляем MultiBlocProvider, который показывает созданные нами cubit, также здесь мы создаем BlocBuilder, который меняет тему приложения.
###  ![image](https://user-images.githubusercontent.com/80402777/205403799-0b94dc9b-bea3-461c-9953-2a98aa46a4d0.png)
### Рисунок 41 - main
### Далее создаем BlocBuilder для счетчика
###  ![image](https://user-images.githubusercontent.com/80402777/205403809-b73d7e43-0648-47c0-800e-f92911ac0255.png)
### Рисунок 42 - BlocBuilder для счетчика
### Потом создаем три кнопки, по нажатию которых будут происходить действия: сложение, вычитание, смена темы приложения.
###  ![image](https://user-images.githubusercontent.com/80402777/205403842-84988f59-811d-4598-87e1-0a369afef0dd.png)
### Рисунок 43 - кнопки
### Также создаем BlocBuilder, который будет выводить лист со значением счетчика и текущей темой приложения.
###  ![image](https://user-images.githubusercontent.com/80402777/205403852-aa241a86-8bc2-4ae7-803c-7cd8461c836f.png)
### Рисунок 44 - BlocBuilder для листа
### И наконец создаем кнопку, которая будет очищать лист.
###  ![image](https://user-images.githubusercontent.com/80402777/205403856-35a303fe-ca8c-40ff-b882-7cd8c7991bc0.png)
### Рисунок 45 - кнопка для очищения листа
###  ![image](https://user-images.githubusercontent.com/80402777/205403864-59164219-f1c7-4b50-9c73-ff96bca89a01.png)
### Рисунок 46 - темная тема
###  ![image](https://user-images.githubusercontent.com/80402777/205403872-6b2c3fda-d07b-4655-8b74-8cdfca76053a.png)
### Рисунок 47 - светлая тема
###  ![image](https://user-images.githubusercontent.com/80402777/205403882-8b2823e3-c108-443a-924e-c72540d872c8.png)
### Рисунок 48 - очищенный лист
### Вывод: на данной практической работе был создан проект с использованием Cubit, а также был реализован в нем кликер с темной и светлой темой.

