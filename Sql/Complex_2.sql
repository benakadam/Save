USE Test2;

IF EXISTS (SELECT * FROM Emails)
BEGIN
	DELETE FROM Emails
END

DECLARE @Count INT = 1000,
		@_first varchar(50),
		@_last varchar(50),
		@_company varchar(50),
		@_extension varchar(50)

WHILE (@Count > 0)
BEGIN
	SET @_first = dbo.ufnGetRandomFirstName(RAND());
	SET	@_last = dbo.ufnGetRandomLastName(RAND());
	SET	@_company = dbo.ufnGetRandomCompany(RAND());
	SET @_extension = dbo.ufnGetRandomExtension(RAND());
	INSERT INTO Emails
		VALUES (@Count,
				CONCAT(
					LOWER(dbo.ufnChangeNationalCharacters(@_first)),
					'.',
					LOWER(dbo.ufnChangeNationalCharacters(@_last)),
					'@',
					LOWER(dbo.ufnChangeNationalCharacters(@_company)),
					'.',
					LOWER(dbo.ufnChangeNationalCharacters(@_extension))),
				CONCAT(@_last, ' ', @_first)
				);
	SET @Count = @Count - 1;
END