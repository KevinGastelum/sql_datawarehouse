/*
================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
================================================================
Script Purpose:
    This storeed procedure loads data into the 'bronze' schema from external csv files.
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the 'BULK INSERT' command to load data from csv Files to bronze tables.

Paraneters:
    None 
  tgis stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
  DECLARE @start