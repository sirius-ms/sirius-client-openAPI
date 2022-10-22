/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * OpenAPI spec version: v0.9 on SIRIUS 5.6.1-SNAPSHOT
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
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
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress &#x3D;&#x3D; maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.
 */
@Schema(description = "Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress == maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-22T12:06:58.029485Z[Etc/UTC]")
public class JobProgress {
  @SerializedName("indeterminate")
  private Boolean indeterminate = null;

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
    public static StateEnum fromValue(String input) {
      for (StateEnum b : StateEnum.values()) {
        if (b.value.equals(input)) {
          return b;
        }
      }
      return null;
    }
    public static class Adapter extends TypeAdapter<StateEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final StateEnum enumeration) throws IOException {
        jsonWriter.value(String.valueOf(enumeration.getValue()));
      }

      @Override
      public StateEnum read(final JsonReader jsonReader) throws IOException {
        Object value = jsonReader.nextString();
        return StateEnum.fromValue((String)(value));
      }
    }
  }  @SerializedName("state")
  private StateEnum state = null;

  @SerializedName("currentProgress")
  private Long currentProgress = null;

  @SerializedName("maxProgress")
  private Long maxProgress = null;

  @SerializedName("message")
  private String message = null;

  @SerializedName("errorMessage")
  private String errorMessage = null;

  public JobProgress indeterminate(Boolean indeterminate) {
    this.indeterminate = indeterminate;
    return this;
  }

   /**
   * Is the progress indeterminate or not
   * @return indeterminate
  **/
  @Schema(description = "Is the progress indeterminate or not")
  public Boolean isIndeterminate() {
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
  @Schema(description = "Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.")
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
  @Schema(description = "Current progress value of the job.")
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
  @Schema(description = "Progress value to reach (might also change during execution)")
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
  @Schema(description = "Progress information and warnings.")
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
  @Schema(description = "Error message if the job did not finish successfully failed.")
  public String getErrorMessage() {
    return errorMessage;
  }

  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
