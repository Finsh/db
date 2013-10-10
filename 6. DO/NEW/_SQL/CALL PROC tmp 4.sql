############################################################
	CALL insPartparagraphInParagraph("part 1_10",10);				# name idParagraph
	CALL insPartparagraphInParagraph("part 2_10",10);
	CALL insPartparagraphInParagraph("part 1_1",1);					# name idParagraph
	CALL insPartparagraphInParagraph("part 2_1",1);
	CALL insPartparagraphInParagraph("part 3_1",1);
	CALL insPartparagraphInParagraph("part 4_1",1);
	CALL insPartparagraphInParagraph("part 5_1",1);
	CALL insPartparagraphInParagraph("part 6_1",1);
	CALL insPartparagraphInParagraph("part 7_1",1);
	CALL insPartparagraphInParagraph("part 8_1",1);
	CALL insPartparagraphInParagraph("part 9_1",1);
	CALL insPartparagraphInParagraph("part 10_1",1);
	CALL insPartparagraphInParagraph("part 11_1",1);
	CALL insPartparagraphInParagraph("part 1_2",2);					# name idParagraph
	CALL insPartparagraphInParagraph("part 2_2",2);
	CALL insPartparagraphInParagraph("part 1_4",4);					# name idParagraph
	CALL insPartparagraphInParagraph("part 2_1",4);

# SELECT id, text, number, paragraphS_id1 FROM do.partparagraphs ORDER BY paragraphS_id1, number ASC;
# SELECT * FROM do.partparagraphs ORDER BY paragraphS_id1, number ASC;

	CALL movePartparagraphInParagraph(1,7,11);						# idParagraph idMove NNP
	CALL movePartparagraphInParagraph(1,7,1);
	CALL movePartparagraphInParagraph(1,7,5);