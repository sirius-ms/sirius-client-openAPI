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
import JSirius.model.AnnotatedSpectrum;
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
 * The MsData wraps all spectral input data belonging to a compound.   Each compound has:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra  - many MS spectra   Each non-merged spectrum has an index which can be used to access the spectrum.   In the future we might add some additional information like chromatographic peak or something similar
 */
@ApiModel(description = "The MsData wraps all spectral input data belonging to a compound.   Each compound has:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra  - many MS spectra   Each non-merged spectrum has an index which can be used to access the spectrum.   In the future we might add some additional information like chromatographic peak or something similar")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-16T21:08:39.612262Z[Etc/UTC]")
public class MsData {
  public static final String SERIALIZED_NAME_MERGED_MS1 = "mergedMs1";
  @SerializedName(SERIALIZED_NAME_MERGED_MS1)
  private AnnotatedSpectrum mergedMs1;

  public static final String SERIALIZED_NAME_MERGED_MS2 = "mergedMs2";
  @SerializedName(SERIALIZED_NAME_MERGED_MS2)
  private AnnotatedSpectrum mergedMs2;

  public static final String SERIALIZED_NAME_MS2_SPECTRA = "ms2Spectra";
  @SerializedName(SERIALIZED_NAME_MS2_SPECTRA)
  private List<AnnotatedSpectrum> ms2Spectra = null;

  public static final String SERIALIZED_NAME_MS1_SPECTRA = "ms1Spectra";
  @SerializedName(SERIALIZED_NAME_MS1_SPECTRA)
  private List<AnnotatedSpectrum> ms1Spectra = null;

  public MsData() {
  }

  public MsData mergedMs1(AnnotatedSpectrum mergedMs1) {
    
    this.mergedMs1 = mergedMs1;
    return this;
  }

   /**
   * Get mergedMs1
   * @return mergedMs1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public AnnotatedSpectrum getMergedMs1() {
    return mergedMs1;
  }


  public void setMergedMs1(AnnotatedSpectrum mergedMs1) {
    this.mergedMs1 = mergedMs1;
  }


  public MsData mergedMs2(AnnotatedSpectrum mergedMs2) {
    
    this.mergedMs2 = mergedMs2;
    return this;
  }

   /**
   * Get mergedMs2
   * @return mergedMs2
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public AnnotatedSpectrum getMergedMs2() {
    return mergedMs2;
  }


  public void setMergedMs2(AnnotatedSpectrum mergedMs2) {
    this.mergedMs2 = mergedMs2;
  }


  public MsData ms2Spectra(List<AnnotatedSpectrum> ms2Spectra) {
    
    this.ms2Spectra = ms2Spectra;
    return this;
  }

  public MsData addMs2SpectraItem(AnnotatedSpectrum ms2SpectraItem) {
    if (this.ms2Spectra == null) {
      this.ms2Spectra = new ArrayList<>();
    }
    this.ms2Spectra.add(ms2SpectraItem);
    return this;
  }

   /**
   * Get ms2Spectra
   * @return ms2Spectra
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<AnnotatedSpectrum> getMs2Spectra() {
    return ms2Spectra;
  }


  public void setMs2Spectra(List<AnnotatedSpectrum> ms2Spectra) {
    this.ms2Spectra = ms2Spectra;
  }


  public MsData ms1Spectra(List<AnnotatedSpectrum> ms1Spectra) {
    
    this.ms1Spectra = ms1Spectra;
    return this;
  }

  public MsData addMs1SpectraItem(AnnotatedSpectrum ms1SpectraItem) {
    if (this.ms1Spectra == null) {
      this.ms1Spectra = new ArrayList<>();
    }
    this.ms1Spectra.add(ms1SpectraItem);
    return this;
  }

   /**
   * Get ms1Spectra
   * @return ms1Spectra
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<AnnotatedSpectrum> getMs1Spectra() {
    return ms1Spectra;
  }


  public void setMs1Spectra(List<AnnotatedSpectrum> ms1Spectra) {
    this.ms1Spectra = ms1Spectra;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MsData msData = (MsData) o;
    return Objects.equals(this.mergedMs1, msData.mergedMs1) &&
        Objects.equals(this.mergedMs2, msData.mergedMs2) &&
        Objects.equals(this.ms2Spectra, msData.ms2Spectra) &&
        Objects.equals(this.ms1Spectra, msData.ms1Spectra);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mergedMs1, mergedMs2, ms2Spectra, ms1Spectra);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MsData {\n");
    sb.append("    mergedMs1: ").append(toIndentedString(mergedMs1)).append("\n");
    sb.append("    mergedMs2: ").append(toIndentedString(mergedMs2)).append("\n");
    sb.append("    ms2Spectra: ").append(toIndentedString(ms2Spectra)).append("\n");
    sb.append("    ms1Spectra: ").append(toIndentedString(ms1Spectra)).append("\n");
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
    openapiFields.add("mergedMs1");
    openapiFields.add("mergedMs2");
    openapiFields.add("ms2Spectra");
    openapiFields.add("ms1Spectra");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to MsData
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!MsData.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in MsData is not found in the empty JSON string", MsData.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!MsData.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `MsData` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      // validate the optional field `mergedMs1`
      if (jsonObj.get("mergedMs1") != null && !jsonObj.get("mergedMs1").isJsonNull()) {
        AnnotatedSpectrum.validateJsonObject(jsonObj.getAsJsonObject("mergedMs1"));
      }
      // validate the optional field `mergedMs2`
      if (jsonObj.get("mergedMs2") != null && !jsonObj.get("mergedMs2").isJsonNull()) {
        AnnotatedSpectrum.validateJsonObject(jsonObj.getAsJsonObject("mergedMs2"));
      }
      if (jsonObj.get("ms2Spectra") != null && !jsonObj.get("ms2Spectra").isJsonNull()) {
        JsonArray jsonArrayms2Spectra = jsonObj.getAsJsonArray("ms2Spectra");
        if (jsonArrayms2Spectra != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ms2Spectra").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ms2Spectra` to be an array in the JSON string but got `%s`", jsonObj.get("ms2Spectra").toString()));
          }

          // validate the optional field `ms2Spectra` (array)
          for (int i = 0; i < jsonArrayms2Spectra.size(); i++) {
            AnnotatedSpectrum.validateJsonObject(jsonArrayms2Spectra.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("ms1Spectra") != null && !jsonObj.get("ms1Spectra").isJsonNull()) {
        JsonArray jsonArrayms1Spectra = jsonObj.getAsJsonArray("ms1Spectra");
        if (jsonArrayms1Spectra != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ms1Spectra").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ms1Spectra` to be an array in the JSON string but got `%s`", jsonObj.get("ms1Spectra").toString()));
          }

          // validate the optional field `ms1Spectra` (array)
          for (int i = 0; i < jsonArrayms1Spectra.size(); i++) {
            AnnotatedSpectrum.validateJsonObject(jsonArrayms1Spectra.get(i).getAsJsonObject());
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!MsData.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'MsData' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<MsData> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(MsData.class));

       return (TypeAdapter<T>) new TypeAdapter<MsData>() {
           @Override
           public void write(JsonWriter out, MsData value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public MsData read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of MsData given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of MsData
  * @throws IOException if the JSON string is invalid with respect to MsData
  */
  public static MsData fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, MsData.class);
  }

 /**
  * Convert an instance of MsData to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

