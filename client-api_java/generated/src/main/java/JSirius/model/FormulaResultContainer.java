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
import JSirius.model.FormulaCandidate;
import JSirius.model.ResultOverview;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

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
 * Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.
 */
@ApiModel(description = "Container for formula level results that holds a unique identifier (molecular formula + adduct).  It can be extended/annotated with a list of results that are available for this formula candidate and their scores.  It can further be extended/annotated with the action formula candidate results.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-19T15:41:49.916868Z[Etc/UTC]")
public class FormulaResultContainer {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_MOLECULAR_FORMULA = "molecularFormula";
  @SerializedName(SERIALIZED_NAME_MOLECULAR_FORMULA)
  private String molecularFormula;

  public static final String SERIALIZED_NAME_ADDUCT = "adduct";
  @SerializedName(SERIALIZED_NAME_ADDUCT)
  private String adduct;

  public static final String SERIALIZED_NAME_RESULT_OVERVIEW = "resultOverview";
  @SerializedName(SERIALIZED_NAME_RESULT_OVERVIEW)
  private ResultOverview resultOverview;

  public static final String SERIALIZED_NAME_CANDIDATE = "candidate";
  @SerializedName(SERIALIZED_NAME_CANDIDATE)
  private FormulaCandidate candidate;

  public FormulaResultContainer() {
  }

  public FormulaResultContainer id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier of this formula candidate
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Unique identifier of this formula candidate")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public FormulaResultContainer molecularFormula(String molecularFormula) {
    
    this.molecularFormula = molecularFormula;
    return this;
  }

   /**
   * molecular formula of this formula candidate
   * @return molecularFormula
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "molecular formula of this formula candidate")

  public String getMolecularFormula() {
    return molecularFormula;
  }


  public void setMolecularFormula(String molecularFormula) {
    this.molecularFormula = molecularFormula;
  }


  public FormulaResultContainer adduct(String adduct) {
    
    this.adduct = adduct;
    return this;
  }

   /**
   * Adduct of this formula candidate
   * @return adduct
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Adduct of this formula candidate")

  public String getAdduct() {
    return adduct;
  }


  public void setAdduct(String adduct) {
    this.adduct = adduct;
  }


  public FormulaResultContainer resultOverview(ResultOverview resultOverview) {
    
    this.resultOverview = resultOverview;
    return this;
  }

   /**
   * Get resultOverview
   * @return resultOverview
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ResultOverview getResultOverview() {
    return resultOverview;
  }


  public void setResultOverview(ResultOverview resultOverview) {
    this.resultOverview = resultOverview;
  }


  public FormulaResultContainer candidate(FormulaCandidate candidate) {
    
    this.candidate = candidate;
    return this;
  }

   /**
   * Get candidate
   * @return candidate
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public FormulaCandidate getCandidate() {
    return candidate;
  }


  public void setCandidate(FormulaCandidate candidate) {
    this.candidate = candidate;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FormulaResultContainer formulaResultContainer = (FormulaResultContainer) o;
    return Objects.equals(this.id, formulaResultContainer.id) &&
        Objects.equals(this.molecularFormula, formulaResultContainer.molecularFormula) &&
        Objects.equals(this.adduct, formulaResultContainer.adduct) &&
        Objects.equals(this.resultOverview, formulaResultContainer.resultOverview) &&
        Objects.equals(this.candidate, formulaResultContainer.candidate);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, molecularFormula, adduct, resultOverview, candidate);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FormulaResultContainer {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    molecularFormula: ").append(toIndentedString(molecularFormula)).append("\n");
    sb.append("    adduct: ").append(toIndentedString(adduct)).append("\n");
    sb.append("    resultOverview: ").append(toIndentedString(resultOverview)).append("\n");
    sb.append("    candidate: ").append(toIndentedString(candidate)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("molecularFormula");
    openapiFields.add("adduct");
    openapiFields.add("resultOverview");
    openapiFields.add("candidate");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to FormulaResultContainer
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!FormulaResultContainer.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in FormulaResultContainer is not found in the empty JSON string", FormulaResultContainer.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!FormulaResultContainer.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `FormulaResultContainer` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("molecularFormula") != null && !jsonObj.get("molecularFormula").isJsonNull()) && !jsonObj.get("molecularFormula").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `molecularFormula` to be a primitive type in the JSON string but got `%s`", jsonObj.get("molecularFormula").toString()));
      }
      if ((jsonObj.get("adduct") != null && !jsonObj.get("adduct").isJsonNull()) && !jsonObj.get("adduct").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `adduct` to be a primitive type in the JSON string but got `%s`", jsonObj.get("adduct").toString()));
      }
      // validate the optional field `resultOverview`
      if (jsonObj.get("resultOverview") != null && !jsonObj.get("resultOverview").isJsonNull()) {
        ResultOverview.validateJsonObject(jsonObj.getAsJsonObject("resultOverview"));
      }
      // validate the optional field `candidate`
      if (jsonObj.get("candidate") != null && !jsonObj.get("candidate").isJsonNull()) {
        FormulaCandidate.validateJsonObject(jsonObj.getAsJsonObject("candidate"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!FormulaResultContainer.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'FormulaResultContainer' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<FormulaResultContainer> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(FormulaResultContainer.class));

       return (TypeAdapter<T>) new TypeAdapter<FormulaResultContainer>() {
           @Override
           public void write(JsonWriter out, FormulaResultContainer value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public FormulaResultContainer read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of FormulaResultContainer given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of FormulaResultContainer
  * @throws IOException if the JSON string is invalid with respect to FormulaResultContainer
  */
  public static FormulaResultContainer fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, FormulaResultContainer.class);
  }

 /**
  * Convert an instance of FormulaResultContainer to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

