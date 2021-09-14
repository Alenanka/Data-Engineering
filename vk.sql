 /* описать объекты и явления предметной области
1.профиль
2. друзья
3. сообщения
4. группы
5. пост
6. лайки
7. файл
создать первичную сущность
*/

/*
Аномалии вставки, обновления,удаления
*/
 CREATE DATABASE vk;
 USE vk;
 -- Тип
 -- 1. представление
 -- 2  способ хранения
 -- 3 набор допустимых операций
  
   -- not null
 -- uniqie
 -- default
 -- AUTO_INCREMENT
 
 -- SERIAL -> INT UNSIGNED NOT NULL AUTO_INCREMENT 
 drop tables users;
 
  CREATE TABLE users(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", -- исскуственный ключ
 first_name VARCHAR(255) NOT NULL COMMENT "Имя пользователя",
 last_name VARCHAR(255) NOT NULL COMMENT "Фамилия пользователя", 
 email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
 phone CHAR(11)  NOT NULL UNIQUE COMMENT "Телефон",
 reated_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Врем создания строки",
 updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
 ) COMMENT "Пользователи";
 
  -- таблица профилей
 drop tables profiles;
 
 CREATE TABLE profiles(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", -- ИСКУССВЕ
 user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
 gender CHAR(1) COMMENT "Пол",
 birthday DATE COMMENT "Дата рождения",
 photo_id INT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
 `status` VARCHAR(30) COMMENT "Текущий статус",
 city VARCHAR(130) COMMENT "Город проживания",
 country VARCHAR(130) COMMENT "Страна проживания",
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
 updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
 ) COMMENT 'Таблица профилей';
 
 SHOW TABLES;
 describe profiles;
 
 ALTER TABLE profiles ADD CONSTRAINT profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id);
 
 

