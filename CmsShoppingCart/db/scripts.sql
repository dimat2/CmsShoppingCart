CREATE TABLE [dbo].[tblCategories] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [Name]    VARCHAR (50) NULL,
    [Slug]    VARCHAR (50) NULL,
    [Sorting] INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[tblPages] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Title]      VARCHAR (50)  NULL,
    [Slug]       VARCHAR (50)  NULL,
    [Body]       VARCHAR (MAX) NULL,
    [Sorting]    INT           NULL,
    [HasSidebar] BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[tblProducts] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (50)    NULL,
    [Slug]         VARCHAR (50)    NULL,
    [Description]  VARCHAR (MAX)   NULL,
    [Price]        NUMERIC (18, 2) NULL,
    [CategoryName] VARCHAR (50)    NULL,
    [CategoryId]   INT             NULL,
    [ImageName]    VARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[tblSidebar] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Body] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[tblRoles] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[tblUsers] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50) NULL,
    [LastName]     VARCHAR (50) NULL,
    [EmailAddress] VARCHAR (50) NULL,
    [Username]     VARCHAR (50) NULL,
    [Password]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[tblUsers] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50) NULL,
    [LastName]     VARCHAR (50) NULL,
    [EmailAddress] VARCHAR (50) NULL,
    [Username]     VARCHAR (50) NULL,
    [Password]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
