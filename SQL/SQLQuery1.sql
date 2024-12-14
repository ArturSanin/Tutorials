DECLARE @tmp_c TABLE (
	name VARCHAR(50)
	,e_mail VARCHAR(50)
)


INSERT INTO @tmp_c
VALUES 
	('Max Mustermann', 'max_mustermann@gmx.de')
	,('Anna Musterfrau', 'anna_musterfrau@gmxtgp.aut')
	,('Jakob Wiese', 'wiese.jakob@25pd.ok')
	,('Peter Smith', 'agent-sith@mail.op')


DECLARE @Information TABLE (
	name VARCHAR(50)
	,first_name VARCHAR(50)
	,surname VARCHAR(50)
	,first_name_length INT
	,first_name_length_parity VARCHAR(4)
	,surname_length INT
	,surname_length_parity VARCHAR(4)
	,name_length INT
	,name_length_parity VARCHAR(4)
	,first_letter_first_name CHAR(1)
	,first_letter_surname CHAR(1)
	,e_mail VARCHAR(50)
	,e_mail_front_part VARCHAR(50)
	,e_mail_last_part VARCHAR(50)
	,e_mail_provider VARCHAR(50)
	,e_mail_domain VARCHAR(50)
	,e_mail_length INT
	,e_mail_provider_length INT
	,e_mail_domain_length INT
	,first_name_in_e_mail VARCHAR(5)
	,surname_in_e_mail VARCHAR(5)
	,name_in_e_mail VARCHAR(5)
)


INSERT INTO @Information
SELECT 
	name
	,SUBSTRING(name, 1, CHARINDEX(' ', name) - 1)
	,SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name))
	,LEN(SUBSTRING(name, 1, CHARINDEX(' ', name) - 1))
	,CASE	
		WHEN LEN(SUBSTRING(name, 1, CHARINDEX(' ', name) - 1)) % 2 = 0 THEN 'even'
		ELSE 'odd'
	END
	,LEN(SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)))
	,CASE	
		WHEN LEN(SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name))) % 2 = 0 THEN 'even'
		ELSE 'odd'
	END
	,LEN(SUBSTRING(name, 1, CHARINDEX(' ', name) - 1)) + LEN(SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)))
	,CASE	
		WHEN (LEN(SUBSTRING(name, 1, CHARINDEX(' ', name) - 1)) + LEN(SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)))) % 2 = 0 THEN 'even'
		ELSE 'odd'
	END
	,SUBSTRING(SUBSTRING(name, 1, CHARINDEX(' ', name) - 1), 1, 1)
	,SUBSTRING(SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)), 1, 1)
	,e_mail
	,SUBSTRING(e_mail, 1, CHARINDEX('@', e_mail) - 1)
	,SUBSTRING(e_mail, CHARINDEX('@', e_mail), LEN(e_mail))
	,SUBSTRING(SUBSTRING(e_mail, CHARINDEX('@', e_mail), LEN(e_mail)), 2, CHARINDEX('.', SUBSTRING(e_mail, CHARINDEX('@', e_mail), LEN(e_mail))) - 2) 
	,REVERSE(SUBSTRING(REVERSE(e_mail), 1, CHARINDEX('.', REVERSE(e_mail)) - 1))
	,LEN(e_mail)
	,LEN(SUBSTRING(SUBSTRING(e_mail, CHARINDEX('@', e_mail), LEN(e_mail)), 2, CHARINDEX('.', SUBSTRING(e_mail, CHARINDEX('@', e_mail), LEN(e_mail))) - 2))
	,LEN(REVERSE(SUBSTRING(REVERSE(e_mail), 1, CHARINDEX('.', REVERSE(e_mail)) - 1)))
	,CASE	
		WHEN SUBSTRING(e_mail, 1, CHARINDEX('@', e_mail) - 1) LIKE '%' + SUBSTRING(name, 1, CHARINDEX(' ', name) - 1) + '%' THEN 'True'
		ELSE 'False'
	END
	,CASE	
		WHEN SUBSTRING(e_mail, 1, CHARINDEX('@', e_mail) - 1) LIKE '%' + SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)) + '%' THEN 'True'
		ELSE 'False'
	END
	,CASE	
		WHEN SUBSTRING(e_mail, 1, CHARINDEX('@', e_mail) - 1) LIKE '%' + SUBSTRING(name, 1, CHARINDEX(' ', name) - 1) + '%' + SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)) + '%' THEN 'True'
		WHEN SUBSTRING(e_mail, 1, CHARINDEX('@', e_mail) - 1) LIKE '%' + SUBSTRING(name, CHARINDEX(' ', name) + 1, LEN(name)) + '%' + SUBSTRING(name, 1, CHARINDEX(' ', name) - 1) + '%' THEN 'True'
		ELSE 'False'
	END
FROM @tmp_c




SELECT *
FROM @Information
