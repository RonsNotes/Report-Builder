SELECT SUM([OrderQuantity]) Qty, SUM([ExtendedAmount]) Amount,
p.EnglishPromotionName 'Promotion',
d.CalendarYear Year
FROM [dbo].[FactInternetSales] fis
JOIN dbo.DimPromotion p ON fis.PromotionKey = p.PromotionKey
JOIN .dbo.DimDate d ON  d.DateKey = fis.ShipDateKey
--WHERE d.CalendarYear = @Year
GROUP BY  d.CalendarYear, p.EnglishPromotionName
ORDER BY p.EnglishPromotionName, d.CalendarYear