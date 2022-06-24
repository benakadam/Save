USE Test2
-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRandomFirstName]
(
	-- Add the parameters for the function here	
	@_rand FLOAT
)
RETURNS VARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Answer varchar(50)
	-- Add the T-SQL statements to compute the return value here
	
	SET @Answer = (SELECT m.Firstname 
	FROM Munka4$ m
	WHERE m.Id = CAST(@_rand*4444 AS INT));

	-- Return the result of the function
	RETURN @Answer
END
GO

