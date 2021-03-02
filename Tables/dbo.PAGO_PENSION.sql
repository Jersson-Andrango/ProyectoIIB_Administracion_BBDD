CREATE TABLE [dbo].[PAGO_PENSION]
(
[IDPAGO] [int] NOT NULL,
[IDREPRESENTANTE] [int] NULL,
[CI] [numeric] (10, 0) NULL,
[VALOR] [float] NULL,
[FECHA_PAGO] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PAGO_PENSION] ADD CONSTRAINT [PK_PAGO_PENSION] PRIMARY KEY NONCLUSTERED  ([IDPAGO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_15_FK] ON [dbo].[PAGO_PENSION] ([IDREPRESENTANTE]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PAGO_PENSION] ADD CONSTRAINT [FK_PAGO_PEN_RELATIONS_REPRESEN] FOREIGN KEY ([IDREPRESENTANTE]) REFERENCES [dbo].[REPRESENTANTE] ([IDREPRESENTANTE])
GO