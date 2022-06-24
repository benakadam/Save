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
CREATE FUNCTION [dbo].[ufnChangeNationalCharacters]
(
	-- Add the parameters for the function here
	@InString AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ReturnValue VARCHAR(50)
	SET @ReturnValue = @InString
	set @ReturnValue =  replace(@ReturnValue,'á', 'a')
	set @ReturnValue =  replace(@ReturnValue,'é', 'e')
	set @ReturnValue =  replace(@ReturnValue,'í', 'i')
	set @ReturnValue =  replace(@ReturnValue,'ó', 'o')
	set @ReturnValue =  replace(@ReturnValue,'ö', 'o')
	set @ReturnValue =  replace(@ReturnValue,'õ', 'o')
	set @ReturnValue =  replace(@ReturnValue,'ú', 'u')
	set @ReturnValue =  replace(@ReturnValue,'ü', 'u')
	set @ReturnValue =  replace(@ReturnValue,'û', 'u')

	-- Return the result of the function
	RETURN @ReturnValue
END
GO

