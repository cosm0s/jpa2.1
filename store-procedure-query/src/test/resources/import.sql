
INSERT INTO SENDERS(USERNAME) VALUES('fphilip');

CREATE PROCEDURE PROC_SEND_MESSAGE(message VARCHAR(50), mesage_type VARCHAR(10), sender VARCHAR(10))  MODIFIES SQL DATA    INSERT INTO MESSAGES (MESSAGE_ID,MESSAGE_TEXT, MESSAGE_TYPE, SENDER_ID) VALUES (DEFAULT,message,mesage_type,sender);

CREATE PROCEDURE PROC_SEND_MESSAGE_AND_SHOW(message VARCHAR(50), mesage_type VARCHAR(10), sender VARCHAR(10))   MODIFIES SQL DATA DYNAMIC RESULT SETS 1 BEGIN ATOMIC DECLARE result CURSOR FOR SELECT MESSAGE_ID,MESSAGE_TEXT, MESSAGE_TYPE, SENDER_ID FROM MESSAGES WHERE MESSAGE_ID = IDENTITY(); INSERT INTO MESSAGES (MESSAGE_ID,MESSAGE_TEXT, MESSAGE_TYPE, SENDER_ID) VALUES (DEFAULT,message,mesage_type,sender); OPEN result; END