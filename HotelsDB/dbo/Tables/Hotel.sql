CREATE TABLE [dbo].[Hotel]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [_Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(1000) NOT NULL, 
    [RegionId] INT NOT NULL, 
    [RoomsId] INT NOT NULL, 
    [RoomCount] INT NOT NULL, 
    [FreeRoomCount] INT NOT NULL, 
    [GuestsInHotel] INT NULL, 
    CONSTRAINT [FK_Hotel_Region] FOREIGN KEY (RegionId) REFERENCES Region(id), 
    CONSTRAINT [FK_Hotel_Rooms] FOREIGN KEY (RoomsId) REFERENCES Rooms(id), 
    CONSTRAINT [FK_Hotel_Guests] FOREIGN KEY (GuestsInHotel) REFERENCES Guests(id)
)
