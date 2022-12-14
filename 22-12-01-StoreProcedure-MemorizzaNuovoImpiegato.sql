USE [Azienda]
GO
/****** Object:  StoredProcedure [dbo].[MemorizzaNuovoImpiegato]    Script Date: 22-12-01 17:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[MemorizzaNuovoImpiegato] (
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

	INSERT INTO Impiegato VALUES (
		@Nome,
		@Cognome,
		@CodiceFiscale,
		@Eta,
		@RedditoMensile,
		@DetrazioneFiscale,
		@ID_Impiego,
		@DataAssunzione
	)

END
