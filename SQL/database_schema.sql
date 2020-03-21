USE master;
GO
-- Create database
IF DB_ID (N'Inventory_Manager') IS NOT NULL
DROP DATABASE Inventory_Manager;
GO
CREATE DATABASE Inventory_Manager;
GO
-- Verify the database files and sizes
SELECT name, size, size*1.0/128 AS [Size in MBs]
FROM sys.master_files
WHERE name = N'Inventory_Manager';
GO
USE Inventory_Manager;
GO
-- Create tables
CREATE TABLE ItemType (
    ItemTypeId INT PRIMARY KEY CLUSTERED,
    Name NVARCHAR(255)
);
GO
CREATE TABLE Item(
    ItemId INT PRIMARY KEY CLUSTERED,
    ItemTypeId INT
        REFERENCES ItemType(ItemTypeId),
    Name NVARCHAR(255) NOT NULL,
    Marca NVARCHAR(255) NOT NULL,
    Caducity DATETIME2 NOT NULL
        CONSTRAINT DF_Inventory_Manager_Caducity DEFAULT (GETDATE())
);