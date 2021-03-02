CREATE TABLE [dbo].[ASISTENCIA]
(
[IDASISTENCIA] [int] NOT NULL,
[IDESTUDIANTE] [int] NULL,
[FALTA] [numeric] (1, 0) NULL,
[FECHA] [datetime] NULL,
[ATRASO] [numeric] (1, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASISTENCIA] ADD CONSTRAINT [PK_ASISTENCIA] PRIMARY KEY NONCLUSTERED  ([IDASISTENCIA]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_4_FK] ON [dbo].[ASISTENCIA] ([IDESTUDIANTE]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASISTENCIA] ADD CONSTRAINT [FK_ASISTENC_RELATIONS_ESTUDIAN] FOREIGN KEY ([IDESTUDIANTE]) REFERENCES [dbo].[ESTUDIANTE] ([IDESTUDIANTE])
GO
