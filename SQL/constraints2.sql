CREATE TABLE xxnyb_constraints_desc_test (
    col_idx        NUMBER,
    constraint_sno NUMBER,
    description    VARCHAR2(500),
    comments       VARCHAR2(500),
    CONSTRAINT col_idx_pk PRIMARY KEY ( col_idx )

);

ALTER TABLE xxnyb_constraints_desc_test
    ADD CONSTRAINT const_sno_fk FOREIGN KEY ( constraint_sno )
        REFERENCES xxnyb_constraints_test ( sno );
        
    
ALTER TABLE xxnyb_employees_test MODIFY
    hire_date DEFAULT sysdate;

desc XXNYB_EMPLOYEES_TEST;



insert into XXNYB_EMPLOYEES_TEST(employee_id, employee_name, department_id)
values(1005, 'Meghana', 40);

commit;

insert into XXNYB_EMPLOYEES_TEST(employee_id, employee_name, department_id)
values(1006, 'Charan', 50);

commit;

select * from XXNYB_EMPLOYEES_TEST
order by employee_id;