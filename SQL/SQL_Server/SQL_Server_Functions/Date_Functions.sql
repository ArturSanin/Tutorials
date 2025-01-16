/*
	An overview of the various date/time functions in SQL Server, with examples.
*/



/*
	CURRENT_TIMESTAMP: Returns the date and time of the computer (format yyyy-MM-dd HH:mm:ss.[nnn]), on which SQL Server is running. The time zone offset is not included.
	CURRENT_TIMESTAMP -> datetime
*/

SELECT CURRENT_TIMESTAMP;



/*
	GETDATE: Returns the date and time of the computer (format yyyy-MM-dd HH:mm:ss.[nnn]), on which SQL Server is running. The time zone offset is not included.
	GETDATE() -> datetime
*/

SELECT GETDATE();



/*
	GETUTCDATE: Returns the date and time of the computer (format yyyy-MM-dd HH:mm:ss.[nnn]), on which SQL Server is running, as UTC date and time. 
	GETUTCDATE() -> datetime
*/

SELECT GETUTCDATE();



/*
	SYSDATETIME: Returns a higher precision date and time value of the computer, on which SQL Server is running. The time zone offset is not included.
	SYSDATETIME() -> datetime2(7)
*/

SELECT SYSDATETIME();



/*
	SYSUTCDATETIME: Returns a higher precision date and time value of the computer, on which SQL Server is running, as UTC date and time.
	SYSUTCDATETIME() -> datetime2(7)
*/

SELECT SYSUTCDATETIME();



/*
	SYSDATETIMEOFFSET: Returns a higher precision date and time value of the computer, on which SQL Server is running with time zone offset included.
	SYSDATETIMEOFFSET() -> datetimeoffset(7)
*/

SELECT SYSDATETIMEOFFSET();