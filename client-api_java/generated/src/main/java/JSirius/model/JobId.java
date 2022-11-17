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
import JSirius.model.JobProgress;
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
 * Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.
 */
@ApiModel(description = "Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-17T07:35:40.345480Z[Etc/UTC]")
public class JobId {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_COMMAND = "command";
  @SerializedName(SERIALIZED_NAME_COMMAND)
  private String command;

  public static final String SERIALIZED_NAME_PROGRESS = "progress";
  @SerializedName(SERIALIZED_NAME_PROGRESS)
  private JobProgress progress;

  public static final String SERIALIZED_NAME_AFFECTED_COMPOUND_IDS = "affectedCompoundIds";
  @SerializedName(SERIALIZED_NAME_AFFECTED_COMPOUND_IDS)
  private List<String> affectedCompoundIds = null;

  public JobId() {
  }

  public JobId id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier to access the job via the API
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Unique identifier to access the job via the API")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public JobId command(String command) {
    
    this.command = command;
    return this;
  }

   /**
   * Command string of the executed Task
   * @return command
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Command string of the executed Task")

  public String getCommand() {
    return command;
  }


  public void setCommand(String command) {
    this.command = command;
  }


  public JobId progress(JobProgress progress) {
    
    this.progress = progress;
    return this;
  }

   /**
   * Get progress
   * @return progress
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public JobProgress getProgress() {
    return progress;
  }


  public void setProgress(JobProgress progress) {
    this.progress = progress;
  }


  public JobId affectedCompoundIds(List<String> affectedCompoundIds) {
    
    this.affectedCompoundIds = affectedCompoundIds;
    return this;
  }

  public JobId addAffectedCompoundIdsItem(String affectedCompoundIdsItem) {
    if (this.affectedCompoundIds == null) {
      this.affectedCompoundIds = new ArrayList<>();
    }
    this.affectedCompoundIds.add(affectedCompoundIdsItem);
    return this;
  }

   /**
   * List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished
   * @return affectedCompoundIds
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished")

  public List<String> getAffectedCompoundIds() {
    return affectedCompoundIds;
  }


  public void setAffectedCompoundIds(List<String> affectedCompoundIds) {
    this.affectedCompoundIds = affectedCompoundIds;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JobId jobId = (JobId) o;
    return Objects.equals(this.id, jobId.id) &&
        Objects.equals(this.command, jobId.command) &&
        Objects.equals(this.progress, jobId.progress) &&
        Objects.equals(this.affectedCompoundIds, jobId.affectedCompoundIds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, command, progress, affectedCompoundIds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JobId {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    command: ").append(toIndentedString(command)).append("\n");
    sb.append("    progress: ").append(toIndentedString(progress)).append("\n");
    sb.append("    affectedCompoundIds: ").append(toIndentedString(affectedCompoundIds)).append("\n");
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
    openapiFields.add("command");
    openapiFields.add("progress");
    openapiFields.add("affectedCompoundIds");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to JobId
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!JobId.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in JobId is not found in the empty JSON string", JobId.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!JobId.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `JobId` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("command") != null && !jsonObj.get("command").isJsonNull()) && !jsonObj.get("command").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `command` to be a primitive type in the JSON string but got `%s`", jsonObj.get("command").toString()));
      }
      // validate the optional field `progress`
      if (jsonObj.get("progress") != null && !jsonObj.get("progress").isJsonNull()) {
        JobProgress.validateJsonObject(jsonObj.getAsJsonObject("progress"));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("affectedCompoundIds") != null && !jsonObj.get("affectedCompoundIds").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `affectedCompoundIds` to be an array in the JSON string but got `%s`", jsonObj.get("affectedCompoundIds").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!JobId.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'JobId' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<JobId> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(JobId.class));

       return (TypeAdapter<T>) new TypeAdapter<JobId>() {
           @Override
           public void write(JsonWriter out, JobId value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public JobId read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of JobId given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of JobId
  * @throws IOException if the JSON string is invalid with respect to JobId
  */
  public static JobId fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, JobId.class);
  }

 /**
  * Convert an instance of JobId to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

