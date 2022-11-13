# RubySirius::StructureCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **structure_name** | **String** |  | [optional] |
| **smiles** | **String** |  | [optional] |
| **csi_score** | **Float** |  | [optional] |
| **tanimoto_similarity** | **Float** |  | [optional] |
| **confidence_score** | **Float** |  | [optional] |
| **num_of_pub_med_ids** | **Integer** |  | [optional] |
| **xlog_p** | **Float** |  | [optional] |
| **inchi_key** | **String** |  | [optional] |
| **fp_bits_set** | **Array&lt;Integer&gt;** | Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter | [optional] |
| **db_links** | [**Array&lt;DBLink&gt;**](DBLink.md) | List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] |
| **pubmed_ids** | **Array&lt;Integer&gt;** | PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter | [optional] |

## Example

```ruby
require 'ruby_sirius'

instance = RubySirius::StructureCandidate.new(
  structure_name: null,
  smiles: null,
  csi_score: null,
  tanimoto_similarity: null,
  confidence_score: null,
  num_of_pub_med_ids: null,
  xlog_p: null,
  inchi_key: null,
  fp_bits_set: null,
  db_links: null,
  pubmed_ids: null
)
```

