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
import JSirius.model.ZodiacEdgeFilterThresholds;
import JSirius.model.ZodiacEpochs;
import JSirius.model.ZodiacNumberOfConsideredCandidatesAt300Mz;
import JSirius.model.ZodiacNumberOfConsideredCandidatesAt800Mz;
import JSirius.model.ZodiacRunInTwoSteps;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).
 */
@Schema(description = "User/developer friendly parameter subset for the ZODIAC tool (Network base molecular formula re-ranking).")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-18T12:40:36.199340Z[Etc/UTC]")
public class Zodiac {
  @SerializedName("enabled")
  private Boolean enabled = null;

  @SerializedName("consideredCandidatesAt300Mz")
  private ZodiacNumberOfConsideredCandidatesAt300Mz consideredCandidatesAt300Mz = null;

  @SerializedName("consideredCandidatesAt800Mz")
  private ZodiacNumberOfConsideredCandidatesAt800Mz consideredCandidatesAt800Mz = null;

  @SerializedName("runInTwoSteps")
  private ZodiacRunInTwoSteps runInTwoSteps = null;

  @SerializedName("edgeFilterThresholds")
  private ZodiacEdgeFilterThresholds edgeFilterThresholds = null;

  @SerializedName("gibbsSamplerParameters")
  private ZodiacEpochs gibbsSamplerParameters = null;

  public Zodiac enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

   /**
   * tags whether the tool is enabled
   * @return enabled
  **/
  @Schema(description = "tags whether the tool is enabled")
  public Boolean isEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public Zodiac consideredCandidatesAt300Mz(ZodiacNumberOfConsideredCandidatesAt300Mz consideredCandidatesAt300Mz) {
    this.consideredCandidatesAt300Mz = consideredCandidatesAt300Mz;
    return this;
  }

   /**
   * Get consideredCandidatesAt300Mz
   * @return consideredCandidatesAt300Mz
  **/
  @Schema(description = "")
  public ZodiacNumberOfConsideredCandidatesAt300Mz getConsideredCandidatesAt300Mz() {
    return consideredCandidatesAt300Mz;
  }

  public void setConsideredCandidatesAt300Mz(ZodiacNumberOfConsideredCandidatesAt300Mz consideredCandidatesAt300Mz) {
    this.consideredCandidatesAt300Mz = consideredCandidatesAt300Mz;
  }

  public Zodiac consideredCandidatesAt800Mz(ZodiacNumberOfConsideredCandidatesAt800Mz consideredCandidatesAt800Mz) {
    this.consideredCandidatesAt800Mz = consideredCandidatesAt800Mz;
    return this;
  }

   /**
   * Get consideredCandidatesAt800Mz
   * @return consideredCandidatesAt800Mz
  **/
  @Schema(description = "")
  public ZodiacNumberOfConsideredCandidatesAt800Mz getConsideredCandidatesAt800Mz() {
    return consideredCandidatesAt800Mz;
  }

  public void setConsideredCandidatesAt800Mz(ZodiacNumberOfConsideredCandidatesAt800Mz consideredCandidatesAt800Mz) {
    this.consideredCandidatesAt800Mz = consideredCandidatesAt800Mz;
  }

  public Zodiac runInTwoSteps(ZodiacRunInTwoSteps runInTwoSteps) {
    this.runInTwoSteps = runInTwoSteps;
    return this;
  }

   /**
   * Get runInTwoSteps
   * @return runInTwoSteps
  **/
  @Schema(description = "")
  public ZodiacRunInTwoSteps getRunInTwoSteps() {
    return runInTwoSteps;
  }

  public void setRunInTwoSteps(ZodiacRunInTwoSteps runInTwoSteps) {
    this.runInTwoSteps = runInTwoSteps;
  }

  public Zodiac edgeFilterThresholds(ZodiacEdgeFilterThresholds edgeFilterThresholds) {
    this.edgeFilterThresholds = edgeFilterThresholds;
    return this;
  }

   /**
   * Get edgeFilterThresholds
   * @return edgeFilterThresholds
  **/
  @Schema(description = "")
  public ZodiacEdgeFilterThresholds getEdgeFilterThresholds() {
    return edgeFilterThresholds;
  }

  public void setEdgeFilterThresholds(ZodiacEdgeFilterThresholds edgeFilterThresholds) {
    this.edgeFilterThresholds = edgeFilterThresholds;
  }

  public Zodiac gibbsSamplerParameters(ZodiacEpochs gibbsSamplerParameters) {
    this.gibbsSamplerParameters = gibbsSamplerParameters;
    return this;
  }

   /**
   * Get gibbsSamplerParameters
   * @return gibbsSamplerParameters
  **/
  @Schema(description = "")
  public ZodiacEpochs getGibbsSamplerParameters() {
    return gibbsSamplerParameters;
  }

  public void setGibbsSamplerParameters(ZodiacEpochs gibbsSamplerParameters) {
    this.gibbsSamplerParameters = gibbsSamplerParameters;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Zodiac zodiac = (Zodiac) o;
    return Objects.equals(this.enabled, zodiac.enabled) &&
        Objects.equals(this.consideredCandidatesAt300Mz, zodiac.consideredCandidatesAt300Mz) &&
        Objects.equals(this.consideredCandidatesAt800Mz, zodiac.consideredCandidatesAt800Mz) &&
        Objects.equals(this.runInTwoSteps, zodiac.runInTwoSteps) &&
        Objects.equals(this.edgeFilterThresholds, zodiac.edgeFilterThresholds) &&
        Objects.equals(this.gibbsSamplerParameters, zodiac.gibbsSamplerParameters);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, consideredCandidatesAt300Mz, consideredCandidatesAt800Mz, runInTwoSteps, edgeFilterThresholds, gibbsSamplerParameters);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Zodiac {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    consideredCandidatesAt300Mz: ").append(toIndentedString(consideredCandidatesAt300Mz)).append("\n");
    sb.append("    consideredCandidatesAt800Mz: ").append(toIndentedString(consideredCandidatesAt800Mz)).append("\n");
    sb.append("    runInTwoSteps: ").append(toIndentedString(runInTwoSteps)).append("\n");
    sb.append("    edgeFilterThresholds: ").append(toIndentedString(edgeFilterThresholds)).append("\n");
    sb.append("    gibbsSamplerParameters: ").append(toIndentedString(gibbsSamplerParameters)).append("\n");
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
