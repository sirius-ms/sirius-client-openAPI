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
 * UseHeuristic
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-18T12:19:28.820620Z[Etc/UTC]")
public class UseHeuristic {
  @SerializedName("mzToUseHeuristic")
  private Integer mzToUseHeuristic = null;

  @SerializedName("mzToUseHeuristicOnly")
  private Integer mzToUseHeuristicOnly = null;

  @SerializedName("identifier")
  private String identifier = null;

  public UseHeuristic mzToUseHeuristic(Integer mzToUseHeuristic) {
    this.mzToUseHeuristic = mzToUseHeuristic;
    return this;
  }

   /**
   * Get mzToUseHeuristic
   * @return mzToUseHeuristic
  **/
  @Schema(description = "")
  public Integer getMzToUseHeuristic() {
    return mzToUseHeuristic;
  }

  public void setMzToUseHeuristic(Integer mzToUseHeuristic) {
    this.mzToUseHeuristic = mzToUseHeuristic;
  }

  public UseHeuristic mzToUseHeuristicOnly(Integer mzToUseHeuristicOnly) {
    this.mzToUseHeuristicOnly = mzToUseHeuristicOnly;
    return this;
  }

   /**
   * Get mzToUseHeuristicOnly
   * @return mzToUseHeuristicOnly
  **/
  @Schema(description = "")
  public Integer getMzToUseHeuristicOnly() {
    return mzToUseHeuristicOnly;
  }

  public void setMzToUseHeuristicOnly(Integer mzToUseHeuristicOnly) {
    this.mzToUseHeuristicOnly = mzToUseHeuristicOnly;
  }

  public UseHeuristic identifier(String identifier) {
    this.identifier = identifier;
    return this;
  }

   /**
   * Get identifier
   * @return identifier
  **/
  @Schema(description = "")
  public String getIdentifier() {
    return identifier;
  }

  public void setIdentifier(String identifier) {
    this.identifier = identifier;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UseHeuristic useHeuristic = (UseHeuristic) o;
    return Objects.equals(this.mzToUseHeuristic, useHeuristic.mzToUseHeuristic) &&
        Objects.equals(this.mzToUseHeuristicOnly, useHeuristic.mzToUseHeuristicOnly) &&
        Objects.equals(this.identifier, useHeuristic.identifier);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mzToUseHeuristic, mzToUseHeuristicOnly, identifier);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UseHeuristic {\n");
    
    sb.append("    mzToUseHeuristic: ").append(toIndentedString(mzToUseHeuristic)).append("\n");
    sb.append("    mzToUseHeuristicOnly: ").append(toIndentedString(mzToUseHeuristicOnly)).append("\n");
    sb.append("    identifier: ").append(toIndentedString(identifier)).append("\n");
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
