create table C_INFO(
    mbti varchar2(10),
    id number(2) constraint C_INFO_id_pk not null,
    name varchar2(10),
    age number(3),
    img varchar2(100),
    birth number(3),
    debut number(3)
);




create table RELATION(
    id number(2) constraint RELATION_id_FK references C_INFO(id),
    good number(2) constraint RELATION_good_FK references C_INFO(id),
    bad  numner (2) constraint RELATION_bad_FK references C_INFO(id)
);

s


