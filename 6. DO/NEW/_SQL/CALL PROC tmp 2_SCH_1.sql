# SELECT * FROM do.subjects;
	CALL cSubject("Mathematics",5);		CALL cSubject("Phusic",5);			CALL cSubject("Man",5);
# SELECT * FROM do.sections; 			name number idSubject 
	CALL cSection("SOME 1",1,1);		CALL cSection("SOMRE 2",2,1);		CALL cSection("SOMRE 3",3,1);		
	CALL cSection("SOMRE 4",4,1);		CALL cSection("SOMRE 5",5,1);		CALL cSection("SOME 6",6,1);
# SELECT * FROM do.absents;
	CALL cAbsent("Absent 1"); 			CALL cAbsent("Absent 1");			CALL cAbsent("Absent 1");
	CALL cAbsent("Absent 1");			CALL cAbsent("Absent 1");			CALL cAbsent("Absent 1");

##########################################################
# SELECT * FROM do.schools;
	CALL cSchool(666,"School #1",1,"description 1"); 			#number name directoruser description
# SELECT * FROM do.classs;
	CALL cClass(7,1990,1,"A");									#number entryyear idSchool letter
# SELECT * FROM do.yodas;
	CALL cYoda(1,1,"a","b","c"); 								#idSchool idUser firstname lastname middlename					
# SELECT * FROM do.spisokclassyodas;
	CALL setYodaClass(1,1,"2012-06-06 00:00:00");				#idClass idYoda datestart
# SELECT * FROM do.teachers;
	CALL cTeacher(1, "Name", "Name", "Name", 1, 1); 			#iduser firstname lastname middlename idschool category
# SELECT * FROM do.teachersubjects;
	CALL setTeachersubject(1,1); 								#idTeacher idSubject
# SELECT * FROM do.learners;
	CALL cLearner(2, "1", "2", "3", 1, 1); 						#iduser firstname  lastname middlename idschool idclass
# SELECT * FROM do.spisokclassslearners;		
	CALL setSpisokClassLearner(1,1);							#idclass idlearner
	CALL setSubjectClass(1,1,1);								#idClass idSubject idTeacher prefixNameDefGroup
# SELECT  @idGroup; SELECT * FROM do.subgroups;
	CALL cSubgroupDefault(1,1,true, @idGroup);					#name idClass idSubject isdefault idGroup

# SELECT * FROM do.relations;	
	CALL cRelation("Father");	CALL cRelation("Mother");								
# SELECT * FROM do.kos;
	CALL cKo(2, "1", "2", "3", 1);								#iduser	firstname lastname middlename idSchool
# SELECT * FROM do.responsibles;
	CALL cResponsible(2, "1", "2", "3", 1);						#iduser firstname lastname middlename idSchool
# SELECT * FROM do.spisokresponsiblelearners;
	CALL setResponsible(1,1,1);									#idRelation, idLearner, idResponsible	
