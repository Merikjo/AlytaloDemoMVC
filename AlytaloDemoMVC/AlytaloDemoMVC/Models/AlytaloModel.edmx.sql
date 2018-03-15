
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/14/2018 12:49:12
-- Generated from EDMX file: E:\Visual Studio 2017\Projects\AlytaloMVC\ÄlytaloWEB\ÄlytaloWEB\Models\AlytaloModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [AlytaloDEmoData];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TaloIlma]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaloIlma];
GO
IF OBJECT_ID(N'[dbo].[TaloLampo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaloLampo];
GO
IF OBJECT_ID(N'[dbo].[TaloSauna]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaloSauna];
GO
IF OBJECT_ID(N'[dbo].[TaloValo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaloValo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TaloIlma'
CREATE TABLE [dbo].[TaloIlma] (
    [IlmaID] int IDENTITY(1,1) NOT NULL,
    [Huone] nvarchar(50)  NULL,
    [IlmaTilaOff] bit  NOT NULL,
    [Ilma1] bit  NOT NULL,
    [Ilma2] bit  NOT NULL,
    [Ilma3] bit  NOT NULL,
    [Ilma4] bit  NOT NULL,
    [IlmaOn1] datetime  NULL,
    [IlmaOn2] datetime  NULL,
    [IlmaOn3] datetime  NULL,
    [IlmaOn4] datetime  NULL,
    [IlmaOff] datetime  NULL
);
GO

-- Creating table 'TaloLampo'
CREATE TABLE [dbo].[TaloLampo] (
    [HuoneID] int IDENTITY(1,1) NOT NULL,
    [Huone] nvarchar(50)  NULL,
    [HuoneTavoiteLampo] nvarchar(50)  NULL,
    [HuoneNykyLampo] nvarchar(50)  NULL,
    [LampoKirjattu] datetime  NULL,
    [LampoOn] bit  NOT NULL,
    [LampoOff] bit  NOT NULL
);
GO

-- Creating table 'TaloSauna'
CREATE TABLE [dbo].[TaloSauna] (
    [SaunaID] int IDENTITY(1,1) NOT NULL,
    [SaunaNro] int  NULL,
    [SaunanNimi] nvarchar(50)  NULL,
    [SaunaTavoiteLampotila] nvarchar(20)  NULL,
    [SaunaNykyLampotila] nvarchar(20)  NULL,
    [SaunanTila] bit  NOT NULL,
    [SaunaStart] datetime  NULL,
    [SaunaStop] datetime  NULL
);
GO

-- Creating table 'TaloValo'
CREATE TABLE [dbo].[TaloValo] (
    [ValoID] int IDENTITY(1,1) NOT NULL,
    [Huone] nvarchar(50)  NULL,
    [ValaisinType] nvarchar(50)  NULL,
    [LamppuID] varchar(5)  NULL,
    [ValoTilaOff] bit  NOT NULL,
    [Valo33] bit  NOT NULL,
    [Valo66] bit  NOT NULL,
    [Valo100] bit  NOT NULL,
    [ValoOn33] datetime  NULL,
    [ValoOn66] datetime  NULL,
    [ValoOn100] datetime  NULL,
    [ValoOff] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Ilma_ID] in table 'TaloIlma'
ALTER TABLE [dbo].[TaloIlma]
ADD CONSTRAINT [PK_TaloIlma]
    PRIMARY KEY CLUSTERED ([IlmaID] ASC);
GO

-- Creating primary key on [Huone_ID] in table 'TaloLampo'
ALTER TABLE [dbo].[TaloLampo]
ADD CONSTRAINT [PK_TaloLampo]
    PRIMARY KEY CLUSTERED ([HuoneID] ASC);
GO

-- Creating primary key on [Sauna_ID] in table 'TaloSauna'
ALTER TABLE [dbo].[TaloSauna]
ADD CONSTRAINT [PK_TaloSauna]
    PRIMARY KEY CLUSTERED ([SaunaID] ASC);
GO

-- Creating primary key on [Valo_ID] in table 'TaloValo'
ALTER TABLE [dbo].[TaloValo]
ADD CONSTRAINT [PK_TaloValo]
    PRIMARY KEY CLUSTERED ([ValoID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------