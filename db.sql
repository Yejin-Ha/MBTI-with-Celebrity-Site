drop table C_INFO;

create table C_INFO(
    mbti char(4) constraint c_info_mbti_nn not null,
    id number(2) constraint c_info_id_pk primary key,
    name varchar2(10) constraint c_info_name_nn not null,
    age number(2) constraint c_info_age_nn not null,
    img varchar2(100) constraint c_info_img_nn not null,
    birth date constraint c_info_birth_nn not null,
    debut date constraint c_info_debut_nn not null
);

select table_name, constraint_type, constraint_name
from user_constraints 
where table_name='C_INFO';





drop table CAREER;

create table CAREER (
    id number(2) constraint C_INFO_id_fk references C_INFO(id),
    year date constraint CAREER_year_nn not null,
    award varchar2(40),
    program varchar2(40)
);

select table_name, constraint_type, constraint_name
from user_constraints 
where table_name='CAREER';





drop table RELATION;

create table RELATION (
    id number(2) constraint RELATION_id_fk references C_INFO(id),
    good number(2) constraint RELATION_GOOD_fk references C_INFO(id),
    bad number(2) constraint RELATION_BAD_fk references C_INFO(id)
);

select table_name, constraint_type, constraint_name
from user_constraints 
where table_name='RELATION';
