SELECT /* [Location_Code]
      ,[Language_Code]
      ,[Category_ID]
      ,[Report_ID] */
      ,[English_Text_Description]
/*       ,[Description]
      ,[Location_Required]
      ,[Date_Range_Required]
      ,[Display_Date_Range]
      ,[Display_Order]
      ,[Modify_Fields]
      ,[Modify_Order]
      ,[Last_Date_Type]
      ,[Begin_Date]
      ,[End_Date] */
  FROM [POS].[dbo].[Reports]
WHERE Language_Code = 1