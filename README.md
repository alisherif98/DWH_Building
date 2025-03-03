# ETL Pipeline for Data Warehouse (DWH) with Slowly Changing Dimensions

## Overview
Brief introduction about the project.

## Objectives
- Load required tables from the source system to the staging area (STG) as a one-to-one mapping.
- Load data from STG to DWH according to specified requirements.
- Maintain 7 daily snapshots in the STG area.
- Ensure fact tables in DWH are daily snapshot tables.
- Implement dimension tables as Slowly Changing Dimension Type 2.
- Estimate time for various tasks, including data analysis, ETL design, and implementation.
- Introduce additional columns in STG and DWH as necessary.

## Data Model

### Fact Table: `F_SalesOrder`
| Column Name |
|------------|
| SalesOrderID |
| SalesOrderDetailID |
| RevisionNumber |
| OrderDate |
| DueDate |
| ShipDate |
| Status |
| OnlineOrderFlag |
| SalesOrderNumber |
| PurchaseOrderNumber |
| AccountNumber |
| CarrierTrackingNumber |
| OrderQty |
| UnitPrice |
| SpecialOffer_DiscountPct |
| SpecialOffer_Description |
| LineTotal |
| Territory_CountryRegionCode |
| FromCurrencyName |
| ToCurrencyName |
| CurrencyAverageRate |
| SubTotal |
| TaxAmt |
| Freight |
| TotalDue |
| Comment |
| SalesPersonName |
| CreditCardApprovalCode |
| CardType |
| CardNumber |
| CustomerID |
| ProductID |

### Dimension Table: `D_Customer`
| Column Name |
|------------|
| CustomerID |
| Name |
| Phone |
| EmailAddress |
| AccountNumber |
| StoreName |

### Dimension Table: `D_Product`
| Column Name |
|------------|
| ProductID |
| Name |
| ProductNumber |
| MakeFlag |
| FinishedGoodsFlag |
| Color |
| SafetyStockLevel |
| ReorderPoint |
| StandardCost |
| ListPrice |
| Size |
| SellStartDate |
| SellEndDate |
| DiscontinuedDate |

## ETL Workflow
1. **Source to Staging (STG) Load**  
   - One-to-one mapping from the source system.
   - Daily snapshots maintained (up to 7 snapshots stored).
   - Additional tracking columns added as needed.
   
2. **Staging to Data Warehouse (DWH) Load**  
   - Fact tables stored as daily snapshots.
   - Dimension tables implemented as SCD Type 2.
   - Business rules applied for data transformation.

3. **Incremental Load Strategy**  
   - Track changes using timestamps and keys.
   - Maintain historical data in dimension tables.
   - Ensure data consistency and accuracy.


## Technology Stack
- **Database:** Oracle / SQL Server 
- **ETL Tool:** Informatica Data Engineering Integration / SQL Scripts



