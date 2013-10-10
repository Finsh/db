CALL cSubject("wertefe34343",2); 										# SELECT * FROM do.subjects;
CALL cSchool(1234,"Name school",1,"description"); 						# SELECT * FROM do.schools;
CALL cSection("SOMRE",1,1); 											# SELECT * FROM do.sections;

CALL cTeacher(1, "Name", "Name", "Name", 1, 1); 						# SELECT * FROM do.teachers;
CALL setTeachersubject(1,1); 											# SELECT * FROM do.teachersubjects;
#CALL cMaterialTeacher(3,1,1,1); 										# SELECT * FROM do.materials;
CALL cClass("7-A",7,1990,1); 											# SELECT * FROM do.classs;
CALL cLearner(2, "1", "2", "3", 1, 1); 									# SELECT * FROM do.learners;
#CALL cSubgroup("234",1,2,true, @idGroup);								# SELECT  @idGroup; SELECT * FROM do.subgroups;
##CALL cSubgroupDefault(1,1, @idGroup);									# SELECT  @idGroup; SELECT * FROM do.subgroups;
CALL setSpisokClassLearner(1,4);					#idclass idlearner	# SELECT * FROM do.spisokclassslearners;	
##CALL setLearnerAllToSubgroupDefault(1,1);			#idGroup idClass	# SELECT * FROM do.spisoklearnergroups;
CALL setSubjectClass(1,1,1);				#idClass idSubject idTeacher 	
CALL cRelation("Father");	CALL cRelation("Mother");					# SELECT * FROM do.relations;
CALL cKo(2, "1", "2", "3", 1);											# SELECT * FROM do.kos;
CALL cResponsible(2, "1", "2", "3", 1);									# SELECT * FROM do.responsibles;
CALL setResponsible(1,1,5);		# idRelation, idLearner, idResponsible	# SELECT * FROM do.spisokresponsiblelearners;