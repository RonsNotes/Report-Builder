SELECT
  FactInternetSales.ProductKey AS [ProductKey]
  ,[EnglishProductCategoryName]
  ,DimProduct.EnglishProductName
  ,FactInternetSales.UnitPrice
  ,FactInternetSales.TotalProductCost

FROM
  DimProductSubcategory
  INNER JOIN DimProductCategory
    ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
  INNER JOIN DimProduct
    ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
  INNER JOIN FactInternetSales
    ON DimProduct.ProductKey = FactInternetSales.ProductKey