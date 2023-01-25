DROP USER IF EXISTS test_patient@localhost;
CREATE USER test_patient@localhost IDENTIFIED BY 'patient';
GRANT patient TO test_patient@localhost;