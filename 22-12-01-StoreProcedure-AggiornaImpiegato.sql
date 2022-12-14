USE [Azienda]
GO
/****** Object:  StoredProcedure [dbo].[AggiornaImpiegato]    Script Date: 22-12-01 17:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AggiornaImpiegato](
	@ID_Impiegato INT,
	@Nome NVARCHAR(20),
	@Cognome NVARCHAR(20),
	@CodiceFiscale CHAR(16),
	@Eta TINYINT,
	@RedditoMensile MONEY,
	@DetrazioneFiscale BIT,
	@ID_Impiego INT,
	@DataAssunzione DATE
	)
	
AS
BEGIN
	UPDATE Impiegato 
	SET Nome = @Nome,
		Cognome = @Cognome,
		CodiceFiscale = @CodiceFiscale,
		Eta = @Eta,
		RedditoMensile = @RedditoMensile,
		DetrazioneFiscale = @DetrazioneFiscale,
		ID_Impiego = @ID_Impiego,
		DataAssunzione = @DataAssunzione

		WHERE ID_impiegato = @ID_Impiegato

END
