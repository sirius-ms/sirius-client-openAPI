/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * The version of the OpenAPI document: v0.9 on SIRIUS 6.0.0-SNAPSHOT
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
 * Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress &#x3D;&#x3D; maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class JobProgress {
  public static final String SERIALIZED_NAME_INDETERMINATE = "indeterminate";
  @SerializedName(SERIALIZED_NAME_INDETERMINATE)
  private Boolean indeterminate;

  /**
   * Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.
   */
  @JsonAdapter(StateEnum.Adapter.class)
  public enum StateEnum {
    WAITING("WAITING"),
    
    READY("READY"),
    
    QUEUED("QUEUED"),
    
    SUBMITTED("SUBMITTED"),
    
    RUNNING("RUNNING"),
    
    CANCELED("CANCELED"),
    
    FAILED("FAILED"),
    
    DONE("DONE");

    private String value;

    StateEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static StateEnum fromValue(String value) {
      for (StateEnum b : StateEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<StateEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final StateEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public StateEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return StateEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_STATE = "state";
  @SerializedName(SERIALIZED_NAME_STATE)
  private StateEnum state;

  public static final String SERIALIZED_NAME_CURRENT_PROGRESS = "currentProgress";
  @SerializedName(SERIALIZED_NAME_CURRENT_PROGRESS)
  private Long currentProgress;

  public static final String SERIALIZED_NAME_MAX_PROGRESS = "maxProgress";
  @SerializedName(SERIALIZED_NAME_MAX_PROGRESS)
  private Long maxProgress;

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_ERROR_MESSAGE = "errorMessage";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE)
  private String errorMessage;

  public JobProgress() {
  }

  public JobProgress indeterminate(Boolean indeterminate) {
    
    this.indeterminate = indeterminate;
    return this;
  }

   /**
   * Is the progress indeterminate or not
   * @return indeterminate
  **/
  @javax.annotation.Nullable

  public Boolean getIndeterminate() {
    return indeterminate;
  }


  public void setIndeterminate(Boolean indeterminate) {
    this.indeterminate = indeterminate;
  }


  public JobProgress state(StateEnum state) {
    
    this.state = state;
    return this;
  }

   /**
   * Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.
   * @return state
  **/
  @javax.annotation.Nullable

  public StateEnum getState() {
    return state;
  }


  public void setState(StateEnum state) {
    this.state = state;
  }


  public JobProgress currentProgress(Long currentProgress) {
    
    this.currentProgress = currentProgress;
    return this;
  }

   /**
   * Current progress value of the job.
   * @return currentProgress
  **/
  @javax.annotation.Nullable

  public Long getCurrentProgress() {
    return currentProgress;
  }


  public void setCurrentProgress(Long currentProgress) {
    this.currentProgress = currentProgress;
  }


  public JobProgress maxProgress(Long maxProgress) {
    
    this.maxProgress = maxProgress;
    return this;
  }

   /**
   * Progress value to reach (might also change during execution)
   * @return maxProgress
  **/
  @javax.annotation.Nullable

  public Long getMaxProgress() {
    return maxProgress;
  }


  public void setMaxProgress(Long maxProgress) {
    this.maxProgress = maxProgress;
  }


  public JobProgress message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * Progress information and warnings.
   * @return message
  **/
  @javax.annotation.Nullable

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public JobProgress errorMessage(String errorMessage) {
    
    this.errorMessage = errorMessage;
    return this;
  }

   /**
   * Error message if the job did not finish successfully failed.
   * @return errorMessage
  **/
  @javax.annotation.Nullable

  public String getErrorMessage() {
    return errorMessage;
  }


  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JobProgress jobProgress = (JobProgress) o;
    return Objects.equals(this.indeterminate, jobProgress.indeterminate) &&
        Objects.equals(this.state, jobProgress.state) &&
        Objects.equals(this.currentProgress, jobProgress.currentProgress) &&
        Objects.equals(this.maxProgress, jobProgress.maxProgress) &&
        Objects.equals(this.message, jobProgress.message) &&
        Objects.equals(this.errorMessage, jobProgress.errorMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(indeterminate, state, currentProgress, maxProgress, message, errorMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JobProgress {\n");
    sb.append("    indeterminate: ").append(toIndentedString(indeterminate)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    currentProgress: ").append(toIndentedString(currentProgress)).append("\n");
    sb.append("    maxProgress: ").append(toIndentedString(maxProgress)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    errorMessage: ").append(toIndentedString(errorMessage)).append("\n");
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
    openapiFields.add("indeterminate");
    openapiFields.add("state");
    openapiFields.add("currentProgress");
    openapiFields.add("maxProgress");
    openapiFields.add("message");
    openapiFields.add("errorMessage");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to JobProgress
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!JobProgress.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in JobProgress is not found in the empty JSON string", JobProgress.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!JobProgress.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `JobProgress` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("state") != null && !jsonObj.get("state").isJsonNull()) && !jsonObj.get("state").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `state` to be a primitive type in the JSON string but got `%s`", jsonObj.get("state").toString()));
      }
      if ((jsonObj.get("message") != null && !jsonObj.get("message").isJsonNull()) && !jsonObj.get("message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("message").toString()));
      }
      if ((jsonObj.get("errorMessage") != null && !jsonObj.get("errorMessage").isJsonNull()) && !jsonObj.get("errorMessage").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `errorMessage` to be a primitive type in the JSON string but got `%s`", jsonObj.get("errorMessage").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!JobProgress.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'JobProgress' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<JobProgress> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(JobProgress.class));

       return (TypeAdapter<T>) new TypeAdapter<JobProgress>() {
           @Override
           public void write(JsonWriter out, JobProgress value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public JobProgress read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of JobProgress given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of JobProgress
  * @throws IOException if the JSON string is invalid with respect to JobProgress
  */
  public static JobProgress fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, JobProgress.class);
  }

 /**
  * Convert an instance of JobProgress to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

