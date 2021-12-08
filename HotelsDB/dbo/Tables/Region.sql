CREATE TABLE [dbo].[Region]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Region] NVARCHAR(50) NOT NULL, 
    [City] NCHAR(20) NOT NULL, 
    [Hotels] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Region_Hotel] FOREIGN KEY (Hotels) REFERENCES Hotel([_Name])
)
