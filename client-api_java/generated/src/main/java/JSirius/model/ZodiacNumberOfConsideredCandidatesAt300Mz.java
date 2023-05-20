/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3
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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class ZodiacNumberOfConsideredCandidatesAt300Mz {
  public static final String SERIALIZED_NAME_VALUE = "value";
  @SerializedName(SERIALIZED_NAME_VALUE)
  private Integer value;

  public static final String SERIALIZED_NAME_IDENTIFIER = "identifier";
  @SerializedName(SERIALIZED_NAME_IDENTIFIER)
  private String identifier;

  public ZodiacNumberOfConsideredCandidatesAt300Mz() {
  }

  public ZodiacNumberOfConsideredCandidatesAt300Mz value(Integer value) {
    
    this.value = value;
    return this;
  }

   /**
   * Get value
   * @return value
  **/
  @javax.annotation.Nullable

  public Integer getValue() {
    return value;
  }


  public void setValue(Integer value) {
    this.value = value;
  }


  public ZodiacNumberOfConsideredCandidatesAt300Mz identifier(String identifier) {
    
    this.identifier = identifier;
    return this;
  }

   /**
   * Get identifier
   * @return identifier
  **/
  @javax.annotation.Nullable

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
    ZodiacNumberOfConsideredCandidatesAt300Mz zodiacNumberOfConsideredCandidatesAt300Mz = (ZodiacNumberOfConsideredCandidatesAt300Mz) o;
    return Objects.equals(this.value, zodiacNumberOfConsideredCandidatesAt300Mz.value) &&
        Objects.equals(this.identifier, zodiacNumberOfConsideredCandidatesAt300Mz.identifier);
  }

  @Override
  public int hashCode() {
    return Objects.hash(value, identifier);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ZodiacNumberOfConsideredCandidatesAt300Mz {\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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
    openapiFields.add("value");
    openapiFields.add("identifier");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to ZodiacNumberOfConsideredCandidatesAt300Mz
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!ZodiacNumberOfConsideredCandidatesAt300Mz.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ZodiacNumberOfConsideredCandidatesAt300Mz is not found in the empty JSON string", ZodiacNumberOfConsideredCandidatesAt300Mz.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!ZodiacNumberOfConsideredCandidatesAt300Mz.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ZodiacNumberOfConsideredCandidatesAt300Mz` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
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
       if (!ZodiacNumberOfConsideredCandidatesAt300Mz.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ZodiacNumberOfConsideredCandidatesAt300Mz' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ZodiacNumberOfConsideredCandidatesAt300Mz> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ZodiacNumberOfConsideredCandidatesAt300Mz.class));

       return (TypeAdapter<T>) new TypeAdapter<ZodiacNumberOfConsideredCandidatesAt300Mz>() {
           @Override
           public void write(JsonWriter out, ZodiacNumberOfConsideredCandidatesAt300Mz value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ZodiacNumberOfConsideredCandidatesAt300Mz read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ZodiacNumberOfConsideredCandidatesAt300Mz given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ZodiacNumberOfConsideredCandidatesAt300Mz
  * @throws IOException if the JSON string is invalid with respect to ZodiacNumberOfConsideredCandidatesAt300Mz
  */
  public static ZodiacNumberOfConsideredCandidatesAt300Mz fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ZodiacNumberOfConsideredCandidatesAt300Mz.class);
  }

 /**
  * Convert an instance of ZodiacNumberOfConsideredCandidatesAt300Mz to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

