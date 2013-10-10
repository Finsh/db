








##########################################################
# SELECT * FROM do.schools;
	CALL cSchool(666,"School #1",2,"description 1"); 			#number name directoruser description
# SELECT * FROM do.classs;
	CALL cClass(7,1990,2,"D");									#number entryyear idSchool letter
# SELECT * FROM do.yodas;
	CALL cYoda(2,1,"a","b","c"); 								#idSchool idUser firstname lastname middlename					
# SELECT * FROM do.spisokclassyodas;
	CALL setYodaClass(2,2,"2012-06-06 00:00:00");				#idClass idYoda datestart
# SELECT * FROM do.teachers;
	CALL cTeacher(1, "Name", "Name", "Name", 2, 1); 			#iduser firstname lastname middlename idschool category
# SELECT * FROM do.teachersubjects;
	CALL setTeachersubject(2,1); 								#idTeacher idSubject
# SELECT * FROM do.learners;
	CALL cLearner(2, "1", "2", "3", 2, 2); 						#iduser firstname  lastname middlename idschool idclass
# SELECT * FROM do.spisokclassslearners;		
	CALL setSpisokClassLearner(2,2);							#idclass idlearner
	CALL setSubjectClass(2,1,2);								#idClass idSubject idTeacher
# SELECT  @idGroup; SELECT * FROM do.subgroups;
	CALL cSubgroupDefault(2,2,true, @idGroup1);					# idClass idSubject isdefault idGroup

# SELECT * FROM do.relations;	
	CALL cRelation("Father");	CALL cRelation("Mother");								
# SELECT * FROM do.kos;
	CALL cKo(2, "1", "2", "3", 1);								#iduser	firstname lastname middlename idSchool
# SELECT * FROM do.responsibles;
	CALL cResponsible(2, "1", "2", "3", 1);						#iduser firstname lastname middlename idSchool
# SELECT * FROM do.spisokresponsiblelearners;
	CALL setResponsible(1,2,2);									#idRelation, idLearner, idResponsible	
