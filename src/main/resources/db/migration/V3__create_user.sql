CREATE TABLE user
(
id INT AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
username VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
mobile_no VARCHAR(10),
email_id VARCHAR(30),
active CHAR(1) DEFAULT 'I', 
user_role_id INT,
CONSTRAINT id_pk PRIMARY KEY ( id ),
CONSTRAINT username_UQ UNIQUE ( username ),
CONSTRAINT active_CQ CHECK ( active IN ('A','I') ),
CONSTRAINT user_role_id_fk FOREIGN KEY ( user_role_id ) REFERENCES role(role_id)
);


INSERT INTO USER (id, name, username, password, mobile_no , email_ID, active, user_role_id) VALUES 
(
1, 
'Sharan', 
'Sharan7797', 
'sharan123',
'9876543210',
'jude@gmail.com' ,
'A',
1
);