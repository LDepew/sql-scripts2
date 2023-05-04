Create database noteapp;

use noteapp;

Create table notes (
	notesID integer primary key,
    note varchar(2000) not null,
    noteDate date not null);
    
    INSERT into notes VALUES (1, "this is a test note, seeing how long this is and how far I can go.", "2022-06-05");

    describe notes;
    
    select * from notes;
    
    drop table notes;