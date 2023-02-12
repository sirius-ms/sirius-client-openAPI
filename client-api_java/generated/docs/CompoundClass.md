

# CompoundClass

Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) | Specifies the classification ontology the CompoundClass belongs to. |  [optional] |
|**name** | **String** | Name of the compound class. |  [optional] |
|**description** | **String** | Description of the compound class. |  [optional] |
|**id** | **Integer** | Unique id of the class. Might be undefined for certain classification ontologies. |  [optional] |
|**probability** | **Double** | prediction probability |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| CLASSYFIRE | &quot;ClassyFire&quot; |
| NPC | &quot;NPC&quot; |



