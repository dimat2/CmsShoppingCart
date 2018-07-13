drop table if exists [dbo].[tblCategories]
CREATE TABLE [dbo].[tblCategories] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [Name]    VARCHAR (50) NULL,
    [Slug]    VARCHAR (50) NULL,
    [Sorting] INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
drop table if exists [dbo].[tblPages]
CREATE TABLE [dbo].[tblPages] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Title]      VARCHAR (50)  NULL,
    [Slug]       VARCHAR (50)  NULL,
    [Body]       VARCHAR (MAX) NULL,
    [Sorting]    INT           NULL,
    [HasSidebar] BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
INSERT INTO tblPages(Title, Slug, Body, Sorting, HasSidebar) VALUES ('Home', 'home', '<h2>Ez a home.</h2>', 0, 'False')

drop table if exists [dbo].[tblProducts]
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
drop table if exists [dbo].[tblSidebar]
CREATE TABLE [dbo].[tblSidebar] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Body] VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
INSERT INTO tblSidebar(Body) VALUES ('<h2>Ez az oldalsáv.</h2>')

drop table if exists [dbo].[tblRoles]
CREATE TABLE [dbo].[tblRoles] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
INSERT INTO tblRoles(Name) VALUES ('Admin'), ('User')

drop table if exists [dbo].[tblUsers]
CREATE TABLE [dbo].[tblUsers] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50) NULL,
    [LastName]     VARCHAR (50) NULL,
    [EmailAddress] VARCHAR (50) NULL,
    [Username]     VARCHAR (50) NULL,
    [Password]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
INSERT INTO tblUsers(FirstName, LastName, EmailAddress, Username, Password) VALUES ('Péter', 'Kiss', 'kiss.peti86@gmail.com', 'admin', 'pass')

drop table if exists [dbo].[tblUserRoles]
CREATE TABLE [dbo].[tblUserRoles] (
    [UserId] INT NOT NULL,
    [RoleId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([RoleId] ASC, [UserId] ASC)
);
INSERT INTO tblUserRoles(UserId, RoleId) VALUES (1, 1)

CREATE TABLE [dbo].[tblOrders] (
    [OrderId]   INT           IDENTITY (1, 1) NOT NULL,
    [UserId]    INT           NULL,
    [CreatedAt] DATETIME2 (7) NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC)
);