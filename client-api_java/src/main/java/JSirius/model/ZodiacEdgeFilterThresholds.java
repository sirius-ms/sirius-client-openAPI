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
 * ZodiacEdgeFilterThresholds
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-20T14:02:34.693368Z[Etc/UTC]")
public class ZodiacEdgeFilterThresholds {
  @SerializedName("thresholdFilter")
  private Double thresholdFilter = null;

  @SerializedName("minLocalCandidates")
  private Integer minLocalCandidates = null;

  @SerializedName("minLocalConnections")
  private Integer minLocalConnections = null;

  @SerializedName("identifier")
  private String identifier = null;

  public ZodiacEdgeFilterThresholds thresholdFilter(Double thresholdFilter) {
    this.thresholdFilter = thresholdFilter;
    return this;
  }

   /**
   * Get thresholdFilter
   * @return thresholdFilter
  **/
  @Schema(description = "")
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
  @Schema(description = "")
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
  @Schema(description = "")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
