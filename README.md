# Практическая работа №2


### Тема: Реализация классов, отвечающих за работу базы данных
# Цель работы: научиться реализовывать классы и модели, отвечающие за работу базы данных для склада.
# Ход работы:
# Для начала работы с базой данных необходимо создать схему, которая будет отражать все данные.

![image](https://user-images.githubusercontent.com/80402777/200959671-5a16640b-3e76-4cee-9b63-e5e4bc1f83be.png)
# Рисунок 6 - схема базы данных
# Далее необходимо скачать библиотеки, которые понадобятся в работе с базой данных.
![image](https://user-images.githubusercontent.com/80402777/200959686-d09ad5a0-6a37-4b3f-9fe1-eb61cddef622.png)
# Рисунок 7 - библиотеки
# В папке lib создадим следующую структуру:
![image](https://user-images.githubusercontent.com/80402777/200959719-5b272e28-4c74-44e9-811a-20716737d1be.png)
# Рисунок 8 – папки
# В папке common создадим файл data_base_request.dart.
![image](https://user-images.githubusercontent.com/80402777/200959744-d804b12e-dcf0-47a0-ac7c-ee1406062443.png)
# Рисунок 9 - data_base_request.dart
# В папках data\model создадим модели базы данных:
![image](https://user-images.githubusercontent.com/80402777/200959770-7fcb0ad7-f43b-4632-bc37-7ca1cbba73b7.png)
# Рисунок 10 - модель product
# В итоге получится девять моделей:
![image](https://user-images.githubusercontent.com/80402777/200959787-f30ce46b-e21f-4418-8371-547088167321.png)
# Рисунок 11 - модели
# В папках domain\entity создадим сущности:
![image](https://user-images.githubusercontent.com/80402777/200959802-78e934bf-07bc-42f6-99fb-3556f8936df3.png) 
# Рисунок 12 - сущность product_emtity
#  Должно получится девять сущностей:
 ![image](https://user-images.githubusercontent.com/80402777/200959824-807a7114-8396-4a9d-b227-2a0dcbf044e6.png)
# Рисунок 13 – сущности
# В папках core\db создадим файл data_base_helper.dart. В этом файле будут хранится функции добавления, удаления, обновления базы.
# - init - инициализация базы данных для всех платформ
![image](https://user-images.githubusercontent.com/80402777/200959838-67ef65d5-36a7-4227-84b4-51cdbd067291.png)
# Рисунок 14 - init
# - onCreateTable - создание таблиц 
![image](https://user-images.githubusercontent.com/80402777/200959849-f4db0add-bfe4-465a-b710-ce1e70059033.png)
# Рисунок 15 - onCreateTable
# - onUpdateTable - обновление таблиц
![image](https://user-images.githubusercontent.com/80402777/200959865-9fd1060a-0442-46c7-bc5a-4efeb33a8e48.png)
# Рисунок 16 - onUpdateTable
# - onInitTable - заполнение таблиц данными
![image](https://user-images.githubusercontent.com/80402777/200959940-7a3e191c-b7ad-4c9e-837c-84714c5411aa.png)
# Рисунок 17 - onInitTable
# - onDropDataBase - удаление базы данных 
![image](https://user-images.githubusercontent.com/80402777/200959963-f6cda80e-9d68-4821-a667-2bb4a78b8436.png)
# Рисунок 18 – onDropDataBase
# Теперь при запуске программы у нас создастся база:
![image](https://user-images.githubusercontent.com/80402777/200959976-bf5fe8e0-681b-46a2-b3f2-cf617142c660.png)
# Рисунок 19 - это база
# Вывод: на данной практической работы были реализованы классы и модели, отвечающие за работу базы данных для склада.








