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
 * User/developer friendly parameter subset for the CSI:FingerID Fingerprint tool
 */
@ApiModel(description = "User/developer friendly parameter subset for the CSI:FingerID Fingerprint tool")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-01-02T22:10:58.538381Z[Etc/UTC]")
public class FingerprintPrediction {
  public static final String SERIALIZED_NAME_ENABLED = "enabled";
  @SerializedName(SERIALIZED_NAME_ENABLED)
  private Boolean enabled;

  public static final String SERIALIZED_NAME_USE_SCORE_THRESHOLD = "useScoreThreshold";
  @SerializedName(SERIALIZED_NAME_USE_SCORE_THRESHOLD)
  private Boolean useScoreThreshold;

  public FingerprintPrediction() {
  }

  public FingerprintPrediction enabled(Boolean enabled) {
    
    this.enabled = enabled;
    return this;
  }

   /**
   * tags whether the tool is enabled
   * @return enabled
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "tags whether the tool is enabled")

  public Boolean getEnabled() {
    return enabled;
  }


  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }


  public FingerprintPrediction useScoreThreshold(Boolean useScoreThreshold) {
    
    this.useScoreThreshold = useScoreThreshold;
    return this;
  }

   /**
   * If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended.
   * @return useScoreThreshold
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "If true, an adaptive soft threshold will be applied to only compute Fingerprints for promising formula candidates  Enabling is highly recommended.")

  public Boolean getUseScoreThreshold() {
    return useScoreThreshold;
  }


  public void setUseScoreThreshold(Boolean useScoreThreshold) {
    this.useScoreThreshold = useScoreThreshold;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FingerprintPrediction fingerprintPrediction = (FingerprintPrediction) o;
    return Objects.equals(this.enabled, fingerprintPrediction.enabled) &&
        Objects.equals(this.useScoreThreshold, fingerprintPrediction.useScoreThreshold);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, useScoreThreshold);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FingerprintPrediction {\n");
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    useScoreThreshold: ").append(toIndentedString(useScoreThreshold)).append("\n");
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
    openapiFields.add("enabled");
    openapiFields.add("useScoreThreshold");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to FingerprintPrediction
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!FingerprintPrediction.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in FingerprintPrediction is not found in the empty JSON string", FingerprintPrediction.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!FingerprintPrediction.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `FingerprintPrediction` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!FingerprintPrediction.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'FingerprintPrediction' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<FingerprintPrediction> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(FingerprintPrediction.class));

       return (TypeAdapter<T>) new TypeAdapter<FingerprintPrediction>() {
           @Override
           public void write(JsonWriter out, FingerprintPrediction value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public FingerprintPrediction read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of FingerprintPrediction given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of FingerprintPrediction
  * @throws IOException if the JSON string is invalid with respect to FingerprintPrediction
  */
  public static FingerprintPrediction fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, FingerprintPrediction.class);
  }

 /**
  * Convert an instance of FingerprintPrediction to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

