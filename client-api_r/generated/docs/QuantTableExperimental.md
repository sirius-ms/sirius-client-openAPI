# Rsirius::QuantTableExperimental

EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantificationMeasure** | **character** |  | [optional] [Enum: [APEX_INTENSITY, AREA_UNDER_CURVE]] 
**rowType** | **character** |  | [optional] [Enum: [FEATURES, COMPOUNDS]] 
**rowIds** | **array[integer]** |  | [optional] 
**columnIds** | **array[integer]** |  | [optional] 
**rowNames** | **array[character]** |  | [optional] 
**columnNames** | **array[character]** |  | [optional] 
**values** | [**array[array[numeric]]**](array.md) |  | [optional] 


