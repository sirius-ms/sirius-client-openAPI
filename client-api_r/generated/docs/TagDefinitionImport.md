# RSirius::TagDefinitionImport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tagName** | **character** | Name of this tag defined by this definition (key) | 
**description** | **character** | A human-readable description about the purpose of this tag. | [optional] 
**tagType** | **character** | A simple string based identifier to specify the type/scope/purpose of this tag. | [optional] 
**valueType** | **character** |  | [Enum: [NONE, BOOLEAN, INTEGER, REAL, TEXT, DATE, TIME]] 
**possibleValues** | [**array[AnyValue]**](AnyValue.md) |  | [optional] 
**minValue** | [**AnyValue**](AnyValue.md) |  | [optional] 
**maxValue** | [**AnyValue**](AnyValue.md) |  | [optional] 


