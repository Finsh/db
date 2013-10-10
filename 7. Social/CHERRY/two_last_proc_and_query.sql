DROP PROCEDURE getIdPreLastOrLastComment;
delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getIdPreLastOrLastComment`(
	IN idProfL INT, 
	IN idWall INT,
	OUT max INT)
BEGIN
	SET @sql_text =	concat('set @a := (SELECT count(*) as count FROM mydb.commentwall',
										idProfL,' WHERE wall',idProfL,'_id =',idWall,');');
	PREPARE stmt FROM @sql_text;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

	if (@a=1) THEN	
		# 'SELECT id INTO param1 FROM mydb.',t_commentwall5,' WHERE ',t_wall_id,'=',wall_id_filter,' AND extension is null'
		SET @sql_text = concat('SET @max := (SELECT id FROM mydb.commentwall',idProfL,
									' WHERE wall',idProfL,'_id=',idWall,' AND extension is null);');
		
	ELSE 
		SET @sql_text = concat('SET @max := (SELECT max(id) FROM mydb.commentwall',idProfL,'
									WHERE wall',idProfL,'_id=',idWall,' AND extension is null and id not in
									( SELECT max(id) FROM mydb.commentwall',idProfL,' WHERE wall',idProfL,'_id=',idWall,
									' AND extension is null ORDER BY datetime DESC));');
	END IF;
	PREPARE stmt FROM @sql_text; EXECUTE stmt; DEALLOCATE PREPARE stmt;
	SET max := @max;
END $$

#SET @max = 0; 
#SELECT @max;
CALL getIdPreLastOrLastComment(5,5,@max); 


SELECT id, profile_id , datetime, text, countlike, wall5_id, commentwall5_id, extension
FROM mydb.commentwall5
WHERE wall5_id=5 and id >= @max
ORDER BY datetime ASC;