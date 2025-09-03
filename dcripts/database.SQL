/* Create Database and Schemas
================================
Script purpose:
  This script creates a new database named "datawarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreate. Additionally, the script sets up three schemas within the database => Brenze, silver , gold.

  WARNING:]
    This script will drop entire DataWarehouse database, if it exists.
    All data in database will be permanently deleted. Procede with caution and esure to have backups running this script.
    */


Use master;
GO

  -- Drop and reacreate the ' Datawarehouse ' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
    drop database dATAwAREHOUSE;
END
GO
  
Create DATABASE DataWarehouse;
GO

-- Create the Data Warehouse
Use DataWarehouse;
GO


-- Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
