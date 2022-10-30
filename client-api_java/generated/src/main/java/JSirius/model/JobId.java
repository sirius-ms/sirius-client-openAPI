/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * OpenAPI spec version: v0.9 on SIRIUS 5.6.1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
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
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/**
 * Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.
 */
@Schema(description = "Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-30T10:48:11.116314Z[Etc/UTC]")
public class JobId {
  @SerializedName("id")
  private String id = null;

  @SerializedName("command")
  private String command = null;

  @SerializedName("progress")
  private JobProgress progress = null;

  @SerializedName("affectedCompoundIds")
  private List<String> affectedCompoundIds = null;

  public JobId id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Unique identifier to access the job via the API
   * @return id
  **/
  @Schema(description = "Unique identifier to access the job via the API")
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
  @Schema(description = "Command string of the executed Task")
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
  @Schema(description = "")
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
      this.affectedCompoundIds = new ArrayList<String>();
    }
    this.affectedCompoundIds.add(affectedCompoundIdsItem);
    return this;
  }

   /**
   * List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished
   * @return affectedCompoundIds
  **/
  @Schema(description = "List of compound ids that are affected by this job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished")
  public List<String> getAffectedCompoundIds() {
    return affectedCompoundIds;
  }

  public void setAffectedCompoundIds(List<String> affectedCompoundIds) {
    this.affectedCompoundIds = affectedCompoundIds;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}