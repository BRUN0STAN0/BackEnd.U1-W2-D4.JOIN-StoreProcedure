USE [Azienda]
GO
/****** Object:  StoredProcedure [dbo].[EliminaImpiegato]    Script Date: 22-12-01 17:32:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EliminaImpiegato](@ID_Impiegato INT)

AS
BEGIN 

DELETE FROM Impiegato WHERE ID_Impiegato = @ID_Impiegato

END
