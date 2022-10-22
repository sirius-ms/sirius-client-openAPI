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
 * FragmentNode
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-22T11:32:24.000419Z[Etc/UTC]")
public class FragmentNode {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("molecularFormula")
  private String molecularFormula = null;

  @SerializedName("ionType")
  private String ionType = null;

  @SerializedName("massDeviationDa")
  private Double massDeviationDa = null;

  @SerializedName("massErrorPpm")
  private Double massErrorPpm = null;

  @SerializedName("score")
  private Double score = null;

  @SerializedName("intensity")
  private Double intensity = null;

  @SerializedName("mz")
  private Double mz = null;

  public FragmentNode id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @Schema(description = "")
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public FragmentNode molecularFormula(String molecularFormula) {
    this.molecularFormula = molecularFormula;
    return this;
  }

   /**
   * Get molecularFormula
   * @return molecularFormula
  **/
  @Schema(description = "")
  public String getMolecularFormula() {
    return molecularFormula;
  }

  public void setMolecularFormula(String molecularFormula) {
    this.molecularFormula = molecularFormula;
  }

  public FragmentNode ionType(String ionType) {
    this.ionType = ionType;
    return this;
  }

   /**
   * Get ionType
   * @return ionType
  **/
  @Schema(description = "")
  public String getIonType() {
    return ionType;
  }

  public void setIonType(String ionType) {
    this.ionType = ionType;
  }

  public FragmentNode massDeviationDa(Double massDeviationDa) {
    this.massDeviationDa = massDeviationDa;
    return this;
  }

   /**
   * Get massDeviationDa
   * @return massDeviationDa
  **/
  @Schema(description = "")
  public Double getMassDeviationDa() {
    return massDeviationDa;
  }

  public void setMassDeviationDa(Double massDeviationDa) {
    this.massDeviationDa = massDeviationDa;
  }

  public FragmentNode massErrorPpm(Double massErrorPpm) {
    this.massErrorPpm = massErrorPpm;
    return this;
  }

   /**
   * Get massErrorPpm
   * @return massErrorPpm
  **/
  @Schema(description = "")
  public Double getMassErrorPpm() {
    return massErrorPpm;
  }

  public void setMassErrorPpm(Double massErrorPpm) {
    this.massErrorPpm = massErrorPpm;
  }

  public FragmentNode score(Double score) {
    this.score = score;
    return this;
  }

   /**
   * Get score
   * @return score
  **/
  @Schema(description = "")
  public Double getScore() {
    return score;
  }

  public void setScore(Double score) {
    this.score = score;
  }

  public FragmentNode intensity(Double intensity) {
    this.intensity = intensity;
    return this;
  }

   /**
   * Get intensity
   * @return intensity
  **/
  @Schema(description = "")
  public Double getIntensity() {
    return intensity;
  }

  public void setIntensity(Double intensity) {
    this.intensity = intensity;
  }

  public FragmentNode mz(Double mz) {
    this.mz = mz;
    return this;
  }

   /**
   * Get mz
   * @return mz
  **/
  @Schema(description = "")
  public Double getMz() {
    return mz;
  }

  public void setMz(Double mz) {
    this.mz = mz;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FragmentNode fragmentNode = (FragmentNode) o;
    return Objects.equals(this.id, fragmentNode.id) &&
        Objects.equals(this.molecularFormula, fragmentNode.molecularFormula) &&
        Objects.equals(this.ionType, fragmentNode.ionType) &&
        Objects.equals(this.massDeviationDa, fragmentNode.massDeviationDa) &&
        Objects.equals(this.massErrorPpm, fragmentNode.massErrorPpm) &&
        Objects.equals(this.score, fragmentNode.score) &&
        Objects.equals(this.intensity, fragmentNode.intensity) &&
        Objects.equals(this.mz, fragmentNode.mz);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, molecularFormula, ionType, massDeviationDa, massErrorPpm, score, intensity, mz);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FragmentNode {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    molecularFormula: ").append(toIndentedString(molecularFormula)).append("\n");
    sb.append("    ionType: ").append(toIndentedString(ionType)).append("\n");
    sb.append("    massDeviationDa: ").append(toIndentedString(massDeviationDa)).append("\n");
    sb.append("    massErrorPpm: ").append(toIndentedString(massErrorPpm)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    intensity: ").append(toIndentedString(intensity)).append("\n");
    sb.append("    mz: ").append(toIndentedString(mz)).append("\n");
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
