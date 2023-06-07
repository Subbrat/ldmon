USE ldmon;
drop TABLE IF EXISTS log_database;
CREATE TABLE log_database (
  id INT AUTO_INCREMENT PRIMARY KEY,
  operation VARCHAR(10),
  old_value VARCHAR(255),
  new_value VARCHAR(255)
);

SELECT * from log_database;
DELIMITER //

CREATE TRIGGER table_added
AFTER INSERT ON ldmon
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(255);
  SET @sql = CONCAT('SELECT TABLE_NAME INTO @table_name FROM information_schema.TABLES WHERE EVENT_OBJECT_SCHEMA = \'ldmon\' AND EVENT_OBJECT_TYPE = \'TABLE\' AND EVENT_OBJECT_NAME = \'', EVENT_OBJECT_TABLE, '\';');
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  IF @table_name IS NOT NULL THEN
    INSERT INTO log_database (operation, new_value)
    VALUES ('add', @table_name);
  END IF;
END//

CREATE TRIGGER table_removed
BEFORE DELETE ON ldmon
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(255);
  SET @sql = CONCAT('SELECT TABLE_NAME INTO @table_name FROM information_schema.TABLES WHERE EVENT_OBJECT_SCHEMA = \'ldmon\' AND EVENT_OBJECT_TYPE = \'TABLE\' AND EVENT_OBJECT_NAME = \'', EVENT_OBJECT_TABLE, '\';');
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  IF @table_name IS NOT NULL THEN
    INSERT INTO log_database (operation, old_value)
    VALUES ('remove', @table_name);
  END IF;
END//

CREATE TRIGGER table_edited
AFTER UPDATE ON ldmon
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(255);
  SET @sql = CONCAT('SELECT TABLE_NAME INTO @table_name FROM information_schema.TABLES WHERE EVENT_OBJECT_SCHEMA = \'ldmon\' AND EVENT_OBJECT_TYPE = \'TABLE\' AND EVENT_OBJECT_NAME = \'', EVENT_OBJECT_TABLE, '\';');
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  IF @table_name IS NOT NULL THEN
    INSERT INTO log_database (operation, old_value, new_value)
    VALUES ('edit', @table_name, @table_name);
  END IF;
END//

DELIMITER ;