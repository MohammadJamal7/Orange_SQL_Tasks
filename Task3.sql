CREATE TABLE Usr (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    profile_picture VARCHAR(255),
    bio TEXT,
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
);




CREATE TABLE message (
    message_id INT IDENTITY(1,1) PRIMARY KEY,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    message TEXT NOT NULL,
    sent_at DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_sender FOREIGN KEY (sender_id) REFERENCES Usr(user_id),
    CONSTRAINT FK_receiver FOREIGN KEY (receiver_id) REFERENCES Usr(user_id)
);


create table Service (
service_id int identity(1,1) primary key,
service_name varchar(20) not null,
service_desc varchar(20) not null,
price decimal(10,2),
created_at dateTime default getDate()
);

create table userService (
 usr_id int not null,
 service_id int not null,
 constraint fk_serServices_service_id foreign key (service_id) REFERENCES Service(service_id),
 constraint fk_serServices_user_id foreign key (usr_id) REFERENCES Usr(user_id)
 );

 CREATE TABLE payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    service_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATETIME DEFAULT GETDATE(),
    payment_status VARCHAR(20) DEFAULT 'Success',
    FOREIGN KEY (user_id) REFERENCES Usr(user_id),
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
);


INSERT INTO Usr (username, email, password, first_name, last_name, bio) VALUES
('mo7ammad j', 'mj266501@gmail.com', '123123@ff', 'Mohammad', 'Abu Erra', 'Full stack .NET web developer, Flutter developer and Software engineer'),
('ali_s', 'ali@example.com', 'password1', 'Ali', 'Sami', 'Software developer specializing in backend development.'),
('sara_a', 'sara@example.com', 'password2', 'Sara', 'Ahmed', 'Frontend developer with a passion for design.'),
('mahmoud_h', 'mahmoud@example.com', 'password3', 'Mahmoud', 'Hussein', 'Experienced in mobile application development.'),
('amira_k', 'amira@example.com', 'password4', 'Amira', 'Khalil', 'Data scientist with a focus on machine learning.'),
('nader_l', 'nader@example.com', 'password5', 'Nader', 'Ali', 'Web developer and UI/UX designer.');

INSERT INTO message (sender_id, receiver_id, message) VALUES 
(1, 2, 'مرحبا علي, شلونك؟'),
(2, 1, 'أهلاً محمد، أنا بخير شكراً لك!'),
(3, 4, ' شلونك أميرة؟'),
(4, 3, 'أنا بخير، شكراً لك يا محمود.'),
(5, 6, 'مرحبا فاطمة، كيف تسير الأمور؟'),
(6, 5, 'مرحبا نادر، أنا مشغول شوي بس كيف حالك انت؟');


INSERT INTO Service (service_name, service_desc, price) VALUES 
('Instant Messaging', 'Service for sending instant messages.', 10.00),
('Push Notifications', 'Receive instant notifications on your device.', 5.00),
('Chat History Backup', 'Backup all your chat history to the cloud.', 7.50),
('International Messaging', 'Send messages to other countries.', 15.00),
('Technical Support', '24/7 technical support for users.', 20.00),
('Premium Features', 'Additional features for premium users.', 25.00);


INSERT INTO userService (usr_id, service_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);


INSERT INTO payments (user_id, service_id, amount) VALUES 
(1, 1, 10.00),
(2, 2, 5.00),
(3, 3, 7.50),
(4, 4, 15.00),
(5, 5, 20.00),
(6, 6, 25.00);


UPDATE Usr 
SET first_name = 'محمد جمال', last_name = 'أبو عره' 
WHERE user_id = 1;

UPDATE Usr 
SET email = 'sara_updated@gamil.com' 
WHERE user_id = 3;


UPDATE message 
SET message = 'شلونك علوش؟ شو أخبارك؟'
WHERE message_id = 1;

UPDATE message 
SET message = 'والله الحمدلله, مشتاقين'
WHERE message_id = 2;


UPDATE Service 
SET price = 12.00 
WHERE service_id = 1;

UPDATE Service 
SET service_desc = 'تلقي إشعارات فورية على الهاتف' 
WHERE service_id = 2;



UPDATE userService 
SET service_id = 2 
WHERE usr_id = 1 AND service_id = 1;

UPDATE userService 
SET service_id = 3 
WHERE usr_id = 3 AND service_id = 3;


DELETE FROM Usr WHERE user_id = 5;
DELETE FROM Usr WHERE user_id = 6;

DELETE FROM message WHERE message_id = 5;
DELETE FROM message WHERE message_id = 6;

DELETE FROM Service WHERE service_id = 5;
DELETE FROM Service WHERE service_id = 6;

DELETE FROM userService WHERE usr_id = 4 AND service_id = 4;
DELETE FROM userService WHERE usr_id = 2 AND service_id = 2;


EXEC sp_rename 'message', 'Messages';
EXEC sp_rename 'Service', 'Services';



EXEC sp_rename 'message', 'Messages';
EXEC sp_rename 'Service', 'Services';

ALTER TABLE Usr 
    ALTER COLUMN first_name NVARCHAR(100);  
EXEC sp_rename 'Usr.username', 'user_name', 'COLUMN';  

ALTER TABLE Services 
    ALTER COLUMN service_desc NVARCHAR(100); 
EXEC sp_rename 'Services.service_name', 'service_title', 'COLUMN';  
