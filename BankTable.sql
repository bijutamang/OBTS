CREATE DATABASE BankingTransactionsDb

USE BankingTransactionsDb

CREATE TABLE SecurityQuestion
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SecurityQuestionName VARCHAR(50),
	RecStatus CHAR(1)
);
	INSERT INTO SecurityQuestion (SecurityQuestionName, RecStatus) VALUES('Where did you have your primary education', 'A'),
									('Your father name', 'A'),
									('your ex-girlfriend/ ex boyfriendname', 'A'),
									('Your pet name', 'A')

GO

CREATE TABLE Account
(
	AccId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AccName VARCHAR(30),
	AccType VARCHAR(20),
	UserName VARCHAR(20),
	Password VARCHAR(15),
	Gender VARCHAR(10),
	Email VARCHAR(50),
	Address VARCHAR(MAX),
	SecurityQuestionId INT FOREIGN KEY REFERENCES SecurityQuestion (Id),
	Answer VARCHAR(20),
	Amount INT,
	RecStatus CHAR(1)
);

GO

CREATE TABLE [Transaction]
(
	TransactionId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SenderAccountId INT FOREIGN KEY REFERENCES Account (AccId),
	ReceiverAccountId INT FOREIGN KEY REFERENCES Account (AccId),
	MobileNo VARCHAR(20),
	Amount INT,
	TransactionType VARCHAR(50),
	Remarks VARCHAR(30),
	RecStatus CHAR(1)
);
