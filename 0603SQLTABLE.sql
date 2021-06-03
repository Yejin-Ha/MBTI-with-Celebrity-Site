create table C_info(
    mbti char(4) constraint C_info_mbti_nn not null,
    id number(2) primary key,
    name varchar2(10) constraint C_info_name_nn not null,
    img varchar2(200) constraint C_info_img_nn not null,
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

insert into CAREER values(01, '2020/12/20','baeksangaward','runningman')
insert into CAREER values(02, '2020/10/20','Popular Culture and Arts Award','knowingbro')
insert into CAREER values(03, '2017/12/30', 'SBS Entertainment Awards', 'What do you do when you play?')
insert into CAREER values(04, '2020/12/19', 'SBS Entertainment Awards', 'Alley Restaurant')

insert into RALATION values(01, 02, 03)
insert into RALATION values(02, 01, 04)
insert into RALATION values(03, 04, 01)
insert into RALATION values(04, 03, 02)