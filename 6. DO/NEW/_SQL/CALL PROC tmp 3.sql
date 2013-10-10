############################################################
# SELECT * FROM do.materials;
	CALL cMaterialTeacher("mat2",1,1,1,1,NULL); 				#name idTeacher idSubject state notstudy prefix
	CALL cMaterialTeacher(NULL,1,1,1,1,NULL); 											
	CALL cMaterialTeacher(NULL,1,1,1,1,"CLASS"); 										

# SELECT * FROM do.paragraphs;
	CALL insParagraphInSection("1_4", 1, 4);					#name idMaterial isSection 
	CALL insParagraphInSection("2_4", 1, 4);		
	CALL insParagraphInSection("1_3", 1, 3);
	CALL insParagraphInSection("2_3", 1, 3);
	CALL insParagraphInSection("3_3", 1, 3);
	CALL insParagraphInSection("1_5", 1, 5);		
	CALL insParagraphInSection("1_2", 1, 2);
	CALL insParagraphInSection("2_5", 1, 5);
	CALL insParagraphInSection("2_2", 1, 2);
	CALL insParagraphInSection("3_2", 1, 2);		
	CALL insParagraphInSection("1_1", 1, 1);
	CALL insParagraphInSection("2_1", 1, 1);
	CALL insParagraphInSection("3_1", 1, 1);
	CALL insParagraphInSection("4_1", 1, 1);		
	CALL insParagraphInSection("3_4", 1, 4);
	CALL insParagraphInSection("4_4", 1, 4);
	CALL insParagraphInSection("5_1", 1, 1);

# SELECT id, name, number, materialS_id1, sectionS_id1, notstudy FROM do.paragraphs ORDER BY sectionS_id1, number ASC;
# SELECT * FROM do.paragraphs ORDER BY sectionS_id1, number ASC;

	CALL moveParagraphInSection(1,1,12,5);					# idMaterial isSection idParagraph NNP 
	CALL moveParagraphInSection(1,1,12,2);
	CALL moveParagraphInMaterial(1,4,1,1,1);				# idMaterial isSection idParagraph NSP NNP
	CALL moveParagraphInMaterial(1,1,1,5,17);
	CALL moveParagraphInMaterial(1,3,4,5,16);

	CALL switchNotstudyMaterial(1, false);						#idMaterial notstudy
	CALL switchNotstudyParagraph(1, false);
