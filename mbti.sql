create table C_INFO(
    DEBUT date constraint C_INFO_DEBUT_nn not null,
    BIRTH date constraint C_INFO_BIRTH_nn not null,
    MBTI char(4) constraint C_INFO_MBTI_nn not null,
    NAME varchar2(8) constraint C_INFO_NAME_nn not null,
    AGE number(3) constraint C_INFO_AGE_nn not null,
    IMG varchar2(100) constraint C_INFO_IMG_nn not null,
    ID number(2) constraint C_INFO_ID_pk primary key);

create table CAREER(
    YEAR date constraint CAREER_YEAR_nn not null,
    ID number(2) constraint CAREER_ID_fk references C_INFO(ID),
    AWARD varchar2(40),
    PROGRAM varchar2(40));

create table RELATION(
    ID number(2) constraint RELATION_ID_fk references C_INFO(ID),
    GOOD number(2) constraint RELATION_GOOD_fk references C_INFO(ID),
    BAD number(2) constraint RELATION_BAD_fk references C_INFO(ID));