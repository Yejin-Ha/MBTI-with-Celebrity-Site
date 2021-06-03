# MBTI_with_Celebrity_Site
## 목차
1. 프로젝트 설명
3. 서비스 화면 구성
4. DataBase 테이블 구조
5. sql코드

### 1. 프로젝트 설명
자신의 mbti를 연예인과 매칭하는 프로젝트.
자신의 이름과 mbti를 입력하는데 자신의 mbti를 모르면 검사할 수 있는 페이지로 연결하는 버튼이 구성되어있다.
그리고 사용자들의 흥미를 유발하기 위해 대표 연예인들의 mbti와 사진을 3~4개 정도 구성할 것이다.
mbti를 입력하여 화면에 넘어가면 해당 mbti 대표 연예인의 사진과 간단한 mbti에 대한 설명 그리고 해당 연예인에 대한 정보를 소개하는 화면이 나온다.


### 2. 서비스 화면 구성
[oven 에서 보기](https://ovenapp.io/project/rujvQSlJTzgi8fMcg758vLttFR9N6QeZ#2zO2y)

### 3. DataBase 테이블 구조
<img src="./img/db.PNG" width="75%" />

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
```
