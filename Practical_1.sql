CREATE DATABASE ABC_Computer;
SELECT * FROM ABC_Computer;
CREATE TABLE Computer
	(SerialNumber BIGINT NOT NULL, 
    Make VARCHAR(12) NOT NULL, 
    Model VARCHAR(24) NOT NULL, 
    ProcessorType VARCHAR(24) NULL, 
    ProcessorSpeed DOUBLE(3,2) NOT NULL, 
    MainMemory VARCHAR(15) NOT NULL, 
    DiskSize VARCHAR(15) NOT NULL, 
    PRIMARY KEY(SerialNumber)
    );
    
SELECT * FROM ABC_Computer;
INSERT INTO computer (SerialNumber, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize)
VALUES ('9871234', 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('9871235', 'HP', 'Pavilion 500-210qe', 'Intel i5-4531', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('9871236', 'HP', 'Pavilion 500-210qe', 'Intel i5-4532', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('9871237', 'HP', 'Pavilion 500-210qe', 'Intel i5-4533', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('9871238', 'HP', 'Pavilion 500-210qe', 'Intel i5-4534', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('9871239', 'HP', 'Pavilion 500-210qe', 'Intel i5-4535', '3.00', '6.0 Gbytes', '1.0 Tbytes'),
('6541001', 'Dell', 'OptiPlex 9020', 'Intel i7-4770', '3.00', '8.0 Gbytes', '1.0 Tbytes'),
('6541002', 'Dell', 'OptiPlex 9021', 'Intel i7-4771', '3.00', '8.0 Gbytes', '1.0 Tbytes'),
('6541003', 'Dell', 'OptiPlex 9022', 'Intel i7-4772', '3.00', '8.0 Gbytes', '1.0 Tbytes'),
('6541004', 'Dell', 'OptiPlex 9023', 'Intel i7-4773', '3.00', '8.0 Gbytes', '1.0 Tbytes'),
('6541005', 'Dell', 'OptiPlex 9024', 'Intel i7-4774', '3.00', '8.0 Gbytes', '1.0 Tbytes'),
('6541006', 'Dell', 'OptiPlex 9025', 'Intel i7-4775', '3.00', '8.0 Gbytes', '1.0 Tbytes'); 

SELECT * FROM abc_computer;
ALTER TABLE computer
ADD Graphics VARCHAR(40) NOT NULL;

UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600';
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE computer
DROP COLUMN ProcessorSpeed;
    