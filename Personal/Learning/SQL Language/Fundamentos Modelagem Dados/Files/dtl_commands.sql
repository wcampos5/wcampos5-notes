-- TO BE USED WITH dml_commands.sql scripting

-- Cria uma role (usuario)
CREATE ROLE user_x WITH
	NOLOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1;
	
-- Grant Select, insert to user
GRANT SELECT, INSERT, UPDATE ON tb_dml TO user_x

-- Muda o Role/user
SET ROLE user_x

-- Updating (Should work)
BEGIN;
	UPDATE tb_dml
	SET cpf = '12345678-55'
	WHERE matricula = 4;

	SELECT * FROM tb_dml
-- ROLLBACK
-- COMMIT
END

REVOKE UPDATE ON tb_dml FROM user_x;

-- Updating (Should NOT work)
BEGIN;
	UPDATE tb_dml
	SET cpf = '12345678-55'
	WHERE matricula = 4;

	SELECT * FROM tb_dml
-- ROLLBACK
-- COMMIT
END

DENY INSERT ON tb_dml FROM user_x;
-- DENY do not exist in POstgres

-- Updating (Should NOT work)
BEGIN;
	UPDATE tb_dml
	SET cpf = '12345678-55'
	WHERE matricula = 4;

	SELECT * FROM tb_dml
-- ROLLBACK
-- COMMIT
END

RESET ROLE

