
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/09/2021 18:03:54
-- Generated from EDMX file: C:\Users\Artis.Teilans\Source\Repos\NodarbibuSarakstsPR4\NodarbibuSaraksts.edmx
-- --------------------------------------------------

-- Test L

SET QUOTED_IDENTIFIER OFF;
GO
--USE [NodarbibuSarakstsPR4]; labots
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_StudentsStudentuGrupa_Students]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudentsStudentuGrupa] DROP CONSTRAINT [FK_StudentsStudentuGrupa_Students];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentsStudentuGrupa_StudentuGrupa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudentsStudentuGrupa] DROP CONSTRAINT [FK_StudentsStudentuGrupa_StudentuGrupa];
GO
IF OBJECT_ID(N'[dbo].[FK_LektorsKurss_Lektors]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LektorsKurss] DROP CONSTRAINT [FK_LektorsKurss_Lektors];
GO
IF OBJECT_ID(N'[dbo].[FK_LektorsKurss_Kurss]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LektorsKurss] DROP CONSTRAINT [FK_LektorsKurss_Kurss];
GO
IF OBJECT_ID(N'[dbo].[FK_ProgrammaKurss]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KurssSet] DROP CONSTRAINT [FK_ProgrammaKurss];
GO
IF OBJECT_ID(N'[dbo].[FK_KurssNodarbiba]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NodarbibaSet] DROP CONSTRAINT [FK_KurssNodarbiba];
GO
IF OBJECT_ID(N'[dbo].[FK_LektorsNodarbiba]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NodarbibaSet] DROP CONSTRAINT [FK_LektorsNodarbiba];
GO
IF OBJECT_ID(N'[dbo].[FK_ProgrammaStudentuGrupa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudentuGrupaSet] DROP CONSTRAINT [FK_ProgrammaStudentuGrupa];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[StudentsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudentsSet];
GO
IF OBJECT_ID(N'[dbo].[LektorsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LektorsSet];
GO
IF OBJECT_ID(N'[dbo].[KurssSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KurssSet];
GO
IF OBJECT_ID(N'[dbo].[ProgrammaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProgrammaSet];
GO
IF OBJECT_ID(N'[dbo].[StudentuGrupaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudentuGrupaSet];
GO
IF OBJECT_ID(N'[dbo].[NodarbibaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NodarbibaSet];
GO
IF OBJECT_ID(N'[dbo].[StudentsStudentuGrupa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudentsStudentuGrupa];
GO
IF OBJECT_ID(N'[dbo].[LektorsKurss]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LektorsKurss];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'StudentsSet'
CREATE TABLE [dbo].[StudentsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Vards] nvarchar(max)  NOT NULL,
    [Uzvards] nvarchar(max)  NOT NULL,
    [StudNumurs] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LektorsSet'
CREATE TABLE [dbo].[LektorsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Vards] nvarchar(max)  NOT NULL,
    [Uzvards] nvarchar(max)  NOT NULL,
    [TelNr] nvarchar(max)  NULL
);
GO

-- Creating table 'KurssSet'
CREATE TABLE [dbo].[KurssSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nosaukums] nvarchar(max)  NOT NULL,
    [Stundas] smallint  NOT NULL,
    [Programma_Id] int  NOT NULL
);
GO

-- Creating table 'ProgrammaSet'
CREATE TABLE [dbo].[ProgrammaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nosaukums] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'StudentuGrupaSet'
CREATE TABLE [dbo].[StudentuGrupaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nosaukums] nvarchar(max)  NOT NULL,
    [Programma_Id] int  NOT NULL
);
GO

-- Creating table 'NodarbibaSet'
CREATE TABLE [dbo].[NodarbibaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Datums] datetime  NOT NULL,
    [Sakums] time  NOT NULL,
    [Beigas] time  NOT NULL,
    [Kurss_Id] int  NOT NULL,
    [Lektors_Id] int  NOT NULL
);
GO

-- Creating table 'StudentsStudentuGrupa'
CREATE TABLE [dbo].[StudentsStudentuGrupa] (
    [Students_Id] int  NOT NULL,
    [StudentuGrupa_Id] int  NOT NULL
);
GO

-- Creating table 'LektorsKurss'
CREATE TABLE [dbo].[LektorsKurss] (
    [Lektors_Id] int  NOT NULL,
    [Kurss_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'StudentsSet'
ALTER TABLE [dbo].[StudentsSet]
ADD CONSTRAINT [PK_StudentsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LektorsSet'
ALTER TABLE [dbo].[LektorsSet]
ADD CONSTRAINT [PK_LektorsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KurssSet'
ALTER TABLE [dbo].[KurssSet]
ADD CONSTRAINT [PK_KurssSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProgrammaSet'
ALTER TABLE [dbo].[ProgrammaSet]
ADD CONSTRAINT [PK_ProgrammaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StudentuGrupaSet'
ALTER TABLE [dbo].[StudentuGrupaSet]
ADD CONSTRAINT [PK_StudentuGrupaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NodarbibaSet'
ALTER TABLE [dbo].[NodarbibaSet]
ADD CONSTRAINT [PK_NodarbibaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Students_Id], [StudentuGrupa_Id] in table 'StudentsStudentuGrupa'
ALTER TABLE [dbo].[StudentsStudentuGrupa]
ADD CONSTRAINT [PK_StudentsStudentuGrupa]
    PRIMARY KEY CLUSTERED ([Students_Id], [StudentuGrupa_Id] ASC);
GO

-- Creating primary key on [Lektors_Id], [Kurss_Id] in table 'LektorsKurss'
ALTER TABLE [dbo].[LektorsKurss]
ADD CONSTRAINT [PK_LektorsKurss]
    PRIMARY KEY CLUSTERED ([Lektors_Id], [Kurss_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Students_Id] in table 'StudentsStudentuGrupa'
ALTER TABLE [dbo].[StudentsStudentuGrupa]
ADD CONSTRAINT [FK_StudentsStudentuGrupa_Students]
    FOREIGN KEY ([Students_Id])
    REFERENCES [dbo].[StudentsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [StudentuGrupa_Id] in table 'StudentsStudentuGrupa'
ALTER TABLE [dbo].[StudentsStudentuGrupa]
ADD CONSTRAINT [FK_StudentsStudentuGrupa_StudentuGrupa]
    FOREIGN KEY ([StudentuGrupa_Id])
    REFERENCES [dbo].[StudentuGrupaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentsStudentuGrupa_StudentuGrupa'
CREATE INDEX [IX_FK_StudentsStudentuGrupa_StudentuGrupa]
ON [dbo].[StudentsStudentuGrupa]
    ([StudentuGrupa_Id]);
GO

-- Creating foreign key on [Lektors_Id] in table 'LektorsKurss'
ALTER TABLE [dbo].[LektorsKurss]
ADD CONSTRAINT [FK_LektorsKurss_Lektors]
    FOREIGN KEY ([Lektors_Id])
    REFERENCES [dbo].[LektorsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Kurss_Id] in table 'LektorsKurss'
ALTER TABLE [dbo].[LektorsKurss]
ADD CONSTRAINT [FK_LektorsKurss_Kurss]
    FOREIGN KEY ([Kurss_Id])
    REFERENCES [dbo].[KurssSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LektorsKurss_Kurss'
CREATE INDEX [IX_FK_LektorsKurss_Kurss]
ON [dbo].[LektorsKurss]
    ([Kurss_Id]);
GO

-- Creating foreign key on [Programma_Id] in table 'KurssSet'
ALTER TABLE [dbo].[KurssSet]
ADD CONSTRAINT [FK_ProgrammaKurss]
    FOREIGN KEY ([Programma_Id])
    REFERENCES [dbo].[ProgrammaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProgrammaKurss'
CREATE INDEX [IX_FK_ProgrammaKurss]
ON [dbo].[KurssSet]
    ([Programma_Id]);
GO

-- Creating foreign key on [Kurss_Id] in table 'NodarbibaSet'
ALTER TABLE [dbo].[NodarbibaSet]
ADD CONSTRAINT [FK_KurssNodarbiba]
    FOREIGN KEY ([Kurss_Id])
    REFERENCES [dbo].[KurssSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KurssNodarbiba'
CREATE INDEX [IX_FK_KurssNodarbiba]
ON [dbo].[NodarbibaSet]
    ([Kurss_Id]);
GO

-- Creating foreign key on [Lektors_Id] in table 'NodarbibaSet'
ALTER TABLE [dbo].[NodarbibaSet]
ADD CONSTRAINT [FK_LektorsNodarbiba]
    FOREIGN KEY ([Lektors_Id])
    REFERENCES [dbo].[LektorsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LektorsNodarbiba'
CREATE INDEX [IX_FK_LektorsNodarbiba]
ON [dbo].[NodarbibaSet]
    ([Lektors_Id]);
GO

-- Creating foreign key on [Programma_Id] in table 'StudentuGrupaSet'
ALTER TABLE [dbo].[StudentuGrupaSet]
ADD CONSTRAINT [FK_ProgrammaStudentuGrupa]
    FOREIGN KEY ([Programma_Id])
    REFERENCES [dbo].[ProgrammaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProgrammaStudentuGrupa'
CREATE INDEX [IX_FK_ProgrammaStudentuGrupa]
ON [dbo].[StudentuGrupaSet]
    ([Programma_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------