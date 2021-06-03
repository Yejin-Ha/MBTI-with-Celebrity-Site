# MBTI_with_Celebrity_Site
## 목차
1. 프로젝트 설명
2. 서비스 화면 구성
3. DataBase 테이블 구조
4. sql코드

### 1. 프로젝트 설명
자신의 mbti를 연예인과 매칭하는 프로젝트.
자신의 이름과 mbti를 입력하는데 자신의 mbti를 모르면 검사할 수 있는 페이지로 연결하는 버튼이 구성되어있다.
그리고 사용자들의 흥미를 유발하기 위해 대표 연예인들의 mbti와 사진을 3~4개 정도 구성할 것이다.
mbti를 입력하여 화면에 넘어가면 해당 mbti 대표 연예인의 사진과 간단한 mbti에 대한 설명 그리고 해당 연예인에 대한 정보를 소개하는 화면이 나온다.


### 2. 서비스 화면 구성


### 3. DataBase 테이블 구조


### 4. sql코드

```sql
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
```