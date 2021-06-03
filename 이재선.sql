






create table C_info(
    mbti char(4) constraint C_info_mbti_nn not null,
    id number(2) primary key,
    name varchar2(10) constraint C_info_name_nn not null,
    img varchar2(100) constraint C_info_img_nn not null,
    birth date constraint C_info_birth_nn not null,
    debut date constraint C_info_debut_nn not null
);

create table CAREER(
    id number(2) constraint  CAREER_id_fk  references C_info(id),
    year date constraint CAREER_name_nn not null,
    award varchar2(40),
    program varchar2(40)
);

create table relation(
    id number(2) constraint  ralation_id_fk  references C_info(id),
    good number(2) constraint  ralation_good_fk  references C_info(id),
    bad number(2) constraint  ralation_bad_fk  references C_info(id)
);


insert into C_info values("ISFP", 01, "유재석", "https://image.newsis.com/2021/02/02/NISI20210202_0000684338_web.jpg?rnd=20210202152819", "1972/08/14", "1991/05/05");
insert into C_info values("INEF", 02, "강호동", "https://ww.namu.la/s/0a4436e308bc32a82efafcf39a760c31196c152a9ffe6495a19c7114a318f4ee4d5cf415eb972adff0d192638d3c952c143cc43618434773940b36af7e258d7fee7c1b02915e44bf31830d3784f030cbc0836f54049b12b0fe2fb619b26b33370a1c552f9ef72277d430857b8ff6be12", "1970/07/14", "1988/05/12");






