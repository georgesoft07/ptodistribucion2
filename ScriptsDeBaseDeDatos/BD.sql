USE [BDDISTRIBUCION]
GO
/****** Object:  Table [dbo].[TIPOPRE]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOPRE](
	[DATETRANS] [datetime] NULL,
	[TRANS] [bit] NULL,
	[DSTIPOPRE] [varchar](30) NULL,
	[CODTIPOPRE] [varchar](20) NOT NULL,
	[codmon] [char](2) NOT NULL,
	[estado] [bit] NULL,
	[CODEMPRESA] [varchar](10) NULL,
	[APLIOTROSCTO] [bit] NULL,
	[DS] [varchar](50) NULL,
 CONSTRAINT [PK_TIPOPRE] PRIMARY KEY CLUSTERED 
(
	[CODTIPOPRE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPONEGOCIO]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPONEGOCIO](
	[CODEMPRESA] [varchar](10) NULL,
	[CODIGO] [varchar](20) NOT NULL,
	[DESCRIPCION] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Tipo_Pago](
	[DATETRANS] [datetime] NULL,
	[ESTADO] [bit] NULL,
	[TRANS] [bit] NULL,
	[DSTIPOPAGO] [varchar](50) NULL,
	[CODTIPOPAGO] [varchar](10) NOT NULL,
	[CODEMPRESA] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[CODTIPOPAGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RUTA]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RUTA](
	[CODEMPRESA] [varchar](10) NULL,
	[CODIGO] [varchar](20) NOT NULL,
	[DESCRIPCION] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paisdepa]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paisdepa](
	[iddepa] [varchar](4) NOT NULL,
	[depa] [varchar](30) NULL,
	[codpais] [varchar](10) NULL,
	[codempresa] [varchar](10) NULL,
	[trans] [bit] NULL,
	[datetrans] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddepa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pais]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[pais](
	[DATETRANS] [datetime] NULL,
	[TRANS] [bit] NULL,
	[ESTADO] [bit] NULL,
	[DESPAIS] [varchar](50) NULL,
	[CODPAIS] [varchar](4) NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[pais] ADD [COD_EMPRESA] [varchar](10) NULL
ALTER TABLE [dbo].[pais] ADD  CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[CODPAIS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ciudad](
	[CODCIUDAD] [varchar](4) NOT NULL,
	[DESCIUDAD] [varchar](50) NULL,
	[CODPAIS] [varchar](4) NULL,
	[iddepa] [varchar](4) NULL,
	[estado] [bit] NULL,
	[datetrans] [datetime] NULL,
	[trans] [bit] NULL,
	[CODEMPRESA] [varchar](10) NULL,
 CONSTRAINT [PK_ciudad] PRIMARY KEY CLUSTERED 
(
	[CODCIUDAD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ACCESO]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCESO](
	[CodEmpresa] [varchar](max) NULL,
	[cdnivel] [char](10) NULL,
	[cdmodulo] [varchar](25) NOT NULL,
	[activo] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[distrito]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[distrito](
	[CodDis] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](70) NULL,
	[codprovi] [varchar](4) NULL,
	[CODPAIS] [nvarchar](255) NULL,
	[iddepa] [varchar](4) NULL,
	[CODEMPRESA] [varchar](10) NULL,
 CONSTRAINT [PK_distrito] PRIMARY KEY CLUSTERED 
(
	[CodDis] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 10/04/2017 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[CODEMPRESA] [varchar](10) NOT NULL,
	[codcliente] [varchar](20) NOT NULL,
	[DATETRANS] [datetime] NULL,
	[TRANS] [bit] NULL,
	[ESTADO] [bit] NULL,
	[DESCUENTO] [numeric](9, 3) NULL,
	[CTA_LET] [varchar](15) NULL,
	[CTA_ANT] [varchar](15) NULL,
	[CTA_VTA] [varchar](15) NULL,
	[SALDODISPONIBLE] [decimal](11, 2) NULL,
	[MTOLIMCRED] [decimal](11, 2) NULL,
	[telefono] [char](18) NULL,
	[ruc] [varchar](11) NULL,
	[direccion] [varchar](100) NULL,
	[CODTIPOPAGO] [varchar](10) NOT NULL,
	[CODTIPCLI] [varchar](4) NOT NULL,
	[CODCIUDAD] [varchar](4) NOT NULL,
	[codvend] [varchar](4) NULL,
	[CuotaT] [numeric](9, 4) NULL,
	[CuotaS] [numeric](9, 2) NULL,
	[cuotaD] [numeric](9, 2) NULL,
	[dni] [varchar](10) NULL,
	[razonsocial] [varchar](150) NULL,
	[materno] [varchar](30) NULL,
	[paterno] [varchar](30) NULL,
	[nombres] [varchar](150) NULL,
	[codzona] [varchar](4) NOT NULL,
	[email] [varchar](30) NULL,
	[TIPCREDFAC] [char](3) NOT NULL,
	[MONEDACRED] [char](2) NULL,
	[pais] [varchar](4) NULL,
	[contacto] [varchar](150) NULL,
	[telecont] [varchar](50) NULL,
	[celucont] [varchar](50) NULL,
	[emailcont] [varchar](50) NULL,
	[faxcliente] [varchar](50) NULL,
	[DATOADJUNTO] [varchar](500) NULL,
	[coddis] [numeric](18, 0) NULL,
	[iddepa] [varchar](4) NULL,
	[tipo] [bit] NULL,
	[creacion] [datetime] NULL,
	[empleado] [bit] NULL,
	[RUTA] [varchar](20) NULL,
	[TIPONEGOCIO] [varchar](20) NULL,
	[CODTIPOPRE] [varchar](20) NULL,
	[imagen] [varchar](50) NULL,
	[imagen2] [varchar](100) NULL,
	[MPERCEP] [numeric](20, 4) NULL,
	[ORT] [bit] NULL,
	[CODSegCliente] [varchar](50) NULL,
	[CodCatCliente] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[codcliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[NSP_INSERT_TIPONEGOCIO]    Script Date: 10/04/2017 19:29:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NSP_INSERT_TIPONEGOCIO]  
@CODEMPRESA varchar(20),  
@CODIGO varchar(50),  
@DESCRIPCION varchar(50) 
AS  
BEGIN TRAN  
INSERT INTO TIPONEGOCIO(CODEMPRESA, CODIGO, DESCRIPCION)  
VALUES(@CODEMPRESA, @CODIGO, @DESCRIPCION)  
IF @@ERROR <> 0                  
BEGIN                  
 RAISERROR 2000 'ERROR AL GRABAR EL DOCUMENTO'                  
 ROLLBACK TRANSACTION                  
 RETURN -1                  
END             
COMMIT TRANSACTION
GO
/****** Object:  ForeignKey [FK_CLIENTE_ciudad]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_ciudad] FOREIGN KEY([CODCIUDAD])
REFERENCES [dbo].[ciudad] ([CODCIUDAD])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_ciudad]
GO
/****** Object:  ForeignKey [FK_CLIENTE_distrito]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_distrito] FOREIGN KEY([coddis])
REFERENCES [dbo].[distrito] ([CodDis])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_distrito]
GO
/****** Object:  ForeignKey [FK_CLIENTE_pais]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_pais] FOREIGN KEY([pais])
REFERENCES [dbo].[pais] ([CODPAIS])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_pais]
GO
/****** Object:  ForeignKey [FK_CLIENTE_paisdepa]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_paisdepa] FOREIGN KEY([iddepa])
REFERENCES [dbo].[paisdepa] ([iddepa])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_paisdepa]
GO
/****** Object:  ForeignKey [FK_CLIENTE_RUTA]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_RUTA] FOREIGN KEY([RUTA])
REFERENCES [dbo].[RUTA] ([CODIGO])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_RUTA]
GO
/****** Object:  ForeignKey [FK_CLIENTE_Tipo_Pago]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_Tipo_Pago] FOREIGN KEY([CODTIPOPAGO])
REFERENCES [dbo].[Tipo_Pago] ([CODTIPOPAGO])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_Tipo_Pago]
GO
/****** Object:  ForeignKey [FK_CLIENTE_TIPONEGOCIO]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_TIPONEGOCIO] FOREIGN KEY([TIPONEGOCIO])
REFERENCES [dbo].[TIPONEGOCIO] ([CODIGO])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_TIPONEGOCIO]
GO
/****** Object:  ForeignKey [FK_CLIENTE_TIPOPRE]    Script Date: 10/04/2017 19:29:04 ******/
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_TIPOPRE] FOREIGN KEY([CODTIPOPRE])
REFERENCES [dbo].[TIPOPRE] ([CODTIPOPRE])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_TIPOPRE]
GO
