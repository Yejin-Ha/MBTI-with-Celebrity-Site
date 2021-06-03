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

create table CAREER(
    id number(2) constraint  CAREER_id_fk  references C_info(id),
    year date constraint CAREER_name_nn not null,
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


insert into C_info values("ISFP", 01, "유재석", "https://image.newsis.com/2021/02/02/NISI20210202_0000684338_web.jpg?rnd=20210202152819", "1972/08/14", "1991/05/05");
insert into C_info values("INEF", 02, "강호동", "https://ww.namu.la/s/0a4436e308bc32a82efafcf39a760c31196c152a9ffe6495a19c7114a318f4ee4d5cf415eb972adff0d192638d3c952c143cc43618434773940b36af7e258d7fee7c1b02915e44bf31830d3784f030cbc0836f54049b12b0fe2fb619b26b33370a1c552f9ef72277d430857b8ff6be12", "1970/07/14", "1988/05/12");
insert into C_info values("ISTP", 03, "박명수", "https://w.namu.la/s/931ab2b1294b9b0090ccf3353c0520d1d78b2d8ba3e02412bc7cc7d3c6704144f5152af523fd793397a995cedf7008e9f5ee9ab3ac177187cd8d50de6c207e3497fb6da8ba3823029df5b9a2a1c4345cb9583c7d3041a23945e0388b7c209166", "1970/09/27", "1993/06/23");
insert into C_info values("ESTJ", 04, "백종원", "https://ww.namu.la/s/3f7e958f4580719c3af0c9cf423ed78c33ac2b1ba4cc8555b677558f7edf733a60a7da3ca1ec30f0e9a4cd0b95544ecd179a7487b78dd510105a89e282892fe2b55177576eac74b1e6730f239a84a45f0069e0d4236d22ffb5c48c2088ab7487feead829c2f1f7dc1d8ac2c6a7cfa686", "1966/09/04", "1994/01/16");



insert into CAREER values(01, '2020/12/20','baeksangaward','runningman')
insert into CAREER values(02, '2020/10/20','Popular Culture and Arts Award','knowingbro')
insert into CAREER values(03, '2017/12/30', 'SBS Entertainment Awards', 'What do you do when you play?')
insert into CAREER values(04, '2020/12/19', 'SBS Entertainment Awards', 'Alley Restaurant')

insert into RALATION values(01, 02, 03)
insert into RALATION values(02, 01, 04)
insert into RALATION values(03, 04, 01)
insert into RALATION values(04, 03, 02)
