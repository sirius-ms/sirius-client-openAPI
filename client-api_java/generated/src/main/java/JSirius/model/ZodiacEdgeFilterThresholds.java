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
 * 
 */
@ApiModel(description = "")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-12-20T21:57:08.029346Z[Etc/UTC]")
public class ZodiacEdgeFilterThresholds {
  public static final String SERIALIZED_NAME_THRESHOLD_FILTER = "thresholdFilter";
  @SerializedName(SERIALIZED_NAME_THRESHOLD_FILTER)
  private Double thresholdFilter;

  public static final String SERIALIZED_NAME_MIN_LOCAL_CANDIDATES = "minLocalCandidates";
  @SerializedName(SERIALIZED_NAME_MIN_LOCAL_CANDIDATES)
  private Integer minLocalCandidates;

  public static final String SERIALIZED_NAME_MIN_LOCAL_CONNECTIONS = "minLocalConnections";
  @SerializedName(SERIALIZED_NAME_MIN_LOCAL_CONNECTIONS)
  private Integer minLocalConnections;

  public static final String SERIALIZED_NAME_IDENTIFIER = "identifier";
  @SerializedName(SERIALIZED_NAME_IDENTIFIER)
  private String identifier;

  public ZodiacEdgeFilterThresholds() {
  }

  public ZodiacEdgeFilterThresholds thresholdFilter(Double thresholdFilter) {
    
    this.thresholdFilter = thresholdFilter;
    return this;
  }

   /**
   * Get thresholdFilter
   * @return thresholdFilter
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getThresholdFilter() {
    return thresholdFilter;
  }


  public void setThresholdFilter(Double thresholdFilter) {
    this.thresholdFilter = thresholdFilter;
  }


  public ZodiacEdgeFilterThresholds minLocalCandidates(Integer minLocalCandidates) {
    
    this.minLocalCandidates = minLocalCandidates;
    return this;
  }

   /**
   * Get minLocalCandidates
   * @return minLocalCandidates
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getMinLocalCandidates() {
    return minLocalCandidates;
  }


  public void setMinLocalCandidates(Integer minLocalCandidates) {
    this.minLocalCandidates = minLocalCandidates;
  }


  public ZodiacEdgeFilterThresholds minLocalConnections(Integer minLocalConnections) {
    
    this.minLocalConnections = minLocalConnections;
    return this;
  }

   /**
   * Get minLocalConnections
   * @return minLocalConnections
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getMinLocalConnections() {
    return minLocalConnections;
  }


  public void setMinLocalConnections(Integer minLocalConnections) {
    this.minLocalConnections = minLocalConnections;
  }


  public ZodiacEdgeFilterThresholds identifier(String identifier) {
    
    this.identifier = identifier;
    return this;
  }

   /**
   * Get identifier
   * @return identifier
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getIdentifier() {
    return identifier;
  }


  public void setIdentifier(String identifier) {
    this.identifier = identifier;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ZodiacEdgeFilterThresholds zodiacEdgeFilterThresholds = (ZodiacEdgeFilterThresholds) o;
    return Objects.equals(this.thresholdFilter, zodiacEdgeFilterThresholds.thresholdFilter) &&
        Objects.equals(this.minLocalCandidates, zodiacEdgeFilterThresholds.minLocalCandidates) &&
        Objects.equals(this.minLocalConnections, zodiacEdgeFilterThresholds.minLocalConnections) &&
        Objects.equals(this.identifier, zodiacEdgeFilterThresholds.identifier);
  }

  @Override
  public int hashCode() {
    return Objects.hash(thresholdFilter, minLocalCandidates, minLocalConnections, identifier);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ZodiacEdgeFilterThresholds {\n");
    sb.append("    thresholdFilter: ").append(toIndentedString(thresholdFilter)).append("\n");
    sb.append("    minLocalCandidates: ").append(toIndentedString(minLocalCandidates)).append("\n");
    sb.append("    minLocalConnections: ").append(toIndentedString(minLocalConnections)).append("\n");
    sb.append("    identifier: ").append(toIndentedString(identifier)).append("\n");
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
    openapiFields.add("thresholdFilter");
    openapiFields.add("minLocalCandidates");
    openapiFields.add("minLocalConnections");
    openapiFields.add("identifier");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to ZodiacEdgeFilterThresholds
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!ZodiacEdgeFilterThresholds.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ZodiacEdgeFilterThresholds is not found in the empty JSON string", ZodiacEdgeFilterThresholds.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!ZodiacEdgeFilterThresholds.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ZodiacEdgeFilterThresholds` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("identifier") != null && !jsonObj.get("identifier").isJsonNull()) && !jsonObj.get("identifier").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `identifier` to be a primitive type in the JSON string but got `%s`", jsonObj.get("identifier").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ZodiacEdgeFilterThresholds.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ZodiacEdgeFilterThresholds' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ZodiacEdgeFilterThresholds> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ZodiacEdgeFilterThresholds.class));

       return (TypeAdapter<T>) new TypeAdapter<ZodiacEdgeFilterThresholds>() {
           @Override
           public void write(JsonWriter out, ZodiacEdgeFilterThresholds value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ZodiacEdgeFilterThresholds read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ZodiacEdgeFilterThresholds given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ZodiacEdgeFilterThresholds
  * @throws IOException if the JSON string is invalid with respect to ZodiacEdgeFilterThresholds
  */
  public static ZodiacEdgeFilterThresholds fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ZodiacEdgeFilterThresholds.class);
  }

 /**
  * Convert an instance of ZodiacEdgeFilterThresholds to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

