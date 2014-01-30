Select T.TABLE_SCHEMA, T.TABLE_NAME
    , Stuff(
        (
        Select ', ' + C.COLUMN_NAME
        From [192.168.140.11].POS.INFORMATION_SCHEMA.COLUMNS As C
        Where C.TABLE_SCHEMA = T.TABLE_SCHEMA
            And C.TABLE_NAME = T.TABLE_NAME
        Order By C.ORDINAL_POSITION
        For Xml Path('')
        ), 1, 2, '') As Columns
From [192.168.140.11].POS.INFORMATION_SCHEMA.TABLES As T
    Left Join [192.168.140.11].POS.INFORMATION_SCHEMA.VIEWS As V
        On V.TABLE_SCHEMA = T.TABLE_SCHEMA
            And V.TABLE_NAME = T.TABLE_NAME
Where V.TABLE_NAME Is Null