/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package JSirius.model;

import java.util.Objects;
import java.util.Arrays;
import JSirius.model.DBLink;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import JSirius.JSON;

/**
 * 
 */
@ApiModel(description = "")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-17T10:42:39.120967Z[Etc/UTC]")
public class StructureCandidate {
  public static final String SERIALIZED_NAME_STRUCTURE_NAME = "structureName";
  @SerializedName(SERIALIZED_NAME_STRUCTURE_NAME)
  private String structureName;

  public static final String SERIALIZED_NAME_SMILES = "smiles";
  @SerializedName(SERIALIZED_NAME_SMILES)
  private String smiles;

  public static final String SERIALIZED_NAME_CSI_SCORE = "csiScore";
  @SerializedName(SERIALIZED_NAME_CSI_SCORE)
  private Double csiScore;

  public static final String SERIALIZED_NAME_TANIMOTO_SIMILARITY = "tanimotoSimilarity";
  @SerializedName(SERIALIZED_NAME_TANIMOTO_SIMILARITY)
  private Double tanimotoSimilarity;

  public static final String SERIALIZED_NAME_CONFIDENCE_SCORE = "confidenceScore";
  @SerializedName(SERIALIZED_NAME_CONFIDENCE_SCORE)
  private Double confidenceScore;

  public static final String SERIALIZED_NAME_NUM_OF_PUB_MED_IDS = "numOfPubMedIds";
  @SerializedName(SERIALIZED_NAME_NUM_OF_PUB_MED_IDS)
  private Integer numOfPubMedIds;

  public static final String SERIALIZED_NAME_XLOG_P = "xlogP";
  @SerializedName(SERIALIZED_NAME_XLOG_P)
  private Double xlogP;

  public static final String SERIALIZED_NAME_INCHI_KEY = "inchiKey";
  @SerializedName(SERIALIZED_NAME_INCHI_KEY)
  private String inchiKey;

  public static final String SERIALIZED_NAME_FP_BITS_SET = "fpBitsSet";
  @SerializedName(SERIALIZED_NAME_FP_BITS_SET)
  private List<Integer> fpBitsSet = null;

  public static final String SERIALIZED_NAME_DB_LINKS = "dbLinks";
  @SerializedName(SERIALIZED_NAME_DB_LINKS)
  private List<DBLink> dbLinks = null;

  public static final String SERIALIZED_NAME_PUBMED_IDS = "pubmedIds";
  @SerializedName(SERIALIZED_NAME_PUBMED_IDS)
  private List<Integer> pubmedIds = null;

  public StructureCandidate() {
  }

  public StructureCandidate structureName(String structureName) {
    
    this.structureName = structureName;
    return this;
  }

   /**
   * Get structureName
   * @return structureName
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getStructureName() {
    return structureName;
  }


  public void setStructureName(String structureName) {
    this.structureName = structureName;
  }


  public StructureCandidate smiles(String smiles) {
    
    this.smiles = smiles;
    return this;
  }

   /**
   * Get smiles
   * @return smiles
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getSmiles() {
    return smiles;
  }


  public void setSmiles(String smiles) {
    this.smiles = smiles;
  }


  public StructureCandidate csiScore(Double csiScore) {
    
    this.csiScore = csiScore;
    return this;
  }

   /**
   * Get csiScore
   * @return csiScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getCsiScore() {
    return csiScore;
  }


  public void setCsiScore(Double csiScore) {
    this.csiScore = csiScore;
  }


  public StructureCandidate tanimotoSimilarity(Double tanimotoSimilarity) {
    
    this.tanimotoSimilarity = tanimotoSimilarity;
    return this;
  }

   /**
   * Get tanimotoSimilarity
   * @return tanimotoSimilarity
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getTanimotoSimilarity() {
    return tanimotoSimilarity;
  }


  public void setTanimotoSimilarity(Double tanimotoSimilarity) {
    this.tanimotoSimilarity = tanimotoSimilarity;
  }


  public StructureCandidate confidenceScore(Double confidenceScore) {
    
    this.confidenceScore = confidenceScore;
    return this;
  }

   /**
   * Get confidenceScore
   * @return confidenceScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getConfidenceScore() {
    return confidenceScore;
  }


  public void setConfidenceScore(Double confidenceScore) {
    this.confidenceScore = confidenceScore;
  }


  public StructureCandidate numOfPubMedIds(Integer numOfPubMedIds) {
    
    this.numOfPubMedIds = numOfPubMedIds;
    return this;
  }

   /**
   * Get numOfPubMedIds
   * @return numOfPubMedIds
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getNumOfPubMedIds() {
    return numOfPubMedIds;
  }


  public void setNumOfPubMedIds(Integer numOfPubMedIds) {
    this.numOfPubMedIds = numOfPubMedIds;
  }


  public StructureCandidate xlogP(Double xlogP) {
    
    this.xlogP = xlogP;
    return this;
  }

   /**
   * Get xlogP
   * @return xlogP
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getXlogP() {
    return xlogP;
  }


  public void setXlogP(Double xlogP) {
    this.xlogP = xlogP;
  }


  public StructureCandidate inchiKey(String inchiKey) {
    
    this.inchiKey = inchiKey;
    return this;
  }

   /**
   * Get inchiKey
   * @return inchiKey
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getInchiKey() {
    return inchiKey;
  }


  public void setInchiKey(String inchiKey) {
    this.inchiKey = inchiKey;
  }


  public StructureCandidate fpBitsSet(List<Integer> fpBitsSet) {
    
    this.fpBitsSet = fpBitsSet;
    return this;
  }

  public StructureCandidate addFpBitsSetItem(Integer fpBitsSetItem) {
    if (this.fpBitsSet == null) {
      this.fpBitsSet = new ArrayList<>();
    }
    this.fpBitsSet.add(fpBitsSetItem);
    return this;
  }

   /**
   * Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter
   * @return fpBitsSet
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Array containing the indices of the molecular fingerprint that are available in the structure (1)  OPTIONAL: needs to be added by parameter")

  public List<Integer> getFpBitsSet() {
    return fpBitsSet;
  }


  public void setFpBitsSet(List<Integer> fpBitsSet) {
    this.fpBitsSet = fpBitsSet;
  }


  public StructureCandidate dbLinks(List<DBLink> dbLinks) {
    
    this.dbLinks = dbLinks;
    return this;
  }

  public StructureCandidate addDbLinksItem(DBLink dbLinksItem) {
    if (this.dbLinks == null) {
      this.dbLinks = new ArrayList<>();
    }
    this.dbLinks.add(dbLinksItem);
    return this;
  }

   /**
   * List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter
   * @return dbLinks
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter")

  public List<DBLink> getDbLinks() {
    return dbLinks;
  }


  public void setDbLinks(List<DBLink> dbLinks) {
    this.dbLinks = dbLinks;
  }


  public StructureCandidate pubmedIds(List<Integer> pubmedIds) {
    
    this.pubmedIds = pubmedIds;
    return this;
  }

  public StructureCandidate addPubmedIdsItem(Integer pubmedIdsItem) {
    if (this.pubmedIds == null) {
      this.pubmedIds = new ArrayList<>();
    }
    this.pubmedIds.add(pubmedIdsItem);
    return this;
  }

   /**
   * PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter
   * @return pubmedIds
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "PubMed IDs belonging to this structure candidate  OPTIONAL: needs to be added by parameter")

  public List<Integer> getPubmedIds() {
    return pubmedIds;
  }


  public void setPubmedIds(List<Integer> pubmedIds) {
    this.pubmedIds = pubmedIds;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StructureCandidate structureCandidate = (StructureCandidate) o;
    return Objects.equals(this.structureName, structureCandidate.structureName) &&
        Objects.equals(this.smiles, structureCandidate.smiles) &&
        Objects.equals(this.csiScore, structureCandidate.csiScore) &&
        Objects.equals(this.tanimotoSimilarity, structureCandidate.tanimotoSimilarity) &&
        Objects.equals(this.confidenceScore, structureCandidate.confidenceScore) &&
        Objects.equals(this.numOfPubMedIds, structureCandidate.numOfPubMedIds) &&
        Objects.equals(this.xlogP, structureCandidate.xlogP) &&
        Objects.equals(this.inchiKey, structureCandidate.inchiKey) &&
        Objects.equals(this.fpBitsSet, structureCandidate.fpBitsSet) &&
        Objects.equals(this.dbLinks, structureCandidate.dbLinks) &&
        Objects.equals(this.pubmedIds, structureCandidate.pubmedIds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(structureName, smiles, csiScore, tanimotoSimilarity, confidenceScore, numOfPubMedIds, xlogP, inchiKey, fpBitsSet, dbLinks, pubmedIds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StructureCandidate {\n");
    sb.append("    structureName: ").append(toIndentedString(structureName)).append("\n");
    sb.append("    smiles: ").append(toIndentedString(smiles)).append("\n");
    sb.append("    csiScore: ").append(toIndentedString(csiScore)).append("\n");
    sb.append("    tanimotoSimilarity: ").append(toIndentedString(tanimotoSimilarity)).append("\n");
    sb.append("    confidenceScore: ").append(toIndentedString(confidenceScore)).append("\n");
    sb.append("    numOfPubMedIds: ").append(toIndentedString(numOfPubMedIds)).append("\n");
    sb.append("    xlogP: ").append(toIndentedString(xlogP)).append("\n");
    sb.append("    inchiKey: ").append(toIndentedString(inchiKey)).append("\n");
    sb.append("    fpBitsSet: ").append(toIndentedString(fpBitsSet)).append("\n");
    sb.append("    dbLinks: ").append(toIndentedString(dbLinks)).append("\n");
    sb.append("    pubmedIds: ").append(toIndentedString(pubmedIds)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("structureName");
    openapiFields.add("smiles");
    openapiFields.add("csiScore");
    openapiFields.add("tanimotoSimilarity");
    openapiFields.add("confidenceScore");
    openapiFields.add("numOfPubMedIds");
    openapiFields.add("xlogP");
    openapiFields.add("inchiKey");
    openapiFields.add("fpBitsSet");
    openapiFields.add("dbLinks");
    openapiFields.add("pubmedIds");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to StructureCandidate
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!StructureCandidate.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in StructureCandidate is not found in the empty JSON string", StructureCandidate.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!StructureCandidate.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `StructureCandidate` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("structureName") != null && !jsonObj.get("structureName").isJsonNull()) && !jsonObj.get("structureName").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `structureName` to be a primitive type in the JSON string but got `%s`", jsonObj.get("structureName").toString()));
      }
      if ((jsonObj.get("smiles") != null && !jsonObj.get("smiles").isJsonNull()) && !jsonObj.get("smiles").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `smiles` to be a primitive type in the JSON string but got `%s`", jsonObj.get("smiles").toString()));
      }
      if ((jsonObj.get("inchiKey") != null && !jsonObj.get("inchiKey").isJsonNull()) && !jsonObj.get("inchiKey").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `inchiKey` to be a primitive type in the JSON string but got `%s`", jsonObj.get("inchiKey").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("fpBitsSet") != null && !jsonObj.get("fpBitsSet").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `fpBitsSet` to be an array in the JSON string but got `%s`", jsonObj.get("fpBitsSet").toString()));
      }
      if (jsonObj.get("dbLinks") != null && !jsonObj.get("dbLinks").isJsonNull()) {
        JsonArray jsonArraydbLinks = jsonObj.getAsJsonArray("dbLinks");
        if (jsonArraydbLinks != null) {
          // ensure the json data is an array
          if (!jsonObj.get("dbLinks").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `dbLinks` to be an array in the JSON string but got `%s`", jsonObj.get("dbLinks").toString()));
          }

          // validate the optional field `dbLinks` (array)
          for (int i = 0; i < jsonArraydbLinks.size(); i++) {
            DBLink.validateJsonObject(jsonArraydbLinks.get(i).getAsJsonObject());
          };
        }
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("pubmedIds") != null && !jsonObj.get("pubmedIds").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `pubmedIds` to be an array in the JSON string but got `%s`", jsonObj.get("pubmedIds").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!StructureCandidate.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'StructureCandidate' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<StructureCandidate> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(StructureCandidate.class));

       return (TypeAdapter<T>) new TypeAdapter<StructureCandidate>() {
           @Override
           public void write(JsonWriter out, StructureCandidate value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public StructureCandidate read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of StructureCandidate given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of StructureCandidate
  * @throws IOException if the JSON string is invalid with respect to StructureCandidate
  */
  public static StructureCandidate fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, StructureCandidate.class);
  }

 /**
  * Convert an instance of StructureCandidate to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

