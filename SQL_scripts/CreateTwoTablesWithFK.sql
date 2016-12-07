CREATE TABLE [dbo].[PhotoAlbum] (
    [Id]   INT            NOT NULL,
    [Name] NVARCHAR (100) NOT NULL,
    PRIMARY KEY ([Id])
);

CREATE TABLE [dbo].[Picture] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Description]  NVARCHAR (300) NOT NULL,
    [ToolTip]      NVARCHAR (50)  NOT NULL,
    [ImageUrl]     NVARCHAR (200) NOT NULL,
    [PhotoAlbumId] INT            NOT NULL,
	PRIMARY KEY ([Id]),
    CONSTRAINT [int] FOREIGN KEY ([PhotoAlbumId]) REFERENCES [dbo].[PhotoAlbum] ([Id])
);