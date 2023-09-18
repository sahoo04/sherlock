-- Create a table for players
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    PasswordHash VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    RegistrationDate DATETIME
);

-- Create a table for characters
CREATE TABLE Characters (
    CharacterID INT PRIMARY KEY,
    PlayerID INT,
    Name VARCHAR(50) NOT NULL,
    Class VARCHAR(50),
    Level INT,
    Health INT,
    Mana INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- Create a table for items
CREATE TABLE Items (
    ItemID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Description TEXT,
    Type VARCHAR(50),
    Value INT
);

-- Create a table for character inventory
CREATE TABLE CharacterInventory (
    CharacterID INT,
    ItemID INT,
    Quantity INT,
    FOREIGN KEY (CharacterID) REFERENCES Characters(CharacterID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

-- Create a table for the game log
CREATE TABLE GameLog (
    LogID INT PRIMARY KEY,
    Timestamp DATETIME,
    EventDescription TEXT
);
