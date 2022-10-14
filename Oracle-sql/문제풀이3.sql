--���� 1) ȸ�� ���̺��� ����ÿ�. �� �÷��� ���� ������ �ο� �Ͻÿ�. 
--���� ������ alter���� �̿��Ұ� , 
--�������� ���̺� ���� �Ѵ� �ǽ��� ������.
create table member(
    user_id varchar2(20) not null,
    user_pw varchar2(200) not null,
    user_name varchar2(40) not null,
    user_birth timestamp not null,
    user_gender varchar2(1) not null,
    user_addr varchar2(200) not null,
    user_ph1 varchar2(13) not null,
    user_ph2 varchar2(13),
    user_regist timestamp,
    user_email varchar2(200),
    join_ok varchar2(500)
);

alter table member 
add (
    constraint member_userid_PK primary key(user_id),
    constraint member_useremail unique(user_email)
);
alter table member
modify(
    user_regist timestamp default sysdate
);

alter table member
modify(
    user_id varchar2(20) constraint member_userid_PK primary key,
    user_email varchar2(200) constraint member_useremail unique
);

drop table member;
select*from member;
desc member;

--����2) �Խ��� ���̺��� ����� �� �÷��� ���������� �ο� �Ͻÿ�.
--���� ������ alter���� �̿��Ұ� , 
--�������� ���̺� ���� �Ѵ� �ǽ��� ������.
create table board(
    board_num number not null,
    user_id varchar2(20) not null,
    board_name varchar2(20) not null,
    board_pass varchar2(200) not null,
    board_subject varchar2(100) not null,
    board_content varchar2(2000),
    board_date timestamp,
    ip_addr varchar2(15),
    read_count number
);

alter table board
add(
    constraint board_boardnum_PK primary key(board_num)
);
alter table board
modify(
    read_count number default 0
);
alter table board
modify(
    read_count number default 0,
    board_num number constraint board_boardnum_PK primary key
);
select*from board;
desc board;
drop table board;

--���� 3) ȸ�����̺� �Ʒ� ������ �����Ͽ� 5���� �����͸� �����ÿ�.
insert into member (user_id, USER_PW, USER_NAME, USER_BIRTH, USER_GENDER,
USER_ADDR, USER_PH1, USER_PH2, USER_REGIST, USER_EMAIL)
values('highland0','111111','�̼���1','1999-12-12','1',
'����','010-1234-1234',null,default,null);

insert into member (user_id, USER_PW, USER_NAME, USER_BIRTH, USER_GENDER,
USER_ADDR, USER_PH1, USER_PH2, USER_REGIST, USER_EMAIL)
values('high','222222','�̼���2','1999-12-12','1',
'����','010-1234-1234',null,default,null);

insert into member (user_id, USER_PW, USER_NAME, USER_BIRTH, USER_GENDER,
USER_ADDR, USER_PH1, USER_PH2, USER_REGIST, USER_EMAIL)
values('land','333333','�̼���3','1999-12-12','1',
'����','010-1234-1234',null,default,null);

insert into member (user_id, USER_PW, USER_NAME, USER_BIRTH, USER_GENDER,
USER_ADDR, USER_PH1, USER_PH2, USER_REGIST, USER_EMAIL)
values('land0','444444','�̼���4','1999-12-12','1',
'����','010-1234-1234',null,default,null);

insert into member (user_id, USER_PW, USER_NAME, USER_BIRTH, USER_GENDER,
USER_ADDR, USER_PH1, USER_PH2, USER_REGIST, USER_EMAIL)
values('high0','555555','�̼���5','1999-12-12','1',
'����','010-1234-1234',null,default,null);

select*
from member;
--����4) �Խ��� ���̺� �����͸� �Ʒ� ���� ���� 6�� �̻��� �ִµ� 
--�� ȸ������ �ּ� �Ѱ� �̻� �Խñ��� ��ϵǰ� �Ͻÿ�.
insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(1, 'highland0', '����� �ƺ�1', '1111','����', '����', '192.168.3.117');

insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(2, 'highland0', '����� �ƺ�2', '1111','����', '����', '192.168.3.117');

insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(3, 'high', '����� �ƺ�3', '1111','����', '����', '192.168.3.117');

insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(4, 'land', '����� �ƺ�4', '1111','����', '����', '192.168.3.117');

insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(5, 'land0', '����� �ƺ�5', '1111','����', '����', '192.168.3.117');

insert into board(BOARD_NUM, USER_ID, BOARD_NAME, BOARD_PASS, BOARD_SUBJECT,
BOARD_CONTENT,IP_ADDR)
values(6, 'high0', '����� �ƺ�6', '1111','����', '����', '192.168.3.117');


--����5) highland0ȸ���� ȸ�����̵�, ȸ����, �̸���, �Խñ� ��ȣ, �Խñ� ����, 
--READ_COUNT�� ����Ͻÿ�.
select m.user_id, user_name, user_email, board_num, board_name, read_count
from member m, board b
where m.user_id = b.user_id;

--����6) �Խñ��� ������ READ_COUNT�� 1�� ���� �� ���̴�. 
--update���� ���� �� ������ READ_COUNT 1���� �Ҽ� �ְ� update���� �ۼ��Ͻÿ�.
--1�� �Խñ��� ���� ��Ű�ÿ�.

update board
set read_count = read_count + 1;

select*
from board;

--���� 7) �Խñ� 2���� �ش��ϴ� ȸ���� ����Ͻÿ�.
select *
from board
where board_num = 2;

-- ���� 8) ��ϵ� �Խñ��� ������ ����Ͻÿ�.
select count(*)
from board;

-- ���� 9) �� ȸ���� �Խñ��� ������ ����Ͻÿ�. (���� �ƴ�)
select count(*)
from board
group by user_id; 

--���� 10) ȸ���� ���� ����Ͻÿ�.
select count(*)
from member;

--���� 11) ���̵� 'highland0'�� ȸ���� ��ȭ��ȣ�� '02-9876-1234', 
--�̸����� 'highland0@nate.com', ��й�ȣ�� '22222'�� �����Ͻÿ�.
update member
set user_ph1 = '02-9876-1234',
    user_email = 'highland0@nate.com',
    user_pw = '22222'
where user_id = 'highland0';

select*
from member;

--���� 12) �Խñ� 1���� ������ '���� ������ �����ҷ�',
--������ '������ �����ؼ� \n ���� ����� �� �� �ְ� ����ؾ���'��  �����Ͻÿ�.
update board
set board_subject = '���� ������ �����ҷ�',
    board_content = '������ �����ؼ� \n ���� ����� �� �� �ְ� ����ؾ���'
where board_num = 1;

select*
from board;

--���� 13) 1�� �Խñ��� ����� �� ������ \n�� <br /> �� ��µǰ� �Ͻÿ�.
update board
set board_content = '������ �����ؼ� <br /> ���� ����� �� �� �ְ� ����ؾ���'
where board_num = 1;

select *
from board
where board_num =1;

--���� 14) �Խñ� ������ �ʹ� �� ȭ�鿡 �� ��µǱ� ��ƴ� . 
--������ ù��° ���� ���� 5���ڸ� ����ϰ� �ڿ��� *�� 5���� ��µǰ� �Ͻÿ�.
select rpad(substr(board_subject, 1,5),10,'*')
from board;

select*from board;

--���� 15) '�̼���1'ȸ���� ���̵� �ؾ���ȴٰ� �Ѵ�. �̸��ϰ� ��ȭ��ȣ�� �̿��ؼ� ���̵� 
--����ϴ� �� ���̵�� ��� ����ؼ��� �ȵǰ� ù���ں��� ������ �������� '*'�� ��µǰ� �Ͻÿ�.
select rpad(substr(user_id,1,3),9,'*')
from member
where user_name = '�̼���1';

--���� 16) �Խ��� ���̺��� �Խñ��� ���� �� �Խñ��� user_id�� �Խñ� ������ ���� ����Ͻÿ�.
select user_id, count(*)
from board
group by user_id
having count(*) = (select max(count(*))
                   from board
                   group by user_id);
                   
--���� 17) ���ݱ����� �۾��� ��� ���� ���� ��Ű�ÿ�.
commit;
--���� 18) '�̼���'ȸ���� Ż���Ϸ��� �Ѵ�. �̼��� ȸ���� Ż�� �Ҽ� �ְ� �����Ͻÿ�.
delete member
where user_name = '�̼���1';
--���� 19) '�̼���' ȸ���� Ż���ϴ� ���� �ƴϾ��� �� �� �� ������ �Ͽ��� . 
--���������� '�̼���'ȸ���� ���� ��� ������(�Խ��� ����) ���� �� �� �ְ� �Ͻÿ�.
rollback;
--���� 20) ��highland0���� ȸ���� �α����� �Ͽ� �ڽ��� �� ���� 1�� �Խñ��� �����Ϸ��� �Ѵ�.
--�ش� �Խù��� ���� �ǰ� �Ͻÿ�.