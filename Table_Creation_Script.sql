use fithub;

-- Table for User
CREATE TABLE User (
    User_Id INT PRIMARY KEY,
    User_Name VARCHAR(255),
    User_DOB DATE,
    User_phoneNo VARCHAR(15),
    User_mailId VARCHAR(255),
    User_Password VARCHAR(255),
    User_LoginId VARCHAR(255),
    BMI FLOAT
);

-- Table for Medical Counselling
CREATE TABLE Medical_Counselling (
    Counsellor_Id INT,
    SSN VARCHAR(20),
    Phone_Number VARCHAR(15),
    Name VARCHAR(255),
    EmailId VARCHAR(255),
    PRIMARY KEY (Counsellor_Id, SSN),
    INDEX idx_medical_counselling (Counsellor_Id, SSN)  -- Index on the referenced columns
);

-- Table for Administrator
CREATE TABLE Administrator (
    Admin_Id INT,
    SSN VARCHAR(20),
    PhoneNo VARCHAR(15),
    DOB DATE,
    EmailId VARCHAR(255),
    Name VARCHAR(255),
    Address VARCHAR(255),
    PRIMARY KEY (Admin_Id, SSN),  -- Composite primary key
    INDEX idx_administrator (Admin_Id, SSN)  -- Index on the referenced columns
); 

-- Table for Fitness Coach
CREATE TABLE Fitness_Coach (
    Admin_Id INT,
    SSN VARCHAR(20),
    PhoneNo VARCHAR(15),
    DOB DATE,
    EmailId VARCHAR(255),
    Name VARCHAR(255),
    Address VARCHAR(255),
    PRIMARY KEY (Admin_Id, SSN),
    INDEX idx_fitness_coach (Admin_Id, SSN),  -- Index on the referenced columns
    FOREIGN KEY (Admin_Id, SSN) REFERENCES Administrator(Admin_Id, SSN)
);
 
-- Table for Premium_User
CREATE TABLE Premium_User (
    User_Id INT PRIMARY KEY,
    User_Name VARCHAR(255),
    User_DOB DATE,
    User_phoneNo VARCHAR(15),
    User_mailId VARCHAR(255),
    User_Password VARCHAR(255),
    User_LoginId VARCHAR(255),
    BMI FLOAT,
    Counsellor_Id INT,
    Admin_Id INT,
    SSN VARCHAR(20),
    FOREIGN KEY (Counsellor_Id) REFERENCES Medical_Counselling(Counsellor_Id),
    FOREIGN KEY (Admin_Id, SSN) REFERENCES Fitness_Coach(Admin_Id, SSN),
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for General_User
CREATE TABLE General_User (
    User_Id INT PRIMARY KEY,
    User_Name VARCHAR(255),
    User_DOB DATE,
    User_phoneNo VARCHAR(15),
    User_mailId VARCHAR(255),
    User_Password VARCHAR(255),
    User_LoginId VARCHAR(255),
    BMI FLOAT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for Activity_Tracker
CREATE TABLE Activity_Tracker (
    Activity_id INT PRIMARY KEY,
    Activity_type VARCHAR(255),
    Calories_burnt INT,
    Hours FLOAT,
    Step_counts INT,
    Distance_covered FLOAT,
    date DATE, 
    Admin_Id INT,
    User_Id INT,
    FOREIGN KEY (Admin_Id) REFERENCES Administrator(Admin_Id),
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for Activities
CREATE TABLE Activities (
    Activity_id INT PRIMARY KEY,
    Activity_type VARCHAR(255),
    Calories_burnt INT,
    Hours FLOAT,
    Step_counts INT,
    Distance_covered FLOAT,
    date DATE,
    FOREIGN KEY (Activity_id) REFERENCES Activity_Tracker(Activity_id)
);
 
-- Table for Exercise
CREATE TABLE Exercise (
    Activity_id INT PRIMARY KEY,
    Activity_type VARCHAR(255),
    Calories_burnt INT,
    Hours FLOAT,
    Step_counts INT,
    date DATE,
    FOREIGN KEY (Activity_id) REFERENCES Activity_Tracker(Activity_id)
);
 
-- Table for Nutrition_Tracker
CREATE TABLE Nutrition_Tracker (
    Tracking_Id INT PRIMARY KEY,
    Intake_time DATETIME,
    User_Id INT,
    Admin_id INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    FOREIGN KEY (Admin_id) REFERENCES Administrator(Admin_Id)
);
 
-- Table for Daily_Intake
CREATE TABLE Daily_Intake (
    Tracking_Id INT PRIMARY KEY,
    Intake_time DATETIME,
    Calories_taken INT,
    Macro_nutrients VARCHAR(255),
    FOREIGN KEY (Tracking_Id) REFERENCES Nutrition_Tracker(Tracking_Id)
);
 
-- Table for Water_Intake
CREATE TABLE Water_Intake (
    Tracking_Id INT PRIMARY KEY,
    Intake_time DATETIME,
    Litres FLOAT,
    FOREIGN KEY (Tracking_Id) REFERENCES Nutrition_Tracker(Tracking_Id)
);
 

 
-- Table for Social Connect
CREATE TABLE Social_Connect (
    Social_page_Id INT PRIMARY KEY,
    User_Id INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for System Admin
CREATE TABLE System_Admin (
    Admin_Id INT,
    SSN VARCHAR(20),
    PhoneNo VARCHAR(15),
    DOB DATE,
    EmailId VARCHAR(255),
    Name VARCHAR(255),
    Address VARCHAR(255),
    PRIMARY KEY (Admin_Id, SSN),
    INDEX idx_system_admin (Admin_Id, SSN),  -- Index on the referenced columns
    FOREIGN KEY (Admin_Id, SSN) REFERENCES Administrator(Admin_Id, SSN)
);
 

 

-- Table for Doctors
CREATE TABLE Doctors (
    Counsellor_Id INT,
    SSN VARCHAR(20),
    Phone_Number VARCHAR(15),
    Name VARCHAR(255),
    EmailId VARCHAR(255),
    Specialization VARCHAR(255),
    PRIMARY KEY (Counsellor_Id, SSN),
    INDEX idx_doctors (Counsellor_Id, SSN),  -- Index on the referenced columns
    FOREIGN KEY (Counsellor_Id, SSN) REFERENCES Medical_Counselling(Counsellor_Id, SSN)
);
 
-- Table for Dietician
CREATE TABLE Dietician (
    Counsellor_Id INT,
    SSN VARCHAR(20),
    Phone_Number VARCHAR(15),
    Name VARCHAR(255),
    EmailId VARCHAR(255),
    Specialization VARCHAR(255),
    PRIMARY KEY (Counsellor_Id, SSN),
    INDEX idx_dietician (Counsellor_Id, SSN),  -- Index on the referenced columns
    FOREIGN KEY (Counsellor_Id, SSN) REFERENCES Medical_Counselling(Counsellor_Id, SSN)
);
 
-- Table for Goal Setting
CREATE TABLE Goal_Setting (
    Setting_Id INT PRIMARY KEY,
    Desired_BMI FLOAT,
    User_Id INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for Payment
CREATE TABLE Payment (
    BankAccountNumber VARCHAR(20) PRIMARY KEY,
    CardDetails VARCHAR(255),
    BankAddress VARCHAR(255),
    BankName VARCHAR(255),
    User_Id INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);
 
-- Table for User Admin
CREATE TABLE User_Admin (
    User_Id INT,
    Admin_Id INT,
    SSN VARCHAR(20),
    PRIMARY KEY (User_Id, Admin_Id, SSN),
    INDEX idx_user_admin (User_Id, Admin_Id, SSN),  -- Index on the referenced columns
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    FOREIGN KEY (Admin_Id, SSN) REFERENCES Administrator(Admin_Id, SSN)
);
 
-- Table for Medical Fitness
CREATE TABLE Medical_Fitness (
    Counsellor_Id INT,
    C_SSN VARCHAR(20),
    Admin_Id INT,
    A_SSN VARCHAR(20),
    PRIMARY KEY (Counsellor_Id, C_SSN, Admin_Id, A_SSN),
    INDEX idx_medical_fitness (Counsellor_Id, C_SSN, Admin_Id, A_SSN),  -- Index on the referenced columns
    FOREIGN KEY (Counsellor_Id, C_SSN) REFERENCES Medical_Counselling(Counsellor_Id, SSN),
    FOREIGN KEY (Admin_Id, A_SSN) REFERENCES Administrator(Admin_Id, SSN)
);