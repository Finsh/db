USE `admin_do`;
# INSERT SUBJECTS 
# LEVEL 11---------------------------------------------------------------------------------------
CALL cSubject('Английский язык', 11, '#FF3470');        # id1
CALL cSubject('Алгебра', 11, '#FF9470');                # id2
CALL cSubject('Геометрия', 11, '#FFCCFF');              # id3
CALL cSubject('География', 11, '#E6CCFF');              # id4
CALL cSubject('Русский язык', 11, '#FEFFCC');           # id5
CALL cSubject('История Украины', 11, '#CCFF99');        # id6
CALL cSubject('Всемирная история', 11, '#FFD9B3');      # id7
CALL cSubject('Информатика', 11, '#E5FFCC');            # id8
CALL cSubject('Зарубежная литература', 11, '#CDCCFF');  # id9
CALL cSubject('Физкультура', 11, '#99CCFF');            # id10
CALL cSubject('Французский язык', 11, '#FFCF9E');       # id11
CALL cSubject('Немецкий язык',  11, '#FF9999');     	# id12	
CALL cSubject('Биология', 11, '#FFA366');               # id13
CALL cSubject('Физика', 11, '#FF80DF');                 # id14
CALL cSubject('Украинский язык', 11, '#8080FF');        # id15
CALL cSubject('Украинская литература', 11, '#FFFFA8');  # id16
CALL cSubject('Мы-одесситы', 11, '#FFE0E7');            # id17
CALL cSubject('Экономика', 11, '#80FF9F');              # id18
CALL cSubject('Web-дизайн', 11, '#FFB3EC');             # id19

# LEVEL 9
CALL cSubject('Алгебра', 9, '#FF9470');                # id20

# LEVEL 10
CALL cSubject('Алгебра', 10, '#FF9470');                # id21

CALL cSubject('Химия', 11, '#FF809F');              # id22
# END INSERT SUBJECTS-------------------------------------------------------------------------------------

# CREATE SCHOOL
CALL cSchool(38, 'Школа №38', 777, 'some description...');
# END CREATE SCHOOL

# SET SUBJECTS TO SCHOOL
CALL setSubjectSchool(1, 1);
CALL setSubjectSchool(2, 1);
CALL setSubjectSchool(3, 1);
CALL setSubjectSchool(4, 1);
CALL setSubjectSchool(5, 1);
CALL setSubjectSchool(6, 1);
CALL setSubjectSchool(7, 1);
CALL setSubjectSchool(8, 1);
CALL setSubjectSchool(9, 1);
CALL setSubjectSchool(10, 1);
CALL setSubjectSchool(11, 1);
CALL setSubjectSchool(12, 1);
CALL setSubjectSchool(13, 1);
CALL setSubjectSchool(14, 1);
CALL setSubjectSchool(15, 1);
CALL setSubjectSchool(16, 1);
CALL setSubjectSchool(17, 1);
CALL setSubjectSchool(18, 1);
CALL setSubjectSchool(19, 1);
CALL setSubjectSchool(20, 1);
CALL setSubjectSchool(21, 1);
CALL setSubjectSchool(22, 1);



# INSERT CLASSES------------------------
CALL cClass(11, '2006', 1, 'А');                        # id1      
CALL cClass(11, '2006', 1, 'Б');                        # id2
CALL cClass(11, '2006', 1, 'В');                        # id3
CALL cClass(11, '2006', 1, 'Г');                        # id4
CALL cClass(9, '2008', 1, 'Б');                        # id6
CALL cClass(9, '2008', 1, 'А');                        # id5      
CALL cClass(10, '2007', 1, 'А');                        # id7
CALL cClass(10, '2007', 1, 'Б');                        # id8
# END INSERT CLASSES--------------------

# INSERT YODAS----------------------------------------------------
CALL cYoda(1, 303, 'Алевтина', 'Тележникова', 'Альбертовна');	
CALL cYoda(1, 304, 'Татьяна', 'Гладких', 'Анатольевна');		
CALL cYoda(1, 305, 'Елена', 'Платонова', 'Анатольевна');		
CALL cYoda(1, 306, 'Людмила', 'Люстра', 'Станиславовна');		
# END OF INSERT YODAS---------------------------------------------

# SET YODAS TO CLASS-------------------------------
CALL setYodaClass(1, NULL, 1);	
CALL setYodaClass(2, NULL, 2);	
CALL setYodaClass(3, NULL, 4);	
CALL setYodaClass(4, NULL, 3);	
# END SETTING YODAS TO CLASS----------------------

# INSERT TEACHERS-----------------------------------------------------
# CALL cTeacher(iduser, firstname, lastname, middlename, idschool, category)
CALL cTeacher(1002, 'Елена', 'Платонова', 'Анатольевна', 1, 1);       # id1	
CALL cTeacher(92, 'Алевтина', 'Тележникова', 'Альбертовна', 1, 1);  # id2
CALL cTeacher(93, 'Тамара', 'Дузь', 'Вадимовна', 1, 1);             # id3	
CALL cTeacher(94, 'Ирина', 'Хименко', 'Георгиевна', 1, 1);          # id4	
CALL cTeacher(95, 'Наталья', 'Жало', 'Владимировна', 1, 1);	    # id5	
CALL cTeacher(96, 'Наталья', 'Дариенко', 'Бориславовна', 1, 1);	    # id6
CALL cTeacher(97, 'Ирина', 'Буз', 'Станиславовна', 1, 1);	    # id7	
CALL cTeacher(98, 'Иван', 'Синяков', 'Михайлович', 1, 1);	    # id8	
CALL cTeacher(99, 'Светлана', 'Гетьман', 'Ивановна', 1, 1);	    # id9	
CALL cTeacher(100, 'Светлана', 'Флис', 'Григорьевна', 1, 1);        # id10
CALL cTeacher(101, 'Снежана', 'Прокофьева', 'Афанасьевна', 1, 1);   # id11
CALL cTeacher(102, 'Галина', 'Боевая', 'Захаровна', 1, 1);          # id12	
CALL cTeacher(103, 'Людмила', 'Люстра', 'Станиславовна', 1, 1);	    # id13
CALL cTeacher(104, 'Анна', 'Конь', 'Валерьевна', 1, 2);		    # id14
CALL cTeacher(105, 'Лариса','Украинка','Васильевна', 1, 1);         # id15
CALL cTeacher(106, 'Татьяна','Барбашова','Борисовна', 1, 1);        # id16
CALL cTeacher(107, 'Юлиана','Войновская','Леонидовна', 1, 1);       # id17
CALL cTeacher(108, 'Светлана','Постригач','Николаевна', 1, 1);      # id18
CALL cTeacher(109, 'Юрий', 'Холодный', 'Константинович', 1, 1);     # id19
CALL cTeacher(120, 'Инна', 'Коновалова', 'Геннадьевна', 1, 1);     # id20
# END OF INSERT TEACHERS----------------------------------------------

# SET SUBJECT TO TEACHER---------------------------------------------
CALL setTeachersubject(1, 5);
CALL setTeachersubject(1, 9);
CALL setTeachersubject(2, 2);
CALL setTeachersubject(2, 3);
CALL setTeachersubject(3, 6);
CALL setTeachersubject(3, 7);
CALL setTeachersubject(4, 1);
CALL setTeachersubject(5, 14);
CALL setTeachersubject(6, 15);
CALL setTeachersubject(6, 16);
CALL setTeachersubject(7, 8);
CALL setTeachersubject(8, 10);
CALL setTeachersubject(9, 4);
CALL setTeachersubject(10, 12);
CALL setTeachersubject(11, 11);
CALL setTeachersubject(12, 17);
CALL setTeachersubject(13, 13);
CALL setTeachersubject(14, 1);
CALL setTeachersubject(15, 15);
CALL setTeachersubject(15, 16);
CALL setTeachersubject(16, 5);
CALL setTeachersubject(16, 9);
CALL setTeachersubject(17, 1);
CALL setTeachersubject(18, 11);
CALL setTeachersubject(19, 14);
CALL setTeachersubject(20, 22);
# END SETTING SUBJECTS TO TEACHER-------------------------------------

# INSERT LEARNERS
# CALL cLearner (iduser, firstname, lastname, middlename, idschool, idclass);

# INSERT LEARNERS TO 11-В
CALL cLearner(1001, 'Александр', 'Аратовский', 'Сергеевич', 1, 3);
CALL cLearner(202, 'Валерия', 'Андрикевич', 'Петровна', 1, 3);
CALL cLearner(203, 'Александр', 'Крочак', 'Николаевич', 1, 3);
CALL cLearner(204, 'Александр', 'Купчак', 'Игоревич', 1, 3);
CALL cLearner(205, 'Алексей', 'Турунов', 'Сергеевич', 1, 3);
CALL cLearner(206, 'Яна', 'Шамшурина', 'Ивановна', 1, 3);
CALL cLearner(207, 'Никита', 'Кобылянский', 'Николаевич', 1, 3);
CALL cLearner(208, 'Виктор', 'Митрошин', 'Викторович', 1, 3);
CALL cLearner(209, 'Анна', 'Ермолаева', 'Евгеньевна', 1, 3);
CALL cLearner(210, 'Анастасия', 'Дзык', 'Васильевна', 1, 3);
CALL cLearner(211, 'Светлана', 'Петрова', 'Александровна', 1, 3);
CALL cLearner(212, 'Екатерина', 'Шуляк', 'Александровна', 1, 3);
CALL cLearner(213, 'Артур', 'Кощей', 'Дмитриевич', 1, 3);
CALL cLearner(214, 'Соня', 'Драпак', 'Валерьевна', 1, 3);

# INSERT LEARNERS TO 11-B
CALL cLearner(215, 'Марина', 'Амирханян', 'Геннадьевна', 1, 2);
CALL cLearner(216, 'Камелия', 'Гулам', 'Викторовна', 1, 2);
CALL cLearner(217, 'Артем', 'Рудковский', 'Петрович', 1, 2);
CALL cLearner(218, 'Антон', 'Земляк', 'Сергеевич', 1, 2);
CALL cLearner(219, 'Илья', 'Гамарник', 'Александрович', 1, 2);
CALL cLearner(220, 'Екатерина', 'Кузьмина', 'Валерьевна', 1, 2);
CALL cLearner(221, 'Ольга', 'Кондратюк', 'Михайловна', 1, 2);
# END OF INSERT LEARNERS

# SET CLASS OF LEARNERS
# CALL setSpisokClassLearner(idclass, idlearner);
# SET class to learners of 11-В
CALL setSpisokClassLearner(3, 1);
CALL setSpisokClassLearner(3, 2);
CALL setSpisokClassLearner(3, 3);
CALL setSpisokClassLearner(3, 4);
CALL setSpisokClassLearner(3, 5);
CALL setSpisokClassLearner(3, 6);
CALL setSpisokClassLearner(3, 7);
CALL setSpisokClassLearner(3, 8);
CALL setSpisokClassLearner(3, 9);
CALL setSpisokClassLearner(3, 10);
CALL setSpisokClassLearner(3, 11);
CALL setSpisokClassLearner(3, 12);
CALL setSpisokClassLearner(3, 13);
CALL setSpisokClassLearner(3, 14);
# SET class to learners of 11-Б
CALL setSpisokClassLearner(2, 15);
CALL setSpisokClassLearner(2, 16);
CALL setSpisokClassLearner(2, 17);
CALL setSpisokClassLearner(2, 18);
CALL setSpisokClassLearner(2, 19);
CALL setSpisokClassLearner(2, 20);
CALL setSpisokClassLearner(2, 21);

# END SET CLASS OF LEARNER

# SET SUBJECT TO CLASS
# CALL setSubjectClass (idclass, idsubject, idteacher);

# SET subjects to 11-В
CALL setSubjectClass(3, 5, 1);
CALL setSubjectClass(3, 9, 1);
CALL setSubjectClass(3, 2, 2);
CALL setSubjectClass(3, 3, 2);
CALL setSubjectClass(3, 6, 3);
CALL setSubjectClass(3, 7, 3);
CALL setSubjectClass(3, 1, 4);
CALL setSubjectClass(3, 14, 5);
CALL setSubjectClass(3, 15, 6);
CALL setSubjectClass(3, 16, 6);
CALL setSubjectClass(3, 8, 7);
CALL setSubjectClass(3, 10, 8);
CALL setSubjectClass(3, 4, 9);
CALL setSubjectClass(3, 12, 10);
CALL setSubjectClass(3, 11, 11);
CALL setSubjectClass(3, 17, 12);
CALL setSubjectClass(3, 13, 13);
CALL setSubjectClass(3, 22, 20);

# SET subjects to 11-Б
CALL setSubjectClass(2, 1, 17);
CALL setSubjectClass(2, 2, 2);
CALL setSubjectClass(2, 3, 2);
CALL setSubjectClass(2, 4, 9);
CALL setSubjectClass(2, 5, 16);
CALL setSubjectClass(2, 6, 3);
CALL setSubjectClass(2, 7, 3);
CALL setSubjectClass(2, 8, 7);
CALL setSubjectClass(2, 9, 16);
CALL setSubjectClass(2, 10, 8);
CALL setSubjectClass(2, 11, 18);
CALL setSubjectClass(2, 12, 10);
CALL setSubjectClass(2, 13, 13);
CALL setSubjectClass(2, 14, 19);
CALL setSubjectClass(2, 15, 15);
CALL setSubjectClass(2, 16, 15);
CALL setSubjectClass(2, 17, 12);
CALL setSubjectClass(2, 18, 9);
CALL setSubjectClass(2, 22, 20);

# SET subjects to 11-Г
CALL setSubjectClass(4, 1, 17);
CALL setSubjectClass(4, 2, 2);
CALL setSubjectClass(4, 3, 2);
CALL setSubjectClass(4, 4, 9);
CALL setSubjectClass(4, 5, 16);

# END SET SUBJECT TO CLASS

# CREATE CLASSROOMS
CALL cClassroom(1, 1, 'Укр', 'Кабинет украинского языка и литературы'); # Ukr cabinet
CALL cClassroom(1, 2, '', ''); # 2nd cabinet
CALL cClassroom(1, 3, 'Рус', 'Кабинет русского языка'); # Russian cabinet
CALL cClassroom(1, 4, 'Франц', 'Кабинет французского языка'); # French cabinet

CALL cClassroom(1, 5, 'Англ', 'Кабинет английского языка'); # English cabinet
CALL cClassroom(1, 6, 'Нем', 'Кабинет немецкого языка'); # German cabinet
CALL cClassroom(1, 7, 'Матем', 'Кабинет математики');# Maths cabinet
CALL cClassroom(1, 8, 'Хим', 'Кабинет химии');# Chemistry cabinet

CALL cClassroom(1, 9, 'Физ', 'Кабинет физики'); # Physics cabinet
CALL cClassroom(1, 10, 'Ист', 'Кабинет истории'); # History cabinet
CALL cClassroom(1, 11, '', '');
CALL cClassroom(1, 12, 'Био', 'Кабинет биологии'); # Biology cabinet

CALL cClassroom(1, 13, 'Геогр', 'Кабинет географии');
CALL cClassroom(1, 14, '', '');
CALL cClassroom(1, 15, 'Ист', 'Кабинет истории');
CALL cClassroom(1, 16, '', '');

CALL cClassroom(1, 17, 'Инф', 'Кабинет информатики');
CALL cClassroom(1, 18, '', '');
CALL cClassroom(1, 19, '', '');
CALL cClassroom(1, 20, '', '');

CALL cClassroom(1, 21, '', '');
CALL cClassroom(1, 22, '', '');
CALL cClassroom(1, 23, '', '');
CALL cClassroom(1, 24, '', '');
# END OF CREATE CLASSROOMS

# #####################
# CREATE LESSONS
# #####################
# cLesson (idsubgroup, idsubject, idteacher, idclassroom, number, date)
# 11-B LESSONS
# CREATE LESSONS FOR 02.09.2013 (MONDAY)
CALL cLesson(15, 11, 11, 4, 1, '2013-09-02 09:00:00');		# 1. French Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-02 09:50:00');             # 2. English Language
CALL cLesson(13, 4, 9, 13, 3, '2013-09-02 10:45:00');		# 3. Geography
CALL cLesson(3, 2, 2, 7, 4, '2013-09-02 11:45:00'); 		# 4. Algebra
CALL cLesson(11, 8, 7, 17, 5, '2013-09-02 12:40:00'); 		# 5. Informatics
CALL cLesson(5, 6, 3, 15, 6, '2013-09-02 13:30:00'); 		# 6. Ukraine History
CALL cLesson(16, 17, 12, 10, 7, '2013-09-02 14:20:00'); 	# 7. We are ppl from Odessa, yo

# CREATE LESSONS FOR 03.09.2013 (TUESDAY)
CALL cLesson(4, 3, 2, 7, 1, '2013-09-03 09:00:00'); 		# 1. Geometry
CALL cLesson(4, 3, 2, 7, 2, '2013-09-03 09:50:00'); 		# 2. Geometry
CALL cLesson(1, 5, 1, 16, 3, '2013-09-03 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 16, 4, '2013-09-03 11:45:00'); 		# 4. World Literature
CALL cLesson(8, 14, 5, 9, 5, '2013-09-03 12:40:00'); 		# 5. Physics
CALL cLesson(7, 1, 4, 5, 6, '2013-09-03 13:30:00'); 		# 6. English Language

# CREATE LESSONS FOR 04.09.2013 (WEDNESDAY)
CALL cLesson(12, 10, 8, 24, 1, '2013-09-04 09:00:00'); 		# 1. Physical Culture
CALL cLesson(3, 2, 2, 7, 2, '2013-09-04 09:50:00'); 		# 2. Algebra
CALL cLesson(11, 8, 7, 17, 3, '2013-09-04 10:45:00'); 		# 3. Informatics
CALL cLesson(17, 13, 13, 12, 4, '2013-09-04 11:45:00'); 	# 4. Biology
CALL cLesson(13, 4, 9, 13, 5, '2013-09-04 12:40:00'); 		# 5. Geography
CALL cLesson(9, 15, 6, 1, 6, '2013-09-04 13:30:00'); 		# 6. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 7, '2013-09-04 14:20:00'); 		# 7. Ukrainian Literature

# CREATE LESSONS FOR 05.09.2013 (THURSDAY)
CALL cLesson(9, 15, 6, 2, 1, '2013-09-05 09:00:00'); 		# 1. Ukrainian Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-05 09:50:00'); 		# 2. English Language
CALL cLesson(1, 5, 1, 16, 3, '2013-09-05 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 18, 4, '2013-09-05 11:45:00'); 		# 4. World Literature
CALL cLesson(5, 6, 3, 10, 5, '2013-09-05 12:40:00'); 		# 5. Ukraine History
CALL cLesson(5, 6, 3, 15, 6, '2013-09-05 13:30:00'); 		# 6. World History
CALL cLesson(7, 1, 4, 4, 7, '2013-09-05 14:20:00'); 		# 7. English Language

# CREATE LESSONS FOR 06.09.2013 (FRIDAY)
CALL cLesson(15, 11, 11, 6, 1, '2013-09-06 09:00:00');		# 1. French Language
CALL cLesson(3, 2, 2, 7, 2, '2013-09-06 09:50:00'); 		# 2. Algebra
CALL cLesson(12, 10, 8, 24, 3, '2013-09-06 10:45:00'); 		# 3. Physical Culture
CALL cLesson(8, 14, 5, 9, 4, '2013-09-06 11:45:00'); 		# 4. Physics
CALL cLesson(9, 15, 6, 1, 5, '2013-09-06 12:40:00'); 		# 5. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 6, '2013-09-06 13:30:00'); 		# 6. Ukrainian Literature

# CREATE LESSONS FOR 09.09.2013 (MONDAY)
CALL cLesson(15, 11, 11, 4, 1, '2013-09-09 09:00:00');		# 1. French Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-09 09:50:00');             # 2. English Language
CALL cLesson(13, 4, 9, 13, 3, '2013-09-09 10:45:00');		# 3. Geography
CALL cLesson(3, 2, 2, 7, 4, '2013-09-09 11:45:00'); 		# 4. Algebra
CALL cLesson(11, 8, 7, 17, 5, '2013-09-09 12:40:00'); 		# 5. Informatics
CALL cLesson(5, 6, 3, 15, 6, '2013-09-09 13:30:00'); 		# 6. Ukraine History
CALL cLesson(16, 17, 12, 10, 7, '2013-09-09 14:20:00'); 	# 7. We are ppl from Odessa, yo

# CREATE LESSONS FOR 10.09.2013 (TUESDAY)
CALL cLesson(4, 3, 2, 7, 1, '2013-09-10 09:00:00'); 		# 1. Geometry
CALL cLesson(4, 3, 2, 7, 2, '2013-09-10 09:50:00'); 		# 2. Geometry
CALL cLesson(1, 5, 1, 16, 3, '2013-09-10 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 16, 4, '2013-09-10 11:45:00'); 		# 4. World Literature
CALL cLesson(8, 14, 5, 9, 5, '2013-09-10 12:40:00'); 		# 5. Physics
CALL cLesson(7, 1, 4, 5, 6, '2013-09-10 13:30:00'); 		# 6. English Language

# CREATE LESSONS FOR 11.09.2013 (WEDNESDAY)
CALL cLesson(12, 10, 8, 24, 1, '2013-09-11 09:00:00'); 		# 1. Physical Culture
CALL cLesson(3, 2, 2, 7, 2, '2013-09-11 09:50:00'); 		# 2. Algebra
CALL cLesson(11, 8, 7, 17, 3, '2013-09-11 10:45:00'); 		# 3. Informatics
CALL cLesson(17, 13, 13, 12, 4, '2013-09-11 11:45:00'); 	# 4. Biology
CALL cLesson(13, 4, 9, 13, 5, '2013-09-11 12:40:00'); 		# 5. Geography
CALL cLesson(9, 15, 6, 1, 6, '2013-09-11 13:30:00'); 		# 6. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 7, '2013-09-11 14:20:00'); 		# 7. Ukrainian Literature

# CREATE LESSONS FOR 12.09.2013 (THURSDAY)
CALL cLesson(9, 15, 6, 2, 1, '2013-09-12 09:00:00'); 		# 1. Ukrainian Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-12 09:50:00'); 		# 2. English Language
CALL cLesson(1, 5, 1, 16, 3, '2013-09-12 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 18, 4, '2013-09-12 11:45:00'); 		# 4. World Literature
CALL cLesson(5, 6, 3, 10, 5, '2013-09-12 12:40:00'); 		# 5. Ukraine History
CALL cLesson(5, 6, 3, 15, 6, '2013-09-12 13:30:00'); 		# 6. World History
CALL cLesson(7, 1, 4, 4, 7, '2013-09-12 14:20:00'); 		# 7. English Language

# CREATE LESSONS FOR 13.09.2013 (FRIDAY)
CALL cLesson(15, 11, 11, 6, 1, '2013-09-13 09:00:00');		# 1. French Language
CALL cLesson(3, 2, 2, 7, 2, '2013-09-13 09:50:00'); 		# 2. Algebra
CALL cLesson(12, 10, 8, 24, 3, '2013-09-13 10:45:00'); 		# 3. Physical Culture
CALL cLesson(8, 14, 5, 9, 4, '2013-09-13 11:45:00'); 		# 4. Physics
CALL cLesson(9, 15, 6, 1, 5, '2013-09-13 12:40:00'); 		# 5. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 6, '2013-09-13 13:30:00'); 		# 6. Ukrainian Literature

# CREATE LESSONS FOR 16.09.2013 (MONDAY)
CALL cLesson(15, 11, 11, 4, 1, '2013-09-16 09:00:00');		# 1. French Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-16 09:50:00');             # 2. English Language
CALL cLesson(13, 4, 9, 13, 3, '2013-09-16 10:45:00');		# 3. Geography
CALL cLesson(3, 2, 2, 7, 4, '2013-09-16 11:45:00'); 		# 4. Algebra
CALL cLesson(11, 8, 7, 17, 5, '2013-09-16 12:40:00'); 		# 5. Informatics
CALL cLesson(5, 6, 3, 15, 6, '2013-09-16 13:30:00'); 		# 6. Ukraine History
CALL cLesson(16, 17, 12, 10, 7, '2013-09-16 14:20:00'); 	# 7. We are ppl from Odessa, yo

# CREATE LESSONS FOR 17.09.2013 (TUESDAY)
CALL cLesson(4, 3, 2, 7, 1, '2013-09-17 09:00:00'); 		# 1. Geometry
CALL cLesson(4, 3, 2, 7, 2, '2013-09-17 09:50:00'); 		# 2. Geometry
CALL cLesson(1, 5, 1, 16, 3, '2013-09-17 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 16, 4, '2013-09-17 11:45:00'); 		# 4. World Literature
CALL cLesson(8, 14, 5, 9, 5, '2013-09-17 12:40:00'); 		# 5. Physics
CALL cLesson(7, 1, 4, 5, 6, '2013-09-17 13:30:00'); 		# 6. English Language

# CREATE LESSONS FOR 18.09.2013 (WEDNESDAY)
CALL cLesson(12, 10, 8, 24, 1, '2013-09-18 09:00:00'); 		# 1. Physical Culture
CALL cLesson(3, 2, 2, 7, 2, '2013-09-18 09:50:00'); 		# 2. Algebra
CALL cLesson(11, 8, 7, 17, 3, '2013-09-18 10:45:00'); 		# 3. Informatics
CALL cLesson(17, 13, 13, 12, 4, '2013-09-18 11:45:00'); 	# 4. Biology
CALL cLesson(13, 4, 9, 13, 5, '2013-09-18 12:40:00'); 		# 5. Geography
CALL cLesson(9, 15, 6, 1, 6, '2013-09-18 13:30:00'); 		# 6. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 7, '2013-09-18 14:20:00'); 		# 7. Ukrainian Literature

# CREATE LESSONS FOR 19.09.2013 (THURSDAY)
CALL cLesson(9, 15, 6, 2, 1, '2013-09-19 09:00:00'); 		# 1. Ukrainian Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-19 09:50:00'); 		# 2. English Language
CALL cLesson(1, 5, 1, 16, 3, '2013-09-19 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 18, 4, '2013-09-19 11:45:00'); 		# 4. World Literature
CALL cLesson(5, 6, 3, 10, 5, '2013-09-19 12:40:00'); 		# 5. Ukraine History
CALL cLesson(5, 6, 3, 15, 6, '2013-09-19 13:30:00'); 		# 6. World History
CALL cLesson(7, 1, 4, 4, 7, '2013-09-19 14:20:00'); 		# 7. English Language

# CREATE LESSONS FOR 20.09.2013 (FRIDAY)
CALL cLesson(15, 11, 11, 6, 1, '2013-09-20 09:00:00');		# 1. French Language
CALL cLesson(3, 2, 2, 7, 2, '2013-09-20 09:50:00'); 		# 2. Algebra
CALL cLesson(12, 10, 8, 24, 3, '2013-09-20 10:45:00'); 		# 3. Physical Culture
CALL cLesson(8, 14, 5, 9, 4, '2013-09-20 11:45:00'); 		# 4. Physics
CALL cLesson(9, 15, 6, 1, 5, '2013-09-20 12:40:00'); 		# 5. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 6, '2013-09-20 13:30:00'); 		# 6. Ukrainian Literature

# CREATE LESSONS FOR 23.09.2013 (MONDAY)
CALL cLesson(15, 11, 11, 4, 1, '2013-09-23 09:00:00');		# 1. French Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-23 09:50:00');             # 2. English Language
CALL cLesson(13, 4, 9, 13, 3, '2013-09-23 10:45:00');		# 3. Geography
CALL cLesson(3, 2, 2, 7, 4, '2013-09-23 11:45:00'); 		# 4. Algebra
CALL cLesson(11, 8, 7, 17, 5, '2013-09-23 12:40:00'); 		# 5. Informatics
CALL cLesson(5, 6, 3, 15, 6, '2013-09-23 13:30:00'); 		# 6. Ukraine History
CALL cLesson(16, 17, 12, 10, 7, '2013-09-23 14:20:00'); 	# 7. We are ppl from Odessa, yo

# CREATE LESSONS FOR 24.09.2013 (TUESDAY)
CALL cLesson(4, 3, 2, 7, 1, '2013-09-24 09:00:00'); 		# 1. Geometry
CALL cLesson(4, 3, 2, 7, 2, '2013-09-24 09:50:00'); 		# 2. Geometry
CALL cLesson(1, 5, 1, 16, 3, '2013-09-24 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 16, 4, '2013-09-24 11:45:00'); 		# 4. World Literature
CALL cLesson(8, 14, 5, 9, 5, '2013-09-24 12:40:00'); 		# 5. Physics
CALL cLesson(7, 1, 4, 5, 6, '2013-09-24 13:30:00'); 		# 6. English Language

# CREATE LESSONS FOR 25.09.2013 (WEDNESDAY)
CALL cLesson(12, 10, 8, 24, 1, '2013-09-25 09:00:00'); 		# 1. Physical Culture
CALL cLesson(3, 2, 2, 7, 2, '2013-09-25 09:50:00'); 		# 2. Algebra
CALL cLesson(11, 8, 7, 17, 3, '2013-09-25 10:45:00'); 		# 3. Informatics
CALL cLesson(17, 13, 13, 12, 4, '2013-09-25 11:45:00'); 	# 4. Biology
CALL cLesson(13, 4, 9, 13, 5, '2013-09-25 12:40:00'); 		# 5. Geography
CALL cLesson(9, 15, 6, 1, 6, '2013-09-25 13:30:00'); 		# 6. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 7, '2013-09-25 14:20:00'); 		# 7. Ukrainian Literature

# CREATE LESSONS FOR 26.09.2013 (THURSDAY)
CALL cLesson(9, 15, 6, 2, 1, '2013-09-26 09:00:00'); 		# 1. Ukrainian Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-26 09:50:00'); 		# 2. English Language
CALL cLesson(1, 5, 1, 16, 3, '2013-09-26 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 18, 4, '2013-09-26 11:45:00'); 		# 4. World Literature
CALL cLesson(5, 6, 3, 10, 5, '2013-09-26 12:40:00'); 		# 5. Ukraine History
CALL cLesson(5, 6, 3, 15, 6, '2013-09-26 13:30:00'); 		# 6. World History
CALL cLesson(7, 1, 4, 4, 7, '2013-09-26 14:20:00'); 		# 7. English Language

# CREATE LESSONS FOR 27.09.2013 (FRIDAY)
CALL cLesson(15, 11, 11, 6, 1, '2013-09-27 09:00:00');		# 1. French Language
CALL cLesson(3, 2, 2, 7, 2, '2013-09-27 09:50:00'); 		# 2. Algebra
CALL cLesson(12, 10, 8, 24, 3, '2013-09-27 10:45:00'); 		# 3. Physical Culture
CALL cLesson(8, 14, 5, 9, 4, '2013-09-27 11:45:00'); 		# 4. Physics
CALL cLesson(9, 15, 6, 1, 5, '2013-09-27 12:40:00'); 		# 5. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 6, '2013-09-27 13:30:00'); 		# 6. Ukrainian Literature

# CREATE LESSONS FOR 30.09.2013 (MONDAY)
CALL cLesson(15, 11, 11, 4, 1, '2013-09-30 09:00:00');		# 1. French Language
CALL cLesson(7, 1, 4, 5, 2, '2013-09-30 09:50:00');             # 2. English Language
CALL cLesson(13, 4, 9, 13, 3, '2013-09-30 10:45:00');		# 3. Geography
CALL cLesson(3, 2, 2, 7, 4, '2013-09-30 11:45:00'); 		# 4. Algebra
CALL cLesson(11, 8, 7, 17, 5, '2013-09-30 12:40:00'); 		# 5. Informatics
CALL cLesson(5, 6, 3, 15, 6, '2013-09-30 13:30:00'); 		# 6. Ukraine History
CALL cLesson(16, 17, 12, 10, 7, '2013-09-30 14:20:00'); 	# 7. We are ppl from Odessa, yo

# CREATE LESSONS FOR 01.10.2013 (TUESDAY)
CALL cLesson(4, 3, 2, 7, 1, '2013-10-01 09:00:00'); 		# 1. Geometry
CALL cLesson(4, 3, 2, 7, 2, '2013-10-01 09:50:00'); 		# 2. Geometry
CALL cLesson(1, 5, 1, 16, 3, '2013-10-01 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 16, 4, '2013-10-01 11:45:00'); 		# 4. World Literature
CALL cLesson(8, 14, 5, 9, 5, '2013-10-01 12:40:00'); 		# 5. Physics
CALL cLesson(7, 1, 4, 5, 6, '2013-10-01 13:30:00'); 		# 6. English Language

# CREATE LESSONS FOR 02.10.2013 (WEDNESDAY)
CALL cLesson(12, 10, 8, 24, 1, '2013-10-02 09:00:00'); 		# 1. Physical Culture
CALL cLesson(3, 2, 2, 7, 2, '2013-10-02 09:50:00'); 		# 2. Algebra
CALL cLesson(11, 8, 7, 17, 3, '2013-10-02 10:45:00'); 		# 3. Informatics
CALL cLesson(17, 13, 13, 12, 4, '2013-10-02 11:45:00'); 	# 4. Biology
CALL cLesson(13, 4, 9, 13, 5, '2013-10-02 12:40:00'); 		# 5. Geography
CALL cLesson(9, 15, 6, 1, 6, '2013-10-02 13:30:00'); 		# 6. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 7, '2013-10-02 14:20:00'); 		# 7. Ukrainian Literature

# CREATE LESSONS FOR 03.10.2013 (THURSDAY)
CALL cLesson(9, 15, 6, 2, 1, '2013-10-03 09:00:00'); 		# 1. Ukrainian Language
CALL cLesson(7, 1, 4, 5, 2, '2013-10-03 09:50:00'); 		# 2. English Language
CALL cLesson(1, 5, 1, 16, 3, '2013-10-03 10:45:00'); 		# 3. Russian Language
CALL cLesson(2, 9, 1, 18, 4, '2013-10-03 11:45:00'); 		# 4. World Literature
CALL cLesson(5, 6, 3, 10, 5, '2013-10-03 12:40:00'); 		# 5. Ukraine History
CALL cLesson(5, 6, 3, 15, 6, '2013-10-03 13:30:00'); 		# 6. World History
CALL cLesson(7, 1, 4, 4, 7, '2013-10-03 14:20:00'); 		# 7. English Language

# CREATE LESSONS FOR 04.10.2013 (FRIDAY)
CALL cLesson(15, 11, 11, 6, 1, '2013-10-04 09:00:00');		# 1. French Language
CALL cLesson(3, 2, 2, 7, 2, '2013-10-04 09:50:00'); 		# 2. Algebra
CALL cLesson(12, 10, 8, 24, 3, '2013-10-04 10:45:00'); 		# 3. Physical Culture
CALL cLesson(8, 14, 5, 9, 4, '2013-10-04 11:45:00'); 		# 4. Physics
CALL cLesson(9, 15, 6, 1, 5, '2013-10-04 12:40:00'); 		# 5. Ukrainian Language
CALL cLesson(10, 16, 6, 2, 6, '2013-10-04 13:30:00'); 		# 6. Ukrainian Literature
# cLesson (idsubgroup, idsubject, idteacher, idclassroom, number, date)
# 11-Б LESSONS
# CREATE LESSONS FOR 02.09.2013 (MONDAY)
CALL cLesson(19,  2,  2,  7,  1, '2013-09-02 09:00:00');		# 1. Algebra
CALL cLesson(20,  3,  2,  7,  2, '2013-09-02 09:50:00');                # 2. Geometry
CALL cLesson(22,  5, 16,  3,  3, '2013-09-02 10:45:00');		# 3. Russian Language
CALL cLesson(33, 16, 15,  2,  4, '2013-09-02 11:45:00'); 		# 4. Ukrainian Literature
CALL cLesson(31, 14, 19,  9,  5, '2013-09-02 12:40:00'); 		# 5. Physics
CALL cLesson(25,  8,  7, 11,  6, '2013-09-02 13:30:00'); 		# 6. Informatics
CALL cLesson(36, 22, 20,  8,  7, '2013-09-02 14:20:00');                # 7. Chemistry

# CREATE LESSONS FOR 03.09.2013 (TUESDAY)
CALL cLesson(21,  4,  9, 13,  1, '2013-09-03 09:00:00'); 		# 1. Geography
CALL cLesson(30, 13, 13, 12,  2, '2013-09-03 09:50:00'); 		# 2. Biology
CALL cLesson(27, 10,  8, 24,  3, '2013-09-03 10:45:00'); 		# 3. Physical Culture
CALL cLesson(20,  3,  2,  7,  4, '2013-09-03 11:45:00'); 		# 4. Geometry
CALL cLesson(19,  2,  2,  7,  5, '2013-09-03 12:40:00'); 		# 5. Algebra
CALL cLesson(18,  1, 17,  4,  6, '2013-09-03 13:30:00'); 		# 6. English Language

-- # CREATE LESSONS FOR 04.09.2013 (WEDNESDAY)
-- CALL cLesson(12, 10, 8, 24, 1, '2013-09-04 09:00:00'); 		# 1. Physical Culture
-- CALL cLesson(3, 2, 2, 7, 2, '2013-09-04 09:50:00'); 		# 2. Algebra
-- CALL cLesson(11, 8, 7, 17, 3, '2013-09-04 10:45:00'); 		# 3. Informatics
-- CALL cLesson(17, 13, 13, 12, 4, '2013-09-04 11:45:00'); 	# 4. Biology
-- CALL cLesson(13, 4, 9, 13, 5, '2013-09-04 12:40:00'); 		# 5. Geography
-- CALL cLesson(9, 15, 6, 1, 6, '2013-09-04 13:30:00'); 		# 6. Ukrainian Language
-- CALL cLesson(10, 16, 6, 2, 7, '2013-09-04 14:20:00'); 		# 7. Ukrainian Literature
-- 
-- # CREATE LESSONS FOR 05.09.2013 (THURSDAY)
-- CALL cLesson(9, 15, 6, 2, 1, '2013-09-05 09:00:00'); 		# 1. Ukrainian Language
-- CALL cLesson(7, 1, 4, 5, 2, '2013-09-05 09:50:00'); 		# 2. English Language
-- CALL cLesson(1, 5, 1, 16, 3, '2013-09-05 10:45:00'); 		# 3. Russian Language
-- CALL cLesson(2, 9, 1, 18, 4, '2013-09-05 11:45:00'); 		# 4. World Literature
-- CALL cLesson(5, 6, 3, 10, 5, '2013-09-05 12:40:00'); 		# 5. Ukraine History
-- CALL cLesson(5, 6, 3, 15, 6, '2013-09-05 13:30:00'); 		# 6. World History
-- CALL cLesson(7, 1, 4, 4, 7, '2013-09-05 14:20:00'); 		# 7. English Language
-- 
-- # CREATE LESSONS FOR 06.09.2013 (FRIDAY)
-- CALL cLesson(15, 11, 11, 6, 1, '2013-09-06 09:00:00');		# 1. French Language
-- CALL cLesson(3, 2, 2, 7, 2, '2013-09-06 09:50:00'); 		# 2. Algebra
-- CALL cLesson(12, 10, 8, 24, 3, '2013-09-06 10:45:00'); 		# 3. Physical Culture
-- CALL cLesson(8, 14, 5, 9, 4, '2013-09-06 11:45:00'); 		# 4. Physics
-- CALL cLesson(9, 15, 6, 1, 5, '2013-09-06 12:40:00'); 		# 5. Ukrainian Language
-- CALL cLesson(10, 16, 6, 2, 6, '2013-09-06 13:30:00'); 		# 6. Ukrainian Literature
-- 
-- # CREATE LESSONS FOR 09.09.2013 (MONDAY)
-- CALL cLesson(15, 11, 11, 4, 1, '2013-09-02 09:00:00');		# 1. French Language
-- CALL cLesson(7, 1, 4, 5, 2, '2013-09-02 09:50:00');             # 2. English Language
-- CALL cLesson(13, 4, 9, 13, 3, '2013-09-02 10:45:00');		# 3. Geography
-- CALL cLesson(3, 2, 2, 7, 4, '2013-09-02 11:45:00'); 		# 4. Algebra
-- CALL cLesson(11, 8, 7, 17, 5, '2013-09-02 12:40:00'); 		# 5. Informatics
-- CALL cLesson(5, 6, 3, 15, 6, '2013-09-02 13:30:00'); 		# 6. Ukraine History
-- CALL cLesson(16, 17, 12, 10, 7, '2013-09-02 14:20:00'); 	# 7. We are ppl from Odessa, yo
-- 
-- # CREATE LESSONS FOR 10.09.2013 (TUESDAY)
-- CALL cLesson(4, 3, 2, 7, 1, '2013-09-03 09:00:00'); 		# 1. Geometry
-- CALL cLesson(4, 3, 2, 7, 2, '2013-09-03 09:50:00'); 		# 2. Geometry
-- CALL cLesson(1, 5, 1, 16, 3, '2013-09-03 10:45:00'); 		# 3. Russian Language
-- CALL cLesson(2, 9, 1, 16, 4, '2013-09-03 11:45:00'); 		# 4. World Literature
-- CALL cLesson(8, 14, 5, 9, 5, '2013-09-03 12:40:00'); 		# 5. Physics
-- CALL cLesson(7, 1, 4, 5, 6, '2013-09-03 13:30:00'); 		# 6. English Language
-- 
-- # CREATE LESSONS FOR 11.09.2013 (WEDNESDAY)
-- CALL cLesson(12, 10, 8, 24, 1, '2013-09-04 09:00:00'); 		# 1. Physical Culture
-- CALL cLesson(3, 2, 2, 7, 2, '2013-09-04 09:50:00'); 		# 2. Algebra
-- CALL cLesson(11, 8, 7, 17, 3, '2013-09-04 10:45:00'); 		# 3. Informatics
-- CALL cLesson(17, 13, 13, 12, 4, '2013-09-04 11:45:00'); 	# 4. Biology
-- CALL cLesson(13, 4, 9, 13, 5, '2013-09-04 12:40:00'); 		# 5. Geography
-- CALL cLesson(9, 15, 6, 1, 6, '2013-09-04 13:30:00'); 		# 6. Ukrainian Language
-- CALL cLesson(10, 16, 6, 2, 7, '2013-09-04 14:20:00'); 		# 7. Ukrainian Literature
-- 
-- # CREATE LESSONS FOR 12.09.2013 (THURSDAY)
-- CALL cLesson(9, 15, 6, 2, 1, '2013-09-05 09:00:00'); 		# 1. Ukrainian Language
-- CALL cLesson(7, 1, 4, 5, 2, '2013-09-05 09:50:00'); 		# 2. English Language
-- CALL cLesson(1, 5, 1, 16, 3, '2013-09-05 10:45:00'); 		# 3. Russian Language
-- CALL cLesson(2, 9, 1, 18, 4, '2013-09-05 11:45:00'); 		# 4. World Literature
-- CALL cLesson(5, 6, 3, 10, 5, '2013-09-05 12:40:00'); 		# 5. Ukraine History
-- CALL cLesson(5, 6, 3, 15, 6, '2013-09-05 13:30:00'); 		# 6. World History
-- CALL cLesson(7, 1, 4, 4, 7, '2013-09-05 14:20:00'); 		# 7. English Language
-- 
-- # CREATE LESSONS FOR 13.09.2013 (FRIDAY)
-- CALL cLesson(15, 11, 11, 6, 1, '2013-09-06 09:00:00');		# 1. French Language
-- CALL cLesson(3, 2, 2, 7, 2, '2013-09-06 09:50:00'); 		# 2. Algebra
-- CALL cLesson(12, 10, 8, 24, 3, '2013-09-06 10:45:00'); 		# 3. Physical Culture
-- CALL cLesson(8, 14, 5, 9, 4, '2013-09-06 11:45:00'); 		# 4. Physics
-- CALL cLesson(9, 15, 6, 1, 5, '2013-09-06 12:40:00'); 		# 5. Ukrainian Language
-- CALL cLesson(10, 16, 6, 2, 6, '2013-09-06 13:30:00'); 		# 6. Ukrainian Literature


# ###########################
# END CREATE LESSONS
# ###########################

# CREATE MATERIALS
# MATERIALS FOR TEACHERS OF 11 CLASSES
# CALL cMaterialTeacher(name, idTeacher, idSubject, state, notstudy, prefix);
CALL cMaterialTeacher(NULL, 1, 5, 1, 1, NULL);      # id1
CALL cMaterialTeacher(NULL, 1, 9, 1, 1, NULL);      # id2
CALL cMaterialTeacher(NULL, 2, 2, 1, 1, NULL);      # id3
CALL cMaterialTeacher(NULL, 2, 3, 1, 1, NULL);      # id4
CALL cMaterialTeacher(NULL, 3, 6, 1, 1, NULL);      # id5
CALL cMaterialTeacher(NULL, 3, 7, 1, 1, NULL);      # id6
CALL cMaterialTeacher(NULL, 4, 1, 1, 1, NULL);      # id7
CALL cMaterialTeacher(NULL, 5, 14, 1, 1, NULL);     # id8
CALL cMaterialTeacher(NULL, 6, 15, 1, 1, NULL);     # id9
CALL cMaterialTeacher(NULL, 6, 16, 1, 1, NULL);     # id10
CALL cMaterialTeacher(NULL, 7, 8, 1, 1, NULL);      # id11
CALL cMaterialTeacher(NULL, 8, 10, 1, 1, NULL);     # id12
CALL cMaterialTeacher(NULL, 9, 4, 1, 1, NULL);      # id13
CALL cMaterialTeacher(NULL, 9, 18, 1, 1, NULL);     # id14
CALL cMaterialTeacher(NULL, 10, 12, 1, 1, NULL);    # id15
CALL cMaterialTeacher(NULL, 11, 11, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 12, 17, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 13, 13, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 14, 1, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 15, 15, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 15, 16, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 16, 5, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 16, 9, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 17, 1, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 18, 11, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 19, 14, 1, 1, NULL);
CALL cMaterialTeacher(NULL, 2, 20, 1, 1, NULL);      # id1
CALL cMaterialTeacher(NULL, 2, 21, 1, 1, NULL);      # id1

# END CREATE MATERIALS
# ##############################################
# CREATE SECTION
# ##############################################

# CALL cSection (name, number, idsubject);

# CREATE SECTIONS FOR RUSSIAN LANGUAGE 11 LEVEL
CALL cSection('Язык как развивающееся явление', 1, 5);                                                                                          # id1
CALL cSection('Словосочетание как синтаксическая единица.', 2, 5);                                                                              # id2
CALL cSection('Структура и виды словосочетаний по типу подчинительной связи', 3, 5);                                                            # id3
CALL cSection('Словосочетание, различающиеся формой зависимого слова в русском и украинском языка. Проверочный диктант', 4, 5);                 # id4
CALL cSection('Предложение и его основные признаки. Р.Р. Контрольное чтение(молча) текста публицистического стиля', 5, 5);                      # id5
CALL cSection('Простое и сложное предложения. Порядок слов в предложений. Р.Р. Конструирование простых и сложных предложений', 6, 5);           # id6
CALL cSection('Актуальное членение предложения. Логическое ударение. Р.Р. Контрольный устный пересказ текста публицистического стиля', 7, 5);   # id7
CALL cSection('Текстообразующая роль простых предложений', 8, 5);                                                                               # id8
CALL cSection('Обобщение изученного по теме "Словосочетание и предложение". Тренировочные упражнения', 9, 5);                                   # id9
CALL cSection('Двусоставные предложения. Подлежащее и сказуемое как главные члены предложения', 10, 5);                                         # id10
CALL cSection('Простое(глагольное) сказуемое. Составное(именное и глагольное) сказуемое', 11, 5);                                               # id11
# ......

# CREATE SECTIONS FOR ALGEBRA 11 LEVEL
CALL cSection('Повторение', 1, 2);                                                                                                              # id12
CALL cSection('Тригонометрические функции', 2, 2);                                                                                              # id13
CALL cSection('Производная и ее геометрический смысл', 3, 2);                                                                                   # id14
CALL cSection('Применение производной к исследованию функции', 4, 2);                                                                           # id15
CALL cSection('Интеграл', 5, 2);                                                                                                                # id16
CALL cSection('Комбинаторика', 6, 2);                                                                                                           # id17
# ......

# CREATE SECTIONS FOR GEOMETRY 11 LEVEL
CALL cSection('Многогранники', 1, 3);                                                                                                           # id18
CALL cSection('Тела и поверхности вращения', 2, 3);                                                                                             # id19
CALL cSection('Объемы тел и площади их поверхностей', 3, 3);                                                                                    # id20
CALL cSection('Координаты и векторы', 4, 3);                                                                                                    # id21
CALL cSection('Объемы тел', 5, 3);                                                                                                              # id22
CALL cSection('Итоговое повторение', 6, 3);                                                                                                     # id23

# CREATE SECTIONS FOR GEOGRAPHY 11 LEVEL
CALL cSection('Зарубежная Европа', 1, 4);# id24
CALL cSection('Зарубежная Азия', 2, 4);# id25
CALL cSection('Африка', 3, 4);# id26
CALL cSection('Северная Америка', 4, 4);# id27
CALL cSection('Латинская Америка', 5, 4);# id28
CALL cSection('Украина в современном мире', 6, 4); # id29
CALL cSection('Глобальные  проблемы человечества (обобщение знаний)', 7, 4); # id30

# CREATE SECTIONS FOR GEOGRAPHY 11 LEVEL
CALL cSection('Hello! Nice to See You Again!', 1, 1);
CALL cSection('We Are Going  to Travel', 2, 1);
CALL cSection('Learniпg More about Each Other', 3, 1);
CALL cSection('Learning  More about London', 4, 1);

# CREATE SECTIONS FOR HISTORY OF UKRAINE
CALL cSection('Древняя история Украины. Киевская Русь и Галицко-Волынское княжество (с древнейших времен до сер. XIV века)', 1, 6);
CALL cSection('Украинские земли в период литовско-польского господства. Эпоха казацко-гетманского государства (втор. пол. XIV века – XVII век)', 2, 6);
CALL cSection('Украина под властью иностранных государств в ХVIII – начале ХХ вв', 3, 6);
CALL cSection('Украина в советское время (1917–1991 гг.)', 4, 6);
CALL cSection('Украинское государство и общество в условиях независимости (90-е годы ХХ века – начало XXI века).', 5, 6);

# CREATE SECTIONS FOR WORLD HISTORY
CALL cSection('Введение. История XX в. (1 ч.)', 1, 7);
CALL cSection('Модели модернизации в XX в', 2, 7);
CALL cSection('Первая мировая война', 3, 7);
CALL cSection('Изменение социальной структуры индустриального общества', 4, 7);
CALL cSection('Вторая мировая война', 5, 7);
CALL cSection('Восточная Европа во второй половине XX в.', 6, 7);
CALL cSection('Новые проблемы развития мировой цивилизации на рубеже XX-XXI вв.', 7, 7);

# CREATE SECTIONS FOR PHYSICS 11 LEVEL
CALL cSection('Электромагнитная индукция', 1, 14);
CALL cSection('Электромагнитные колебания', 2, 14);
CALL cSection('Электромагнитные волны', 3, 14);
CALL cSection('Элементы теории относительности', 4, 14);
CALL cSection('Световые кванты', 5, 14);
CALL cSection('Атом и атомное ядро', 6, 14);
# ....

# CREATE SECTIONS FOR INFORMATICS 11 LEVEL
CALL cSection('Компьютер как средство автоматизации информационных процессов', 1, 8);
CALL cSection('Моделирование и формализация', 2, 8);
CALL cSection('Базы данных. Системы управления базами данных (СУБД)', 3, 8);
CALL cSection('Элементы Информационное общество', 4, 8);
CALL cSection('Повторение', 5, 8);

# CREATE SECTIONS FOR WORLD LITERATURE 11 LEVEL
CALL cSection('Литература начала XX века', 1, 9);
CALL cSection('Литература Серебряного века', 2, 9);
CALL cSection('Литература 30 годов XX века', 3, 9);
CALL cSection('Литература периода ВОВ', 4, 9);
CALL cSection('Литература 50—90-х годов', 5, 9);
CALL cSection('Из литературы народов мира', 5, 9);
CALL cSection('Литература конца 19 начала 20 века', 5, 9);

# CREATE SECTIONS FOR BIOLOGY 11 LEVEL
CALL cSection('Введение', 1, 13);
CALL cSection('Клетка – единица живого', 2, 13);
CALL cSection('Размножение и развитие организмов', 3, 13);
CALL cSection('Основы генетики и селекции', 4, 13);

# CREATE SECTIONS FOR ECONOMICS 11 LEVEL
CALL cSection('Валовой внутренний продукт и национальный доход', 1, 18);
CALL cSection('Макроэкономическое равновесие', 2, 18);
CALL cSection('Экономический цикл. Занятость и безработица', 3, 18);
CALL cSection('Экономический рост', 4, 18);
CALL cSection('Экономика и государство', 4, 18);
CALL cSection('Международная торговля и валютный рынок', 4, 18);

# CREATE SECTIONS FOR UKRAINIAN LANGUAGE 11 LEVEL
CALL cSection('Культура мовлення і спілкування', 1, 18);
CALL cSection('Види мовленнєвої діяльності', 2, 18);
CALL cSection('Поглиблення і систематизація найважливіших відомостей з орфоепії, фонетики, лексикології, фразеології, будови слова, словотвору, морфології, стилістики', 3, 18);
CALL cSection('Орфографічно-пунктуаційний практикум', 4, 18);
CALL cSection('Повторення в кінці року', 4, 18);
# ....
# END OF CREATE SECTIONS

# ##############################################
# CREATE PARAGRAPHS
# #############################################

# CREATE PARAGRAPHS FOR MATERIAL#1 (RUSSIAN LEVEL 11)
	# SECTION 1
CALL cParagraphInSection(1, 'Введение', 1, 1);
CALL cParagraphInSection(2, 'Важность языка в развитии человека', 1, 1);
	# SECTION 2
CALL cParagraphInSection (3, 'Словосочетание как синтаксическая единица', 1, 2);
CALL cParagraphInSection (4, 'Главное и зависимое слово в словосочетании', 1, 2);
	# SECTION 3
CALL cParagraphInSection (5, 'Структура и виды словосочетаний по типу подчинительной связи', 1, 3);
	# SECTION 4
CALL cParagraphInSection (6, 'Словосочетание в русском языке', 1, 4);
CALL cParagraphInSection (7, 'Словосочетание в украинском языке', 1, 4);
	# SECTION 5
CALL cParagraphInSection (8, 'Предложение и его основные признаки', 1, 5);
	# SECTION 6
CALL cParagraphInSection (9, 'Простое предложение', 1, 6);
CALL cParagraphInSection (10, 'Сложное предложение', 1, 6);
CALL cParagraphInSection (11, 'Порядок слов в предложении', 1, 6);

# CREATE PARAGRAPHS FOR MATERIAL#2 (WORLD LITERATURE LEVEL 11)
        # SECTION 5

# CREATE PARAGRAPHS FOR MATERIAL#3 (ALGEBRA LEVEL 11)
	# SECTION 12
CALL cParagraphInSection(1, 'Действительные числа', 3, 12);
CALL cParagraphInSection(2, 'Степенная функция', 3, 12);
CALL cParagraphInSection(3, 'Показательная функция', 3, 12);
CALL cParagraphInSection(4, 'Логарифмическая функция', 3, 12);
CALL cParagraphInSection(5, 'Тригонометрические формулы', 3, 12);
        # SECTION 13
CALL cParagraphInSection(6, 'Область определения и множество значений тригонометрических функций', 3, 13);
CALL cParagraphInSection(7, 'Четность, нечетность тригонометрических функций', 3, 13);
CALL cParagraphInSection(8, 'Свойства функций и их графики', 3, 13);
CALL cParagraphInSection(9, 'Обратные тригонометрические функции', 3, 13);
        # SECTION 14
CALL cParagraphInSection(10, 'Производная степенной функции', 3, 14);
CALL cParagraphInSection(11, 'Правила дифференцирования', 3, 14);
CALL cParagraphInSection(12, 'Производные некоторых элементарных функций', 3, 14);
CALL cParagraphInSection(13, 'Геометрический смысл производной', 3, 14);
        # SECTION 15
CALL cParagraphInSection(14, 'Возрастание и убывание функции', 3, 15);
CALL cParagraphInSection(15, 'Экстремумы функции', 3, 15);
CALL cParagraphInSection(16, 'Наибольшее и наименьшее значения функции', 3, 15);
CALL cParagraphInSection(17, 'Выпуклость графика функции. Точки перегиба', 3, 15);
        # SECTION 16
CALL cParagraphInSection(18, 'Первообразная', 3, 16);
CALL cParagraphInSection(19, 'Правила нахождения первообразных', 3, 16);
CALL cParagraphInSection(20, 'Площадь криволинейной трапеции и интеграл', 3, 16);
        # SECTION 17
CALL cParagraphInSection(21, 'Перестановки, размещения, сочетания и их свойства', 3, 17);
CALL cParagraphInSection(22, 'Бином Ньютона', 3, 17);
CALL cParagraphInSection(23, 'Комбинации событий. Противоположное событие. Вероятность события', 3, 17);
CALL cParagraphInSection(24, 'Сложение вероятностей. Независимые события', 3, 17);
CALL cParagraphInSection(25, 'Случайные величины', 3, 17);

# CREATE PARAGRAPHS FOR MATERIAL#4 (GEOMETRY LEVEL 11)
	# SECTION 18
CALL cParagraphInSection(1, 'Вершины, ребра, грани многогранника', 4, 18);
CALL cParagraphInSection(2, 'Многогранные углы. Выпуклые многогранники', 4, 18);
CALL cParagraphInSection(3, 'Призма', 4, 18);
CALL cParagraphInSection(4, 'Параллелепипед', 4, 18);
CALL cParagraphInSection(5, 'Куб', 4, 18);
CALL cParagraphInSection(6, 'Пирамида', 4, 18);
	# SECTION 19
CALL cParagraphInSection(7, 'Цилиндр', 4, 19);
CALL cParagraphInSection(8, 'Конус', 4, 19);
CALL cParagraphInSection(9, 'Шар и сфера', 4, 19);
CALL cParagraphInSection(10, 'Сечения', 4, 19);
	# SECTION 20
CALL cParagraphInSection (11, 'Понятие об объеме тела', 4, 20);
CALL cParagraphInSection (12, 'Формулы объема куба, прямоугольного параллелепипеда, призмы, цилиндра', 4, 20);
CALL cParagraphInSection (13, 'Формулы объема пирамиды и конуса', 4, 20);
CALL cParagraphInSection (14, 'Формулы объема шара и площади сферы', 4, 20);
	# SECTION 21
CALL cParagraphInSection (15, 'Декартовы координаты в пространстве', 4, 21);
CALL cParagraphInSection (16, 'Формула расстояния между двумя точками.  Формула расстояния от точки до плоскости', 4, 21);
CALL cParagraphInSection (17, 'Скалярное произведение векторов. Коллинеарные векторы.', 4, 21);
CALL cParagraphInSection (18, 'Компланарные векторы', 4, 21);


CALL cParagraphInSection(1, 'Искусство войны', 2, 59);
# END CREATE PARAGRAPHS

# #################################
# CREATE PARTPARAGRAPHS
# #################################

# CREATE PARTPARAGRAPHS FOR PARAGRAPHS IN MATERIAL #1 (RUSSIAN LEVEL 11)
CALL cPartparagraph(1,'12', 'В этом материале собраны самые лучшие упражнения и теория по русскому языку...', 1);
CALL cPartparagraph(1,'Прочитайте', 'усский язык - это язык великого русского народаю На нем русские люди общаются в быту, развивают свою культуру, науку и литературу, для русского человека он - родной язык', 2);
CALL cPartparagraph(2,'Составьте опорный конспект', 'Распространение русского языка в странах Европы и Азии идёт с XI века по восходящей линии и прошло несколько этапов. Практическое изучение разговорного русского языка в XIV - XVII вв. определялось нуждами торговли и дипломатии', 2);

CALL cPartparagraph(1, '12', 'Словосочетние - это соединение двух или нескольких нескольких знаменательных слов, связанных по смыслу и грамматически, служащее для расчленённого обозначения единого понятия (предмета, ка­чества, действия и др.).
Словосочетание рассматривается как единица синтаксиса, которая выполняет коммуникативную функцию (входит в речь) только в составе предложения.
Общепризнанно, что к словосочетаниям относятся соединения слов на основе подчинительной связи (связи главного и зависимого членов). Некоторые исследователи признают также сочинительные словосочетания — сочетания однородных членов предложения.
Словосочетаниями не являются:
грамматическая основа
однородные члены предложения
служебная часть речи + существительное
фразеологизм
повторы слов', 3);
CALL cPartparagraph(2, '12', 'Предикативная связь является связью между членами грамматической основы в предложении.
В подчинительном словосочетании одно слово главное, а другое — зависимое (к нему можно задать вопрос от главного слова). Существует три типа связи между словами в словосочетании:
Согласование — вид связи, при котором зависимое слово согласуется с главным в роде, числе, падеже. Главное слово всегда существительное; придаточное может являться: прилагательным, причастием, местоимением или числительным.
Примеры: красивая шляпка, об интересном рассказе, под тем же названием, седьмой класс.
Управление — вид подчинительной связи, где зависимое слово находится при главном в форме косвенного падежа.
Примеры: ненависть к врагу, крутить головой, любовь к Родине.
Примыкание — вид связи, при котором зависимость слова выражается лексически, порядком слов и интонацией, без применения служебных слов или морфологического изменения. Образуется наречиями, инфинитивами и деепричастиями, а также притяжательными местоимениями 3 лица, простой формой сравнительной степени прилагательного или наречия.
Примеры: петь красиво, лежать спокойно, очень устал, шёл не спеша, мальчик постарше.
Другое определение связи «Примыкание» — связь, которая используется в словосочетании, где главный компонент — неизменяемое слово или такая изолированная от других форм, как сравнительная степень, неопределённая форма глагола .', 3);
CALL cPartparagraph(1, '12', 'По морфологическим свойствам главного слова словосочетания классифицируются следующим образом:
Глагольные
Примеры: составить план, стоять у доски, просить зайти, читать про себя.
Именные
Субстантивные (с существительным в роли главного слова)
Примеры: план сочинения, поездка по городу, третий класс, яйца в холодильнике.
Адъективные (с прилагательным в роли главного слова)
Примеры: достойный награды, готовый на подвиг, весьма старательный, готовый помочь.
Количественные (с именем числительным в роли главного слова)
Примеры: два карандаша, второй из претендентов.
Местоименные (с местоимением в роли главного слова)
Примеры: кто-то из учеников, нечто новое.
Наречные
Примеры: крайне важно, вдали от дороги.', 4);
CALL cPartparagraph(2, '12', 'Простые словосочетания, как правило, состоят из двух знаменательных слов.
Примеры: новый дом, седоволосый человек.
Сложные словосочетания образуются на основе простых словосочетаний.
Примеры: весёлые прогулки по вечерам, отдыхать летом на юге.
Академическая классификация словосочетаний по составу — более сложна. Помимо простых и сложных словосочетаний, выделяют также: комбинированные. Основным критерием этой классификации является способ связи слов в составе словосочетания.[1]', 4);

CALL cPartparagraph(1, '12', 'Словосочетание имеет систему изменений, целиком предопределенную системой форм стержневого слова. Если стержневое слово не имеет форм изменения, то не изменяется и словосочетание (налево от угла, быстрее всех). Изменение словосочетания совпадает или с формоизменением стержневого слова (читать книгу, читаю книгу, читая книгу...; дом соседа, к дому соседа, в доме соседа...; ехать быстро, еду быстро, ехал быстро...), или с формоизменением обоих его компонентов (интересная книга, интересную книгу, интересной книгой, интересные книги, читающий народ, читающего народа...). И те и другие изменения не связаны с выявлением каких-либо частных грамматических значений словосочетания: характер отношений между словами при таких изменениях, производных от формального изменения стержневого слова, остается тем же самым.', 5);
CALL cPartparagraph(1, '12', '  Простое словосочетание образуется на основе: 1) одиночной сильной или слабой связи: согласования (новый дом, весь народ, город Москва), одиночного управления (строить дом, бояться грозы, разувериться в друзьях, сильнее смерти) или примыкания (идти пешком, шинель внакидку, очень умный, решить остаться, стоить рубль, черный с проседью, звонок из редакции); 2) двойной сильной связи (отдать книгу ученику, присвоить звание ученому, вдохновить солдат на подвиг, снабдить экспедицию снаряжением, вбить гвоздь в стену, велеть ученику читать); 3) такого соединения сильной и слабой связи, при котором слабая связь возможна только при наличии сильной связи (прострелить фуражку врагу, открыть дверь гостю; пустить прохожего ночевать, отдать часы починить). Как единый компонент словосочетания ведут себя также примыкающие нечленимые двупадежные группы; следовательно, простыми являются такие словосочетания, как повторять изо дня в день, беседовать с глазу на глаз, жить душа в душу, дорога от села до леса. Соответственно простые словосочетания могут быть двучленными, трехчленными, а в случаях типа перевезти материалы со склада в цех, перемотать нитки с клубка на катушку, перевести книгу с английского на русский (см. § 1755) - также и четырехчленными. Простое словосочетание является минимальной конструкцией, на основе которой образуются словосочетания усложненных типов.', 6);
CALL cPartparagraph(2, '12', 'Сложное словосочетание образуется на основе двух и более разных подчинительных связей, исходящих от одного главного слова, т. е. на основе совместных связей (§ 1808, 1861). Комбинации связей здесь могут быть различны; это может быть согласование и примыкание (новая квартира со всеми удобствами, веселые прогулки по вечерам, неудержимое желание странствовать), согласование и управление (долгожданный вестник победы, неожиданный приход начальника), управление и примыкание (приготовить еду к обеду, взять письмо со стола, лов рыбы зимой, толпа зевак у входа, дважды повторить просьбу), примыкание и примыкание (лежать на диване с книгой, вышивка крестом по канве, возвращение ночью домой), управление и управление (осмотр больного врачом). Сложные словосочетания способны к своим собственным дальнейшим осложнениям - при условии исхождения всех связей от одного стержневого слова: критиковать руководство за ошибки - резко критиковать руководство за ошибки - на собрании резко критиковать руководство за ошибки, вышивка крестом по канве - красивая вышивка крестом по канве, поссориться с другом из-за пустяка - вечером при посторонних неожиданно поссориться с другом из-за пустяка.', 6);
CALL cPartparagraph(1, '12', 'Деякі мовознавці також відрізняють також зв язок підрядно-сполучникового підпорядкування, наприклад, радіє, аж скаче. За внутрішньо-синтаксичними стосунками словосполучення поділяються на атрибутивні (рік жінки, третій рік), предикативні (учень читає) з предикативно-атрибутивними (хата гарна, — що від атрибутивних різняться словоладом — з прикметником нормально у постпозиції), апозиційні (місто Київ), об єктні (читати книжку) й обставинні: просторові (дім над кручею), часові (нечуваний досі) та причинові (паленіти від сорому). З уваги на наявні в дієслові категорії модальності, часу, особи й числа, а також з уваги на словолад (все це, разом з комунікативною інтонацією, характеристичне для речення, а не для словосполучення), дехто вважає предикативні й предикативноатрибутивні словосполучення сполученнями слів, а не словосполученнями (подібно й нумерально-субстантивні словосполучення з числівниками 2 — 4, — за неслушною аналогією до російської мови). За числом членів словосполучення поділяються на прості (двочленні, напр., день і ніч) й складні (три- й багаточленні, напр., висока, почорніла від старости кам яниця на розі вулиці). За лексико-семантичною структурою словосполучення поділяються на вільні (лан пшениці) й лексикалізовані, фразеологічно більш чи менш зв язані (дуля під ніс), або нерозкладні фразеологізми (точити ляси), що їх уже власне не зачислюють до С. С. досліджували Є. Родзевич («Словосочетания как строительный материал предложения», 1956), Г. Удовиченко («Словосполучення в сучасній укр. літ. мові», 1968), О. Мельничук («Сучасна укр. літ. мова. Синтаксис: Словосполучення», 1972) й інше.словосполучення!', 7);

CALL cPartparagraph(1, '12', 'Предложе́ние (в языке) — это минимальная единица языка, которая представляет собой грамматически организованное соединение слов (или слово), обладающее смысловой и интонационной законченностью.[1] С точки зрения пунктуации, предложение как законченная единица речи оформляется в конце точкой, восклицательным или вопросительным знаками — или многоточием.', 8);
CALL cPartparagraph(2, '12', 'Наукой, изучающей предложение, является синтаксис. В истории русского языка было несколько попыток определить предложение, среди них стоит отметить попытки с точки зрения логики, психологии и грамматики.
С точки зрения логики, Ф. И. Буслаев определил, что «суждение, выраженное словами, есть предложение».[2]
Д. Н. Овсянико-Куликовский, сторонник психологического подхода к определению предложения, дал следующее определение: «Предложение есть такое слово или такое упорядоченное сочетание слов, которое сопряжено с особым движением мысли, известным под именем „предицирования“ („сказуемости“)».[3]
Представитель формально-грамматического направления Ф. Ф. Фортунатов писал о предложении следующее: «Среди грамматических словосочетаний, употребляющихся в полных предложениях в речи, господствующими являются в русском языке те именно словосочетания, которые мы вправе назвать грамматическими предложениями, так как они заключают в себе, как части, грамматическое подлежащее и грамматическое сказуемое».[4]', 8);
CALL cPartparagraph(3, '12', 'Члены предложения — грамматически значимые части, на которые делится предложение при синтаксическом анализе. Они могут состоять как из отдельных слов, так и из словосочетаний. Выделяют два главных члена предложения: подлежащее и сказуемое, которые находятся в предикативном отношении, образуя предикативную единицу, и играют наиболее важную роль. К второстепенным членам предложения относятся дополнение, обстоятельство, определение.
Составом подлежащего называется подлежащее и все второстепенные члены предложения, которые относятся к подлежащему (распространённые и нераспространённые определения).
Аналогично, составом сказуемого называется сказуемое и все второстепенные члены предложения, которые относятся к сказуемому (обстоятельства и дополнения с зависимыми словами).
Например: Красивая незнакомка в поезде подарила ему загадочную улыбку. Красивая — определение, незнакомка — подлежащее, в поезде — обстоятельство, подарила — сказуемое, улыбку — дополнение, ему — косвенное дополнение.', 8);
CALL cPartparagraph(1, '12', 'Простое предложение – это синтаксическая единица, образованная одной синтаксической связью между подлежащим и сказуемым или одним главным членом.

Двусоставное предложение – это простое предложение с подлежащим и сказуемым как необходимыми компонентами: Они засмеялись. Он был умён. Туча – чёрная, тяжёлых очертаний.

Односоставное предложение – это простое предложение, в котором есть только один главный член (с зависимыми словами или без них). Односоставные предложения бывают:

Неопределенно-личное: Меня вызвали к директору.
Обобщенно-личное: Без труда не вытащишь и рыбку из пруда.
Безличное: На улице стемнело.
Определенно-личное: Сижу и рисую.
Инфинитивное: Молчать! Вам уже ехать.
Назывное: Ночь. Улица. Фонарь. Аптека.
Неполное предложение – это предложение, в котором отсутствует один или несколько членов (главных или второстепенных), на которые указывает контекст или ситуация: Правда остаётся правдой, а молва – молвой. Мы разговорились, как будто век были знакомы. Вы, наверное, знаете о нашей работе? И обо мне? Я надену вот это синее.', 9);
CALL cPartparagraph(2, '12', 'Простое предложение – это такое предложение, в котором имеется одна грамматическая основа. Она может состоять из двух главных членов – подлежащего и сказуемого, например: С чего начинается Родина?, или из одного – подлежащего, например: Зима. Кругом лежит снег; сказуемого, например: Вечереет. Небо на западе порозовело.
К подлежащему и сказуемому могут относиться зависимые слова – второстепенные члены. Подлежащее вместе с зависимыми словами образует состав подлежащего, например: Задремали звёзды золотые.
Сказуемое вместе с зависимыми словами образует состав сказуемого, например: Листья в поле пожелтели.', 9);
CALL cPartparagraph(1, '12', 'В лингвистике были выдвинуты две основные концепции сущности сложного предложения.[1]
Согласно первой из них (восходящей к трудам А. М. Пешковского и А. А. Шахматова) сложное предложение понимается как соединение, сочетание, сцепление предложений, каждое из которых сохраняет свою смысловую и структурную самостоятельность. Считая, что простое предложение, входящее в состав сложного, не утрачивает своих существенных признаков, сторонники данной точки зрения приходят, в частности, к отрицанию существования сложносочинённого предложения как синтаксической единицы.[2]
Согласно второй концепции сущности сложного предложения (обоснованной в трудах В. А. Богородицкого, H. С. Поспелова, В. В. Виноградова) его компоненты, составляя единую синтаксическую единицу, теряют свою самостоятельность. Эта точка зрения получила наибольшее распространение. Однако перед её сторонниками встаёт вопрос о том, в чём состоит отличие сложного предложения от простого. По этому вопросу между лингвистами наметились определённые разногласия.
Ряд авторов[3] полагает, что сложное предложение представляет собой объединение предикативных единиц на основе синтаксической связи, построенное по той или иной структурной схеме и предназначенное для функционирования в качестве единого коммуникативного целого. Компоненты сложного предложения при этом обладают формальной и смысловой организацией, свойственной простым предложениям, но лишены коммуникативной самостоятельности. Иную позицию занимает по данному вопросу другие авторы, считая, что для того, чтобы создать сложное предложение, его компоненты не просто должны быть лишены коммуникативной самостоятельности, но должны отличаться от соответствующих простых независимых предложений по структуре и по функции.[4]
Третьи полагают, что простые предложения становятся компонентами сложного предложения, претерпевая определённые изменения под влиянием синтаксической связи, однако компоненты сложного предложения характеризуются различной степенью подобия простым предложениям. Одни могут отличаться и по структуре, и по функциям, других может отличать только отсутствие коммуникативной самостоятельности.[5]', 10);
CALL cPartparagraph(1, '12', 'Взаимное расположение членов предложения, имеющее синтаксическое, смысловое и стилистическое значение. Первое выражается в том, что с местом, занимаемым членом предложения, может быть связана его синтаксическая функция. Так, в предложении Солнечный день прилагательное солнечный выступает в функции определения при слове день — главном члене номинативного предложения; при другом порядке слов (День солнечный) то же прилагательное играет роль сказуемого в двусоставном предложении. В предложениях типа Мать любит дочь с омонимичными формами именительного и винительного падежей синтаксическая роль обоих существительных определяется их местом в предложении: при прямом порядке слов (см. ниже) на первом месте стоит подлежащее, на втором — прямое дополнение. В предложении Вольной брат вернулся прилагательное больной занимает позицию согласованного определения, а в предложении Брат вернулся больной — позицию именной части составного сказуемого. В предложениях тождества типа Москва — столица СССР на первом месте находится подлежащее, на втором — сказуемое; при другом порядке слов (Столица СССР —Москва) прежнее сказуемое становится подлежащим, а прежнее подлежащее — сказуемым.
Грамматико-семантическое значение порядка слов находит свое выражение, например, в сочетаниях количественного числительного с именем существительным. В предложении На собрании присутствовало пятьдесят человек препозитивное количественное числительное указывает на точное число лиц; в предложении На заседании присутствовало человек пятьдесят постпозитивное числительное указывает на приблизительное количество лиц (с перестановкой слов создается так называемая категория приблизительности).
Стилистическая функция порядка слов выражается в том, что член предложения, оказавшийся на необычном для него месте, получает добавочную смысловую и экспрессивную нагрузку (см. инверсия). Порядок слов прямой. Наиболее обычное для данного типа предложений (повествовательных вопросительных, побудительных) расположение соотносительных членов предложения.', 11);
CALL cPartparagraph(2, '12', '1) В повествовательных предложениях подлежащее обычно предшествует сказуемому. Герасим сидел на тумбочке (Тургенев). Ни один из них не хотел нанести первый удар (Куприн). Ставится после сказуемого;
а) подлежащее, обозначающее отрезок времени или явление природы, если сказуемое-глагол имеет значение бытия, становления, протекания действия. Прошло два дня (Гончаров). Пришла весна (Л. Толстой). Была грустная августовская ночь (Чехов);
б) подлежащее в авторских ремарках, включаемых в драматические произведения. Уходят все, кроме Ани и Дуняши (Чехов);
в) подлежащее в авторских словах, стоящих после прямой речи или в середине ее. “Прошу вас ближе к делу”,— сказал председатель громко и внятно (Горький). “Лодка есть,— отвечал он глухим и разбитым аолрсом,— да больно плохо” (Тургенев);
г) подлежащее в предложениях из текстов описательного характера. Поёт море, гудит город, ярко сверкает солнце, творя сказки (Горький). В вопросительных предложениях сказуемое часто ставится перед подлежащим. Понятен вам мой ужас? (Горький). В побудительных предложениях местоимения-подлежащие, предшествующие глаголу-сказуемому, усиливают категоричность высказывания; следуя за подлежащим, они смягчают тон приказания. Ты сходи, проверь документы (Кетлинская). Не пой,красавица, при мне ты песен Грузии печальной (Пушкин).
2) Дополнение обычно стоит после управляющего слова. Сбросив шинель, он взял из-под воза ломик, позвал парней (Бабаевский). Оленин ждал решения своей участи (Л. Толстой). В безличных предложениях дополнение со значением лица, подвергающегося действию или испытывающего состояние, обычно препозитивно. Меня влекло на Волгу, к музыке трудовой жизни (Горький). У всех накипело (А. Н. Толстой).
При наличии нескольких дополнений дополнение, выраженное дательным падежом лица, обычно предшествует дополнению, выраженному винительным падежом объекта. Мать партизана гостеприимно открыла бойцам дверь своей хаты (Казакевич).
3) Согласованное определение обычно предшествует определяемому существительному. Старый инвалид, сидя на столе, нашивал синюю заплату на локоть зеленого мундира (Пушкин). При наличии нескольких неоднородных определений, выраженных качественными и относительными прилагательными, ближе к определяемому существительному ставится определение, выраженное относительным прилагательным, как обозначающее более существенный или постоянный признак. Яркое зимнее солнце заглянуло в наши окна (Аксаков) .Снежные сугробы подернулись тонкой ледяной корой (Чехов). Если определения выражены одними качественными или одними относительными прилагательными, то ближе к определяемому слову ставится определение, указывающее на более устойчивый, более общий признак. Легкий сдержанный шепот разбудил меня (Тургенев). Громкий хохот оглашал снежные окрестные поля (Аксаков). Когда последний медный звук замер, дикая музыка труда уже звучала тише (Горький). При сочетании согласованных и несогласованных определений первые обычно предшествуют вторым. Незнакомка была в умело сшитом темном, хорошей шерсти костюме (Б. Полевой). Несогласованное определение обычно ставится после определяемого существительного. Горе разлуки раздирало их сердца (Фадеев). Началась самая бешеная скачка вперегонку (Мамин-Сибиряк). Что ни лошадь серой масти — сердце дрогнет и замрёт (Твардовский). Особый характер носят устойчивые обороты с препозитивным несогласованным определением; часовых дел мастер, добрейшей души человек, гвардии старший лейтенант и т. п.', 11);
CALL cPartparagraph(1,'12', 'В этом материале собраны самые лучшие упражнения и теория по русскому языку...', 17);

CALL cPartparagraph(1,'Создание', 'Традиционно авторство приписывается легендарному военачальнику и стратегу Сунь Цзы 
(VI—V века до н. э.). Трактат, соответственно, долгое время датировался концом VI — началом V века до н. э. (514—495, возможно, 510). 
Найденный в 1972 году в захоронении начала эпохи Хань (206 год до н. э. — VIII век н. э.) новый расширенный вариант Сунь-цзы даёт 
основания датировать его создание второй половиной V века до н. э. (453—403). Однако, результаты ряда исследований, проведённых за 
последние 30 лет как китайскими, так и западными учёными указывают на то, что трактат скорее всего был составлен реальным историческим 
лицом, полководцем Сунь Бинем, жившим в Царстве Ци в IV веке до н. э. (приблизительно 380—325 годы до н. э.) в период Сражающихся царств.[6]
Современный канонический текст был сформирован на рубеже II—III веков н. э., базовым является его официальное издание XI в. со сводным комментарием
 10 авторов II—XI веков, связанное с введением военного Семикнижия в систему государственных экзаменов.', 55);
CALL cPartparagraph(2,'Концепции', 'Общая идеология Сунь-цзы совмещает в себе конфуцианские устои поддержания 
социального гомеостазиса с даосской диалектикой вселенского Дао, космическим циклизмом школы инь-ян, легистской «политологией» и 
управленческим прагматизмом моистов. Этот синтез, представляющий войну (бин), с одной стороны, как «великое дело государства», 
«почву жизни и смерть, путь (дао) существования и гибели», а с другой — как «путь обмана», обобщён в 5 принципах:
«пути» (единодушия народа и верхов),
«неба» (соответствия времени),
«земли» (соответствия месту),
«полководца» (правильного руководства, в частности характеризующегося благонадежностью — синь и гуманностью — жэнь),
«закона» (организованности и дисциплинированности).
Данные принципы должны быть реализуемы посредством 7 «расчётов»:
наличия у правителя дао,
наличия у полководца способностей,
постижения особенностей неба и земли,
осуществимости законов и приказов,
силы войска,
обученности командиров и солдат,
ясности наград и наказаний.
В дальнейшем эта диалектика верности и обмана, силы и слабости, воинственности и миролюбия стала одной из основных методологем 
традиционной китайской культуры, искусства стратагем.
Война у Сунь Цзы рассматривается как органическое целое, начиная с дипломатии и мобилизации, и заканчивая шпионажем. Никогда нельзя забывать о цели войны 
— сделать так, чтобы население процветало и было лояльным к правителю.
Идеальная победа — подчинение других государств дипломатическими методами, без вступления в военные действия. Поэтому необходимо вести активную 
дипломатию, разрушать союзы противника и ломать его стратегию.
Сунь Цзы постоянно подчёркивает, что военные действия это дорогое занятие, приносящее убыток государству и бедствия народу. Поэтому война должна быть 
быстрой, эффективной и мобильной. Затягивать войну негуманно по отношению к народу.
В основе концепции Сунь Цзы лежит управление врагом, создающее возможности лёгкой победы. Надо заманивать врага в ловушки и избегать
 столкновения с подготовленными силами противника. Необходимо неравновесное распределение сил, стратегическая концентрация.
Необходимо собирать информацию о местности и действиях противника, и при этом скрывать свои действия. Любая оплата деятельности шпионов
 обойдётся дешевле, чем содержание армии. Поэтому нельзя жалеть денег на шпионаж и подкуп.
Сунь Цзы неоднократно подчёркивает необходимость дисциплины в войсках и поддержания духа (ци). Необходимо создавать ситуации, 
в которых дух войска крепнет, и избегать таких, где армия теряет волю.', 55);
CALL cPartparagraph(3,'Лейтмотив', 'Сунь Цзы считал войну необходимым злом, которое следует избегать, как только возможно. Он отмечает, что «война — это как огонь, люди не сложат оружия погибнут от собственной же оружия»[7].Войну следует вести быстро во избежание экономических потерь: «Ни одна долгая война не принесла прибыли стране: 100 побед в 100 сражениях — это просто смешно. Каждый, кто отличился уничтожением врагов, получал победу еще до того, как вражеская угроза становилась реальной.» Согласно книге, следует избегать резни и зверств потому, что это может спровоцировать сопротивление и может дать противнику возможность обратить войну в свою пользу.[8].
Сунь Цзы отмечал позиционирование в военной стратегии. Решение о выборе определенной позиции для армии должно базироваться на двух объективных условиях — физическая обстановка и субъективные убеждения других оппозиционных противоборствующих игроков в этой обстановке. Он считал, что стратегия — это не планирование в смысле работы по разработанному списку задач, но скорее это то, что требует быстрой и адекватной реакции на условия, которые изменяются. Планирование работает в контролируемых обстоятельствах, но в меняющихся обстоятельствах планы оппонентов входят в соприкосновение, что создает неожиданные ситуации.', 55);
CALL cPartparagraph(4,'Традиционная точка зрения', 'Дoлго считалось, что «Искусство войны» является дpевнейшим и наиболее глубоким военным трактатом Китая, а все остальные книги в лучшем случае второразрядными. Трaдиционалисты приписывали книгу историческому персонажу Сунь У, активная деятельность которого в конце VI в. до н. э., начина с 512 г. до н. э., зафиксирована в «Ши цзи» и в «Вёснах и Осенях У и Юэ». Согласно им, книга должна датироваться этим временем и содержать теории и военные концепции самого Сунь У. Однакo, другие ученые, во-первых, определили многочисленные исторические анахронизмы в сохранившемся тексте, как-то: термины, события, технологии и философские понятия; во-вторых, подчеркивали отсутствие каких-либо свидетельств (которые должны были быть в «Цзо чжуань» — классической летописи политических событий того времени), подтверждающих стратегическую роль Сунь У в войнах между У и Юэ; и, в-третьих, обращали внимание на расхождение концепции крупномасштабной войны, обсуждаемой в «Искусстве войны», с одной стороны, и, с другой, запомнившимся лишь в виде атавизма сражения конца VI в. до н. э.
Традиционная интeрпретация видит существенное доказательство своей правоты в том, что многочисленные пассажи из «Искусства войны» можно встретить во многих других военных трактатах, что, и это доказано, не могло бы иметь место, не будь текст более ранним. Считается даже, что такое повальное подражание означает, что «Искусство войны» — самый рaнний военный трактат, ценившийся выше любой другой работы, устной или письменной. Появление некоторых аналитических концепций, таких, как классификация местностей, тоже связывается с Суньцзы; далее, их использование составителями «Сыма фа» считается бесспорным доказательством исторической первичности «Суньцзы», а возможность того, что сам Суньцзы исходил из других работ, не принимается во внимание.[11]', 55);
CALL cPartparagraph(5,'Исторические комментарии', 'Перед тем как версию бамбукового свитка обнаружили археологи в апреле 1972 года, общеупотребительную версию Искусства войны комментировали к стратегии Сунь Цзы написанной Цао Цао, основателем королевства Вэй.[12] В предисловии он написал, что предыдущие комментарии не были сфокусированы на идеях, которые являются самой сутью книги.
После изобретения печатного станка Искусство войны (с комментариями Цао Цао) было напечатано в военном учебнике вместе с шестью другими книгами по стратегии, которые вместе известны как Семь классических военных произведений (武經七書/武经七书). Сегодня существует более 30 версий книги с разными комментариями поскольку она была обязательным материалом в военных учебниках времен династии Сун.
Книга Суй перечисляет семь книг, в которых автором указан Сунь Цзы. Комментарий Ду Му также включает в себя коментарий Цао Цао. Искусство войны Ли Джинга позиционируется как просмотр стратегий учителя Суня. Комментарии Цао Цао, Ду Му и Ли Квана были переведены на тангутский язык еще до 1040 года. Другими комментариями, которые упоминаются официйнмы летописям является Военные стратегии Сунь Цзы автора Шен Ю (176—204), копии военных стратегий Сунь Цзы автора долин Ксу и Военные стратегии Сунь Цзы авторов Цао Цао и Ван Линя.', 55);
CALL cPartparagraph(6,'Военное применение и применение разведчиками','Во многих восточноазиатских странах «Искусство войны» было частью экзаменационной программы для потенциальных кандидатов на военную службу. Существует много переводов.
В течение периода Сэнгоку в Японии дайме по имени Такэда Сингэн (1521—1573) говорят стал почти непобедимым во всех битвах не полагаясь на огнестрельное оружие поскольку он изучал «Искусство войны».[13] Книга также вдохновила его на его известный боевой штандарт (флаг, хоругвь) «Фу:ринкадзан (яп.)» (Ветер, лес, огонь и гора), что означает быстрый как ветер, тихий как лес, безжалостный как огонь и неподвижный как гора.
Переводчик Самюэль Гриффит продает главу книги «Сунь Цзы и Мао Цзэдун», где упоминается, что «Искусство войны» повлияло на произведения Мао «О партизанской войне», «О затяжной войне» и «Стратегические проблемы китайской революционной войны» и включает цитату Мао: "Мы не должны недооценивать высказывания в книге Сунь Ву Цзы, великого военного эксперта древнего Китая, «Знай своего врага и знай себя и ты сможешь провести тысячу битв без поражений».[13] В течение Вьетнамской войны некоторые офицеры Вьетконга изучали «Искусство войны», и, говорят, могли цитировать наизусть целые разделы книги.
Генерал Во Нгуен Зиап успешно применял тактику, которая описана в «Искусстве войны», во время битве при Дьенбьенфу, которая закончила французское господство в Индокитае и привела к договору, который разделил Вьетнам на северный и южный. Генерал Во Нгуен Зиап, в дальнейшем военный организатор, который стоял за победами над американской армией во Вьетнаме, старательно изучал и применял идеи Сунь Цзы. Американское поражение в той войне более чем что-либо другое привлекло внимание лидеров американской военной теории к Сунь Цзы.[14][15][16] Финский полевой маршал Маннергейм и генерал Аксель Аиро были страстным читателями «Искусства войны». Они оба читали эту книгу на французском языке, Аиро держал французский перевод книги на ночном столике в своем штабе.
Министерство армии США через свой ​​колледж командного и генеральского состава указывало всем подразделениям содержать библиотеки при соответствующих штабах для продолжения изучения личным составом «Искусства войны». «Искусство войны» отмечается как пример работ, которые должны быть в каждой отдельной части, а офицеры-особисты по результатам прочтения обязаны готовить краткие справки для презентаций для других офицеров.[17]',55);

# CREATE PARTPARAGRAPHS FOR PARAGRAPH #13
CALL cPartparagraph(1,'Область определения', 'Если показатель степени — целое число, то можно рассматривать степенную функцию на всей числовой прямой (кроме, возможно, нуля). В общем случае степенная функция определена при x>0. Если a>0, то функция определена также и при x=0, иначе нуль является её особой точкой.', 13);
CALL cPartparagraph(2,'Рациональный показатель степени', 'Графики степенной функции при натуральном показателе n называются параболами порядка n. При a=1 получается функция y=kx, называемая прямой пропорциональной зависимостью.
Графики функций вида y=x^{-n}, где n — натуральное число, называются гиперболами порядка n. При a=-1 получается функция y=\frac {k}{x}, называемая обратной пропорциональной зависимостью.
Если a=\frac {1} {n}, то функция есть арифметический корень степени n.
Пример: из третьего закона Кеплера вытекает, что период T обращения планеты вокруг Солнца связан с большой полуосью A её орбиты соотношением: T=kA^{3/2} (полукубическая парабола).', 13);
CALL cPartparagraph(3,'Свойства', 'Функция непрерывна и неограниченно дифференцируема во всех точках, в окрестности которых она определена. Нуль, вообще говоря, является особой точкой; например, функция ~y=\sqrt{x} определена в нуле и его правой окрестности, но её производная ~y=\frac{1}{2\sqrt{x}} в нуле не определена.
В интервале (0, \infty) функция монотонно возрастает при a>0 и монотонно убывает при a<0. Значения функции в этом интервале положительны.
Производная функции:  \left( x^a \right)^\prime = a x^{a-1}.', 13);

# SET PARTPARAGRAPH TO LESSONS

INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('10', '9');
INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('10', '10');
INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('10', '11');

INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('11', '22');
INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('11', '23');
INSERT INTO `admin_do`.`spisokpartparagraphlessons` (`lessonS_id1`, `partparagraphS_id1`) VALUES ('11', '24');


UPDATE `admin_do`.`lessons` 
SET 
    `hometask` = 'Упражение 87, 88'
WHERE
    `id` = '10';
UPDATE `admin_do`.`lessons` 
SET 
    `hometask` = 'вава'
WHERE
    `id` = '10';

INSERT INTO `admin_do`.`studyduration`(`name`, `begin`, `end`, `schoolS_id`)
VALUES ('1 четверть 2013/2014 года', '2013-09-02', '2013-12-28', 1);

UPDATE `admin_do`.`schools` 
SET 
    idstudyduration = 1
WHERE
    id = 1;


UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '1'
WHERE
    `id` = '1';
UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '2'
WHERE
    `id` = '2';
UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '3'
WHERE
    `id` = '3';
UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '4'
WHERE
    `id` = '4';
UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '3'
WHERE
    `id` = '19';
UPDATE `admin_do`.`subgroups` 
SET 
    `materialS_id` = '4'
WHERE
    `id` = '20';

# CREATE QUESTIONS FOR PARAGRAPH

CALL cQuestionPartparagraph('Кто автор книги "Искусство войны?"', 1, 21);
CALL cAnswerQuestion('Лао-Цзы', 0, 1);
CALL cAnswerQuestion('Сунь-Цзы', 1, 1);
CALL cAnswerQuestion('Дао', 0, 1);
CALL cAnswerQuestion('Далай Лама', 0, 1);
CALL cQuestionPartparagraph('Какой из принципов не входит в пятёрку принципов идеологии?', 1, 22);
CALL cAnswerQuestion('Жизни', 0, 2);
CALL cAnswerQuestion('Смерти', 1, 2);
CALL cAnswerQuestion('Любви', 0, 2);
CALL cAnswerQuestion('Здоровья', 0, 2);
CALL cQuestionPartparagraph('О чем не стоит забывать во время войны?', 1, 23);
CALL cAnswerQuestion('о цели', 1, 3);
CALL cAnswerQuestion('о жене', 0, 3);
CALL cAnswerQuestion('о детях', 0, 3);
CALL cAnswerQuestion('о высшей силе', 0, 3);
CALL cQuestionPartparagraph('Война - это как ___ , люди не сложат оружия, но погибнут от собственной же оружия', 2, 24);
CALL cAnswerQuestion('меч', 0, 4);
CALL cAnswerQuestion('топор', 1, 4);
CALL cAnswerQuestion('алебарда', 0, 4);
CALL cAnswerQuestion('копье', 0, 4);
CALL cQuestionPartparagraph('Цзо Чуань - это кто?', 2, 25);
CALL cAnswerQuestion('Военный советник', 0, 5);
CALL cAnswerQuestion('Генерал', 1, 5);
CALL cAnswerQuestion('Епископ', 0, 5);
CALL cAnswerQuestion('Сын императора', 0, 5);
CALL cQuestionPartparagraph('Дао - это что?', 3, 25);
CALL cAnswerQuestion('Направление в философии', 1, 6);
CALL cAnswerQuestion('Направление в психологии', 0, 6);
CALL cAnswerQuestion('Учение о Боге', 0, 6);
CALL cAnswerQuestion('Состояние души и разума', 0, 6);

CALL cQuestionPartparagraph('Сколько будет 2+2*2?', 1, 27);
CALL cAnswerQuestion('4', 0, 7);
CALL cAnswerQuestion('6', 1, 7);
CALL cAnswerQuestion('8', 0, 7);
CALL cAnswerQuestion('12', 0, 7);
CALL cQuestionPartparagraph('5 в кубе?', 1, 27);
CALL cAnswerQuestion('5', 0, 8);
CALL cAnswerQuestion('25', 0, 8);
CALL cAnswerQuestion('125', 1, 8);
CALL cAnswerQuestion('625', 0, 8);
CALL cQuestionPartparagraph('Как называются графики степенной функции при натуральном показателе n', 1, 27);
CALL cAnswerQuestion('Параболами', 1, 9);
CALL cAnswerQuestion('Гиперболами', 0, 9);
CALL cAnswerQuestion('Асимптотами', 0, 9);
CALL cAnswerQuestion('Симптотами', 0, 9);
CALL cQuestionPartparagraph('Из какого закона Кеплера вытекает, что период T обращения планеты вокруг Солнца связан с большой полуосью A её орбиты неокторым соотношением', 2, 27);
CALL cAnswerQuestion('1', 0, 10);
CALL cAnswerQuestion('2', 0, 10);
CALL cAnswerQuestion('3', 1, 10);
CALL cAnswerQuestion('4', 0, 10);
CALL cQuestionPartparagraph('Назовите первое свойство', 2, 27);
CALL cAnswerQuestion('Функция непрерывна и неограниченно дифференцируема во всех точках', 0, 11);
CALL cAnswerQuestion('Функция непрерывна и ограничено дифференцируема во всех точках', 1, 11);
CALL cAnswerQuestion('Функция прерываема и неограниченно дифференцируема во всех точках', 0, 11);
CALL cAnswerQuestion('Функция прерываема и ограничено дифференцируема во всех точках', 0, 11);
CALL cQuestionPartparagraph('В каком интервале функция монотонно возрастает при a>0 и монотонно убывает при a<0?', 3, 27);
CALL cAnswerQuestion('(0, +infty)', 1, 12);
CALL cAnswerQuestion('(1, +infty)', 0, 12);
CALL cAnswerQuestion('(0, 1)', 0, 12);
CALL cAnswerQuestion('(-infty, +infty)', 0, 12);

#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='14';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='15';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='16';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='17';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='18';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='19';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='21';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='23';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='25';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='26';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='28';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='29';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='32';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='34';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='35';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='37';
#UPDATE `admin_do`.`paragraphs` SET `notstudy`='0' WHERE `id`='40';

CALL changeStudyStateParagraph(14, 0);
CALL changeStudyStateParagraph(15, 0);
CALL changeStudyStateParagraph(16, 0);
CALL changeStudyStateParagraph(17, 0);
CALL changeStudyStateParagraph(18, 0);
CALL changeStudyStateParagraph(19, 0);
CALL changeStudyStateParagraph(21, 0);
CALL changeStudyStateParagraph(23, 0);
CALL changeStudyStateParagraph(25, 0);
CALL changeStudyStateParagraph(26, 0);
CALL changeStudyStateParagraph(28, 0);
CALL changeStudyStateParagraph(29, 0);
CALL changeStudyStateParagraph(32, 0);
CALL changeStudyStateParagraph(34, 0);
CALL changeStudyStateParagraph(35, 0);
CALL changeStudyStateParagraph(37, 0);
CALL changeStudyStateParagraph(40, 0);


UPDATE `admin_do`.`materials` 
SET 
    `deleted` = '1'
WHERE
    `id` = '27';

#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='1';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='2';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='3';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='4';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='5';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='6';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='7';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='8';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='9';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='10';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='11';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='12';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='13';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='14';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='15';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='16';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='17';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='18';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='19';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='20';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='21';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='22';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='23';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='24';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='25';
#UPDATE `admin_do`.`materials` SET `notstudy`='0' WHERE `id`='26';


CALL changeStudyStateMaterial(1, 0);
CALL changeStudyStateMaterial(2, 0);
CALL changeStudyStateMaterial(3, 0);
CALL changeStudyStateMaterial(4, 0);
CALL changeStudyStateMaterial(5, 0);
CALL changeStudyStateMaterial(6, 0);
CALL changeStudyStateMaterial(7, 0);
CALL changeStudyStateMaterial(8, 0);
CALL changeStudyStateMaterial(9, 0);
CALL changeStudyStateMaterial(10, 0);
CALL changeStudyStateMaterial(11, 0);
CALL changeStudyStateMaterial(12, 0);
CALL changeStudyStateMaterial(13, 0);
CALL changeStudyStateMaterial(14, 0);
CALL changeStudyStateMaterial(15, 0);
CALL changeStudyStateMaterial(16, 0);
CALL changeStudyStateMaterial(17, 0);
CALL changeStudyStateMaterial(18, 0);
CALL changeStudyStateMaterial(19, 0);
CALL changeStudyStateMaterial(20, 0);
CALL changeStudyStateMaterial(21, 0);
CALL changeStudyStateMaterial(22, 0);
CALL changeStudyStateMaterial(23, 0);
CALL changeStudyStateMaterial(24, 0);
CALL changeStudyStateMaterial(25, 0);
CALL changeStudyStateMaterial(26, 0);




INSERT INTO `admin_do`.`schoolmarks` (`value`, `learnerS_id1`, `lessonS_id`) VALUES ('12', '1', '1');
INSERT INTO `admin_do`.`schoolmarks` (`value`, `learnerS_id1`, `lessonS_id`) VALUES ('10', '1', '2');


# set learner and teacher
# idProfileFromSocial, idRole( 1 - Learner, 2 - Teacher, idfromDO, idschool, info);
USE `admin_social`;
CALL cRole(1001, 1, 1, 1, 'Ученик');
CALL cRole(1002, 2, 1, 1, 'Учител');
CALL cRole(1004, 2, 2, 1, 'Учител');

USE `admin_do`;
CALL cLessontype('Д', 'Диктант'); # id1
CALL cLessontype('С', 'Сочинение'); # id2
CALL cLessontype('А', 'Аудирование'); # id3
CALL cLessontype('О', 'Обычный'); # id4
CALL cLessontype('К', 'Контрольная'); # id5

# SET LESSONTYPES TO LESSONS
# CALL setLessontype(idLesson, idLessonType)
CALL setLessontype(1, 4);
CALL setLessontype(2, 4);
CALL setLessontype(3, 4);
CALL setLessontype(4, 4);
CALL setLessontype(5, 4);
CALL setLessontype(6, 4);
CALL setLessontype(7, 4);
CALL setLessontype(8, 4);
CALL setLessontype(9, 4);
CALL setLessontype(10, 1);
CALL setLessontype(11, 4);
CALL setLessontype(12, 4);
CALL setLessontype(13, 4);
CALL setLessontype(14, 4);
CALL setLessontype(15, 4);
CALL setLessontype(16, 4);
CALL setLessontype(17, 4);
CALL setLessontype(18, 4);
CALL setLessontype(19, 1);
CALL setLessontype(20, 2);
CALL setLessontype(21, 4);
CALL setLessontype(22, 4);
CALL setLessontype(23, 4);
CALL setLessontype(24, 2);
CALL setLessontype(25, 4);
CALL setLessontype(26, 4);
CALL setLessontype(27, 4);
CALL setLessontype(28, 4);
CALL setLessontype(29, 4);
CALL setLessontype(30, 2);
CALL setLessontype(31, 4);
CALL setLessontype(32, 4);
CALL setLessontype(33, 4);

CALL setLessontype(147, 1);
CALL setLessontype(148, 2);
CALL setLessontype(149, 3);

CALL setLessontype(150, 4);
CALL setLessontype(150, 3);

CALL setLessontype(151, 3);
CALL setLessontype(152, 3);

CALL setLessontype(153, 4);
CALL setLessontype(154, 2);
CALL setLessontype(155, 3);

CALL setLessontype(156, 4);
CALL setLessontype(157, 1);

CALL setLessontype(158, 3);
CALL setLessontype(159, 2);

CALL setLessontype(160, 2);
CALL setLessontype(161, 3);
CALL setLessontype(161, 4);

CALL setLessontype(162, 4);
CALL setLessontype(163, 1);

CALL setLessontype(164, 3);
CALL setLessontype(164, 1);
CALL setLessontype(165, 2);

CALL cKo(1011, "ko", "ko", "ko", 1);