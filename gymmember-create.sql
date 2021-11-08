create table membership (
	membershipID integer primary key auto_increment,
    cost integer not null,
    access varchar(20) not null,
    inclusions varchar(60)
    );
    
    create table members (
		membersID integer primary key auto_increment,
        name varchar(20) not null,
        address varchar(20) not null,
        city varchar(20) not null,
        state varchar(2) not null,
        zip varchar(5) not null,
        phone varchar(12) not null,
        email varchar(30),
        membershipID integer not null,
        constraint foreign key (membershipID) references membership(membershipID)
        );
        
	insert into membership VALUES (1, 85, "24/7 access", "included spa, private coaching sessions incl.");
    insert into membership VALUES (2, 65, "24/7 access", "included spa");
    insert into membership VALUES (3, 45, "24/7 access", "");
    
    select * from membership;
    