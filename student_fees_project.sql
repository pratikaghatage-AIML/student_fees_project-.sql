CREATE TABLE student (
    reg_no INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    age INT CHECK (age >= 4),
    phone_no VARCHAR(15),
    adhar_no VARCHAR(20) NOT NULL
);

CREATE TABLE fees (
    srno INT AUTO_INCREMENT PRIMARY KEY,
    regno INT,
    pending_fees DECIMAL(10,2),
    paid_fees DECIMAL(10,2),
    FOREIGN KEY (regno) REFERENCES student(reg_no)
);
