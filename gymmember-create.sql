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
    
    insert into members VALUES (1, "Bob Hope", "1298 Hope Ave", "Hopeville", "NE", "39485", "948-892-2845", "BHope@Gmail.com", 1);
    insert into members VALUES (2, "Sue Rangle", "850 Sprat Drive", "Pinkle", "WI", "12845", "468-432-4182", "Suegle@yahoo.com", 2);
    insert into members VALUES (3, "Prince Jangles", "128 Terras Court", "Snupton", "CA", "92834", "923-281-6817", "PrinceJ@Gmail.com", 1);
    insert into members VALUES (4, "Tomas Hawson", "6218 Center Blvd", "Eclear", "PA", "19388", "294-024-9284", "Tomawson@Gmail.com", 3);
    
    select m.cost, m.access, m.inclusions, me.name, me.phone, me.email from membership m
    join members me on me.membershipID = m.membershipID;
    