Create table Project_Insurance_Customer_2
(
Customer_id varchar(30) primary key,
First_name varchar(20),
last_name varchar(15),
email_ID varchar(40),
age number(10),
gender char(5) not null,

Constraint Project_ins_gend
er_2 check(gender in ('M','F')),
Constraint Project_ins_email_ID_2 unique(email_ID)
);


Insert into Project_Insurance_Customer_2
values('C001', 'John', 'Doe', 'john.doe@email.com', 30, 'M');

Insert into Project_Insurance_Customer_2
Values('C002', 'Jane', 'Smith', 'jane.smith@email.com', 28, 'F');

Insert into Project_Insurance_Customer_2
Values('C003', 'Robert', 'Brown', 'robert.brown@email.com', 40, 'M');

Insert into Project_Insurance_Customer_2
values('C004', 'Emily', 'Davis', 'emily.davis@email.com', 35, 'F');

Insert into Project_Insurance_Customer_2

Values('C005', 'Michael', 'Miller', 'michael.miller@email.com', 50, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C006', 'Sophia', 'Taylor', 'sophia.taylor@email.com', 45, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C007', 'Liam', 'Wilson', 'liam.wilson@email.com', 32, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C008', 'Olivia', 'Martinez', 'olivia.martinez@email.com', 27, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C009', 'James', 'Garcia', 'james.garcia@email.com', 55, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C010', 'Isabella', 'Rodriguez', 'isabella.rodriguez@email.com', 34, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C011', 'Jackson', 'Lee', 'jackson.lee@email.com', 48, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C012', 'Amelia', 'Lopez', 'amelia.lopez@email.com', 39, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C013', 'Alexander', 'Gonzalez', 'alexander.gonzalez@email.com', 43, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C014', 'Mia', 'Hernandez', 'mia.hernandez@email.com', 29, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C015', 'Ethan', 'King', 'ethan.king@email.com', 50, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C016', 'Charlotte', 'Wright', 'charlotte.wright@email.com', 41, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C017', 'Aiden', 'Scott', 'aiden.scott@email.com', 36, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C018', 'Harper', 'Adams', 'harper.adams@email.com', 52, 'F');

INSERT INTO Project_Insurance_Customer_2
VALUES('C019', 'William', 'Baker', 'william.baker@email.com', 60, 'M');

INSERT INTO Project_Insurance_Customer_2
VALUES('C020', 'Ella', 'Nelson', 'ella.nelson@email.com', 38, 'F');

Alter table Project_Insurance_Customer_2
Add constraint pro_ins_cust_age_chk_2 check (age is not null);
Select * from Project_Insurance_customer_2;

Create table Project_insurance_Policy_2
(

Policy_ID varchar(25) primary key,
Customer_ID Varchar(30),
Policy_no number(30),
Policy_type varchar(30),
start_date DATE,
end_date DATE,
Premium_amount number(30),

Foreign key(Customer_id) references Project_Insurance_Customer_2(Customer_ID)
);

Alter table Project_insurance_Policy_2
Add constraint pro_ins_pol_pre_chk_2 Check(
(Policy_type='Bike' and Premium_amount=1000)or
(Policy_type='Car' and Premium_amount=3000)or
(Policy_type='Truck' and Premium_amount=10000));

ALTER TABLE Project_insurance_Policy_2
DROP CONSTRAINT Pro_Ins_pol_chk_2;

Alter table Project_insurance_Policy_2
add constraint Pro_Ins_pol_chk_2 check( Policy_type in ('Car','Bike','Truck'));


Insert into Project_insurance_Policy_2
Values('P001', 'C001', 123456, 'Car', To_date('2024-01-01','YYYY-MM-DD'), To_date('2025-01-01','YYYY-MM-DD'), '3000');

INSERT INTO Project_insurance_Policy_2 (Policy_ID, Customer_ID, Policy_no, Policy_type, start_date, end_date, Premium_amount)
VALUES
('P002', 'C002', 123457, 'Bike', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), '1000');

INSERT INTO Project_insurance_Policy_2 (Policy_ID, Customer_ID, Policy_no, Policy_type, start_date, end_date, Premium_amount)
VALUES
('P003', 'C003', 123458, 'Truck', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), '10000');

INSERT INTO Project_insurance_Policy_2 (Policy_ID, Customer_ID, Policy_no, Policy_type, start_date, end_date, Premium_amount)
VALUES
('P004', 'C004', 123459, 'Car', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), '3000');

INSERT INTO Project_insurance_Policy_2 (Policy_ID, Customer_ID, Policy_no, Policy_type, start_date, end_date, Premium_amount)
VALUES
('P005', 'C005', 123460, 'Truck', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), '10000');

INSERT INTO Project_insurance_Policy_2
VALUES('P006', 'C006', 123461, 'Car', TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_insurance_Policy_2
VALUES('P007', 'C007', 123462, 'Bike', TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_insurance_Policy_2
VALUES('P008', 'C008', 123463, 'Truck', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_insurance_Policy_2
VALUES('P009', 'C009', 123464, 'Car', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_insurance_Policy_2
VALUES('P010', 'C010', 123465, 'Truck', TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_insurance_Policy_2
VALUES('P011', 'C011', 123466, 'Bike', TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_insurance_Policy_2
VALUES('P012', 'C012', 123467, 'Car', TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_insurance_Policy_2
VALUES('P013', 'C013', 123468, 'Truck', TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_insurance_Policy_2
VALUES('P014', 'C014', 123469, 'Bike', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_insurance_Policy_2
VALUES('P015', 'C015', 123470, 'Car', TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_insurance_Policy_2
VALUES('P016', 'C016', 123471, 'Truck', TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2025-07-01', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_insurance_Policy_2
VALUES('P017', 'C017', 123472, 'Car', TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2025-07-10', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_insurance_Policy_2
VALUES('P018', 'C018', 123473, 'Bike', TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_insurance_Policy_2
VALUES('P019', 'C019', 123474, 'Truck', TO_DATE('2024-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_insurance_Policy_2
VALUES('P020', 'C020', 123475, 'Car', TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 3000);


Select * from Project_Insurance_policy_2;

Create table project_insurance_vehicle_2
(
vehicle_id varchar(30),
reg_no varchar(25),
make varchar(30),
Vehi_model char(20),
policy_id varchar(20),
Vehicle_type varchar(40),
Foreign key(policy_id) references project_Insurance_policy_2(policy_id),
constraint project_ins_veh_type_2 check(vehicle_type in ('car','truck','Bike')),
constraint project_ins_veh_make_2 check(make in('Toyota', 'Honda', 'Ford', 'Chevrolet', 'Nissan',
                                                    'Maruti Suzuki', 'Tata Motors', 'Mahindra', 'Hyundai', 'Renault')),
Constraint project_ins_veh_model_2 check(Vehi_model in('Corolla', 'Civic', 'F150', 'Tahoe', 'Altima', 'Swift', 'Alto', 
                                                      'Innova', 'Polo', 'Creta', 'XUV500', 'Thar', 'Tigor', 'Verna', 'Ertiga'))
);

INSERT INTO project_insurance_vehicle_2 (vehicle_id, reg_no, make, Vehi_model, policy_id, Vehicle_type)
VALUES
('V001', 'ABC123', 'Toyota', 'Corolla', 'P001', 'car');

INSERT INTO project_insurance_vehicle_2 (vehicle_id, reg_no, make, Vehi_model, policy_id, Vehicle_type)
VALUES
('V002', 'XYZ456', 'Honda', 'Civic', 'P002', 'Bike');

INSERT INTO project_insurance_vehicle_2 (vehicle_id, reg_no, make, Vehi_model, policy_id, Vehicle_type)
VALUES
('V003', 'LMN789', 'Ford', 'F150', 'P003', 'truck');

INSERT INTO project_insurance_vehicle_2 (vehicle_id, reg_no, make, Vehi_model, policy_id, Vehicle_type)
VALUES
('V004', 'DEF321', 'Maruti Suzuki', 'Swift', 'P004', 'car');

INSERT INTO project_insurance_vehicle_2 (vehicle_id, reg_no, make, Vehi_model, policy_id, Vehicle_type)
VALUES
('V005', 'GHI654', 'Hyundai', 'Creta', 'P005', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V006', 'JKL123', 'Toyota', 'Corolla', 'P006', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V007', 'MNO456', 'Honda', 'Civic', 'P007', 'Bike');

INSERT INTO project_insurance_vehicle_2 
VALUES('V008', 'PQR789', 'Ford', 'F150', 'P008', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V009', 'STU101', 'Maruti Suzuki', 'Swift', 'P009', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V010', 'VWX112', 'Hyundai', 'Creta', 'P010', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V011', 'YZA234', 'Toyota', 'Corolla', 'P011', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V012', 'BCD345', 'Honda', 'Civic', 'P012', 'Bike');

INSERT INTO project_insurance_vehicle_2 
VALUES('V013', 'EFG456', 'Ford', 'F150', 'P013', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V014', 'HIJ567', 'Maruti Suzuki', 'Swift', 'P014', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V015', 'KLM678', 'Hyundai', 'Creta', 'P015', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V016', 'NOP789', 'Toyota', 'Corolla', 'P016', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V017', 'QRS890', 'Honda', 'Civic', 'P017', 'Bike');

INSERT INTO project_insurance_vehicle_2 
VALUES('V018', 'TUV901', 'Ford', 'F150', 'P018', 'truck');

INSERT INTO project_insurance_vehicle_2 
VALUES('V019', 'WXY012', 'Maruti Suzuki', 'Swift', 'P019', 'car');

INSERT INTO project_insurance_vehicle_2 
VALUES('V020', 'ZAB123', 'Hyundai', 'Creta', 'P020', 'truck');



Select * from project_insurance_vehicle_2;

Create table project_insurance_claim_2
(
claim_id varchar(40),
policy_id varchar(40),
Claim_amount number(30),
Claim_date DATE,
Status varchar(20),
Claim_type varchar(100),

Constraint project_ins_claim_chk_2 check(status in('Approved','pending','claimed','under investigation')),
Constraint project_ins_claim_2 check(Claim_type in ('Accident','Theft','Natural_disaster')),
foreign key (policy_id) references Project_insurance_Policy_2(policy_id)

);

Insert into project_insurance_claim_2
values('C001','P001','5000',To_date('2024-06-15','YYYY-MM-DD'),'Approved','Accident');

INSERT INTO project_insurance_claim_2 (claim_id, policy_id, Claim_amount, Claim_date, Status, Claim_type)
VALUES
('C002', 'P002', '2000', TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'pending', 'Theft');

INSERT INTO project_insurance_claim_2 (claim_id, policy_id, Claim_amount, Claim_date, Status, Claim_type)
VALUES
('C003', 'P003', '12000', TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'claimed', 'Natural_disaster');

INSERT INTO project_insurance_claim_2 (claim_id, policy_id, Claim_amount, Claim_date, Status, Claim_type)
VALUES
('C004', 'P004', '6000', TO_DATE('2024-09-05', 'YYYY-MM-DD'), 'under investigation', 'Accident');

INSERT INTO project_insurance_claim_2 (claim_id, policy_id, Claim_amount, Claim_date, Status, Claim_type)
VALUES
('C005', 'P005', '15000', TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C006', 'P006', '5000', TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Approved', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C007', 'P007', '2000', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'pending', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C008', 'P008', '12000', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'claimed', 'Natural_disaster');

INSERT INTO project_insurance_claim_2 
VALUES('C009', 'P009', '6000', TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'under investigation', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C010', 'P010', '15000', TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C011', 'P011', '7000', TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'Approved', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C012', 'P012', '3000', TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'pending', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C013', 'P013', '13000', TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'claimed', 'Natural_disaster');

INSERT INTO project_insurance_claim_2 
VALUES('C014', 'P014', '4000', TO_DATE('2024-09-10', 'YYYY-MM-DD'), 'under investigation', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C015', 'P015', '10000', TO_DATE('2024-10-10', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C016', 'P016', '8000', TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Approved', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C017', 'P017', '1500', TO_DATE('2024-07-05', 'YYYY-MM-DD'), 'pending', 'Theft');

INSERT INTO project_insurance_claim_2 
VALUES('C018', 'P018', '11000', TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'claimed', 'Natural_disaster');

INSERT INTO project_insurance_claim_2 
VALUES('C019', 'P019', '5000', TO_DATE('2024-09-15', 'YYYY-MM-DD'), 'under investigation', 'Accident');

INSERT INTO project_insurance_claim_2 
VALUES('C020', 'P020', '15000', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Approved', 'Theft');


Select * from project_insurance_claim_2;

Create table project_insurance_agent_2
(
Agent_id varchar(40) primary key,
Agent_name varchar(40) not null,
Mob_no number(20) not null,
email_id varchar(30) unique,
hire_date date,
commission_rate number(37)

);

INSERT INTO project_insurance_agent_2 (Agent_id, Agent_name, Mob_no, email_id, hire_date, commission_rate)
VALUES
('A001', 'Alice Walker', 9876543210, 'alice.walker@email.com', TO_DATE('2020-02-15', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 (Agent_id, Agent_name, Mob_no, email_id, hire_date, commission_rate)
VALUES
('A002', 'Bob Green', 9123456789, 'bob.green@email.com', TO_DATE('2021-03-22', 'YYYY-MM-DD'), '6');

INSERT INTO project_insurance_agent_2 (Agent_id, Agent_name, Mob_no, email_id, hire_date, commission_rate)
VALUES
('A003', 'Carol White', 9234567890, 'carol.white@email.com', TO_DATE('2019-05-10', 'YYYY-MM-DD'), '4');

INSERT INTO project_insurance_agent_2 (Agent_id, Agent_name, Mob_no, email_id, hire_date, commission_rate)
VALUES
('A004', 'David Black', 9345678901, 'david.black@email.com', TO_DATE('2022-07-18', 'YYYY-MM-DD'), '7');

INSERT INTO project_insurance_agent_2 (Agent_id, Agent_name, Mob_no, email_id, hire_date, commission_rate)
VALUES
('A005', 'Eva Blue', 9456789012, 'eva.blue@email.com', TO_DATE('2023-08-30', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 
VALUES('A006', 'Fred Green', 9321567890, 'fred.green@email.com', TO_DATE('2024-01-01', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 
VALUES('A007', 'Grace Blue', 9456743210, 'grace.blue@email.com', TO_DATE('2024-02-01', 'YYYY-MM-DD'), '6');

INSERT INTO project_insurance_agent_2 
VALUES('A008', 'Henry White', 9332546789, 'henry.white@email.com', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '4');

INSERT INTO project_insurance_agent_2 
VALUES('A009', 'Ivy Black', 9112356789, 'ivy.black@email.com', TO_DATE('2024-04-01', 'YYYY-MM-DD'), '7');

INSERT INTO project_insurance_agent_2 
VALUES('A010', 'Jack Red', 9812543678, 'jack.red@email.com', TO_DATE('2024-05-01', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 
VALUES('A011', 'Lily Pink', 9445678901, 'lily.pink@email.com', TO_DATE('2024-06-01', 'YYYY-MM-DD'), '6');

INSERT INTO project_insurance_agent_2 
VALUES('A012', 'Mason Yellow', 9334478901, 'mason.yellow@email.com', TO_DATE('2024-07-01', 'YYYY-MM-DD'), '4');

INSERT INTO project_insurance_agent_2 
VALUES('A013', 'Nina Grey', 9276543210, 'nina.grey@email.com', TO_DATE('2024-08-01', 'YYYY-MM-DD'), '7');

INSERT INTO project_insurance_agent_2 
VALUES('A014', 'Oscar White', 9234567890, 'oscar.white@email.com', TO_DATE('2024-09-01', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 
VALUES('A015', 'Paul Orange', 9312567890, 'paul.orange@email.com', TO_DATE('2024-10-01', 'YYYY-MM-DD'), '6');

INSERT INTO project_insurance_agent_2 
VALUES('A016', 'Quinn Blue', 9223456789, 'quinn.blue@email.com', TO_DATE('2024-11-01', 'YYYY-MM-DD'), '4');

INSERT INTO project_insurance_agent_2 
VALUES('A017', 'Rita Green', 9382546789, 'rita.green@email.com', TO_DATE('2024-12-01', 'YYYY-MM-DD'), '7');

INSERT INTO project_insurance_agent_2 
VALUES('A018', 'Steve Purple', 9823456789, 'steve.purple@email.com', TO_DATE('2024-01-01', 'YYYY-MM-DD'), '5');

INSERT INTO project_insurance_agent_2 
VALUES('A019', 'Tina Brown', 9312456789, 'tina.brown@email.com', TO_DATE('2024-02-01', 'YYYY-MM-DD'), '6');

INSERT INTO project_insurance_agent_2 
VALUES('A020', 'Ursula Silver', 9823546789, 'ursula.silver@email.com', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '4');


Select * from project_insurance_agent_2;

Create table policy_sales_2
(
Ssle_id varchar(50),
policy_id varchar(25),
agent_id varchar(40),
sale_date date,

foreign key (policy_id) references Project_insurance_Policy_2(Policy_ID)

);
Alter table policy_sales_2
Add sale_amount number(30) not null;


Alter table policy_sales_2
Rename column Ssle_id to Sale_ID;

INSERT INTO policy_sales_2 
VALUES
('S001', 'P001', 'A001', TO_DATE('2024-01-05', 'YYYY-MM-DD'),3000);

INSERT INTO policy_sales_2
VALUES
('S002', 'P002', 'A002', TO_DATE('2024-02-10', 'YYYY-MM-DD'),1000);

INSERT INTO policy_sales_2 
VALUES
('S003', 'P003', 'A003', TO_DATE('2024-03-15', 'YYYY-MM-DD'),10000);

INSERT INTO policy_sales_2 
VALUES
('S004', 'P004', 'A004', TO_DATE('2024-04-20', 'YYYY-MM-DD'),3000);

INSERT INTO policy_sales_2 
VALUES
('S005', 'P005', 'A005', TO_DATE('2024-05-25', 'YYYY-MM-DD'),10000);

INSERT INTO policy_sales_2 
VALUES('S006', 'P006', 'A006', TO_DATE('2024-02-10', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S007', 'P007', 'A007', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 1000);

INSERT INTO policy_sales_2 
VALUES('S008', 'P008', 'A008', TO_DATE('2024-04-20', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S009', 'P009', 'A009', TO_DATE('2024-05-25', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S010', 'P010', 'A010', TO_DATE('2024-06-10', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S011', 'P011', 'A011', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 1000);

INSERT INTO policy_sales_2 
VALUES('S012', 'P012', 'A012', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S013', 'P013', 'A013', TO_DATE('2024-09-05', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S014', 'P014', 'A014', TO_DATE('2024-10-10', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S015', 'P015', 'A015', TO_DATE('2024-11-01', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S016', 'P016', 'A016', TO_DATE('2024-12-01', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S017', 'P017', 'A017', TO_DATE('2025-01-01', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S018', 'P018', 'A018', TO_DATE('2025-02-01', 'YYYY-MM-DD'), 3000);

INSERT INTO policy_sales_2 
VALUES('S019', 'P019', 'A019', TO_DATE('2025-03-01', 'YYYY-MM-DD'), 10000);

INSERT INTO policy_sales_2 
VALUES('S020', 'P020', 'A020', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 3000);
Select * from policy_sales_2;
Savepoint T1;
commit
Rollback to savepoint T1;

Select * from Project_Insurance_customer_2;
Select * from Project_Insurance_policy_2;
Select * from project_insurance_vehicle_2;
Select * from project_insurance_claim_2;
Select * from project_insurance_agent_2;
Select * from policy_sales_2;

// Count of active policies:
Select policy_type, count(*) as active_policies
from Project_Insurance_policy_2
Where end_date>current_date
Group by policy_type;

--Sum of amounts based on vehicle type

Select policy_type,Count(pt.policy_type), sum(premium_amount) as sum_premium_policies
from Project_Insurance_policy_2 pt
Group by pt.policy_type 
order by sum_premium_policies desc;

--Total policies sold by agent
Select A.Agent_name,count(p.Policy_ID) as total_policies_sold,Sum(s.sale_amount) as total_sale_amount
from policy_sales_2 s
Join project_insurance_agent_2 A on s.agent_id = A.Agent_id
Join Project_insurance_Policy_2 p on s.policy_id = p.Policy_ID
Group by A.Agent_name;

commit;



--Average premium amount by customer age group

SELECT  CASE
          WHEN age BETWEEN 18 AND 30 THEN '18-30'
          WHEN age BETWEEN 31 AND 40 THEN '31-40'
          WHEN age BETWEEN 41 AND 50 THEN '41-50'
          WHEN age BETWEEN 51 AND 60 THEN '51-60'
          ELSE '60+'
       END AS  Age_Group,
       AVG(Premium_amount) AS Average_Premium
FROM Project_Insurance_Customer_2 c
JOIN Project_insurance_Policy_2 p ON c.Customer_id = p.Customer_ID
GROUP BY case WHEN age BETWEEN 18 AND 30 THEN '18-30'
          WHEN age BETWEEN 31 AND 40 THEN '31-40'
          WHEN age BETWEEN 41 AND 50 THEN '41-50'
          WHEN age BETWEEN 51 AND 60 THEN '51-60'
          ELSE '60+'
       END;
       
       --Agent Performance (Total Sales and Commission)
       select a.Agent_name, count(ps.Sale_ID) AS Total_Sales, sum(ps.sale_amount) as Total_Sales_Amount, 
       sum(ps.sale_amount) * a.commission_rate / 100 AS Total_Commission
from policy_sales_2 ps
join project_insurance_agent_2 a ON ps.agent_id = a.Agent_id
group by a.Agent_name, a.commission_rate;

--Gender wise customer counts with policy types
Select p.policy_type, c.gender, count(c.Customer_id) as customer_count
from project_insurance_customer_2 c
Join Project_Insurance_policy_2 p on c.Customer_id = p.Customer_id
GROUP BY p.Policy_type, c.gender;


--calculating the expiring date and informed before 30 days.
SELECT Policy_ID,start_date,end_date,round(abs(sysdate-end_date),0) as Remaining_Days,
Case
When round(abs(sysdate-end_date),0)<=30 then 'renew immediately'
When round(abs(sysdate-end_date),0)>30 and round(abs(sysdate-end_date),0)<=60 then 'renew within 60 days'-- COUNT(*) AS Expiring_Policies
else 'Existing validity'
end as policy_renewal
FROM Project_insurance_Policy_2;

--Total Claim amount by policy types
SELECT p.Policy_type, COUNT(c.claim_id) AS total_claims, SUM(c.Claim_amount) AS total_claim_amount
FROM Project_insurance_Policy_2 p
JOIN project_insurance_claim_2 c ON p.policy_id = c.policy_id
GROUP BY p.Policy_type;

 
--finding Top 3 customers of premium_amount:

select Customer_id,first_name,last_name,Premium_amount,rank
from
(
select 
c.customer_id,
c.first_name,
c.last_name,
sum(p.Premium_amount)as premium_amount,
dense_rank() over(order by sum(p.Premium_amount)  desc) as RANK
from project_insurance_customer_2 c
join project_insurance_policy_2 p on c.Customer_id = p.Customer_id
group by c.customer_id,c.first_name,c.last_name
)ranked_customers
where rank<=3;

Select *  from 
(
select e.*,dense_rank() over (order by employee_id desc) as DM from employees e
where rownum<=10
);










    
















