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
import JSirius.model.Deviation;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * FormulaCandidate
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-22T11:32:24.000419Z[Etc/UTC]")
public class FormulaCandidate {
  @SerializedName("siriusScore")
  private Double siriusScore = null;

  @SerializedName("isotopeScore")
  private Double isotopeScore = null;

  @SerializedName("treeScore")
  private Double treeScore = null;

  @SerializedName("zodiacScore")
  private Double zodiacScore = null;

  @SerializedName("molecularFormula")
  private String molecularFormula = null;

  @SerializedName("adduct")
  private String adduct = null;

  @SerializedName("numOfexplainedPeaks")
  private Integer numOfexplainedPeaks = null;

  @SerializedName("numOfexplainablePeaks")
  private Integer numOfexplainablePeaks = null;

  @SerializedName("totalExplainedIntensity")
  private Double totalExplainedIntensity = null;

  @SerializedName("medianMassDeviation")
  private Deviation medianMassDeviation = null;

  public FormulaCandidate siriusScore(Double siriusScore) {
    this.siriusScore = siriusScore;
    return this;
  }

   /**
   * Get siriusScore
   * @return siriusScore
  **/
  @Schema(description = "")
  public Double getSiriusScore() {
    return siriusScore;
  }

  public void setSiriusScore(Double siriusScore) {
    this.siriusScore = siriusScore;
  }

  public FormulaCandidate isotopeScore(Double isotopeScore) {
    this.isotopeScore = isotopeScore;
    return this;
  }

   /**
   * Get isotopeScore
   * @return isotopeScore
  **/
  @Schema(description = "")
  public Double getIsotopeScore() {
    return isotopeScore;
  }

  public void setIsotopeScore(Double isotopeScore) {
    this.isotopeScore = isotopeScore;
  }

  public FormulaCandidate treeScore(Double treeScore) {
    this.treeScore = treeScore;
    return this;
  }

   /**
   * Get treeScore
   * @return treeScore
  **/
  @Schema(description = "")
  public Double getTreeScore() {
    return treeScore;
  }

  public void setTreeScore(Double treeScore) {
    this.treeScore = treeScore;
  }

  public FormulaCandidate zodiacScore(Double zodiacScore) {
    this.zodiacScore = zodiacScore;
    return this;
  }

   /**
   * Get zodiacScore
   * @return zodiacScore
  **/
  @Schema(description = "")
  public Double getZodiacScore() {
    return zodiacScore;
  }

  public void setZodiacScore(Double zodiacScore) {
    this.zodiacScore = zodiacScore;
  }

  public FormulaCandidate molecularFormula(String molecularFormula) {
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

  public FormulaCandidate adduct(String adduct) {
    this.adduct = adduct;
    return this;
  }

   /**
   * Get adduct
   * @return adduct
  **/
  @Schema(description = "")
  public String getAdduct() {
    return adduct;
  }

  public void setAdduct(String adduct) {
    this.adduct = adduct;
  }

  public FormulaCandidate numOfexplainedPeaks(Integer numOfexplainedPeaks) {
    this.numOfexplainedPeaks = numOfexplainedPeaks;
    return this;
  }

   /**
   * Get numOfexplainedPeaks
   * @return numOfexplainedPeaks
  **/
  @Schema(description = "")
  public Integer getNumOfexplainedPeaks() {
    return numOfexplainedPeaks;
  }

  public void setNumOfexplainedPeaks(Integer numOfexplainedPeaks) {
    this.numOfexplainedPeaks = numOfexplainedPeaks;
  }

  public FormulaCandidate numOfexplainablePeaks(Integer numOfexplainablePeaks) {
    this.numOfexplainablePeaks = numOfexplainablePeaks;
    return this;
  }

   /**
   * Get numOfexplainablePeaks
   * @return numOfexplainablePeaks
  **/
  @Schema(description = "")
  public Integer getNumOfexplainablePeaks() {
    return numOfexplainablePeaks;
  }

  public void setNumOfexplainablePeaks(Integer numOfexplainablePeaks) {
    this.numOfexplainablePeaks = numOfexplainablePeaks;
  }

  public FormulaCandidate totalExplainedIntensity(Double totalExplainedIntensity) {
    this.totalExplainedIntensity = totalExplainedIntensity;
    return this;
  }

   /**
   * Get totalExplainedIntensity
   * @return totalExplainedIntensity
  **/
  @Schema(description = "")
  public Double getTotalExplainedIntensity() {
    return totalExplainedIntensity;
  }

  public void setTotalExplainedIntensity(Double totalExplainedIntensity) {
    this.totalExplainedIntensity = totalExplainedIntensity;
  }

  public FormulaCandidate medianMassDeviation(Deviation medianMassDeviation) {
    this.medianMassDeviation = medianMassDeviation;
    return this;
  }

   /**
   * Get medianMassDeviation
   * @return medianMassDeviation
  **/
  @Schema(description = "")
  public Deviation getMedianMassDeviation() {
    return medianMassDeviation;
  }

  public void setMedianMassDeviation(Deviation medianMassDeviation) {
    this.medianMassDeviation = medianMassDeviation;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FormulaCandidate formulaCandidate = (FormulaCandidate) o;
    return Objects.equals(this.siriusScore, formulaCandidate.siriusScore) &&
        Objects.equals(this.isotopeScore, formulaCandidate.isotopeScore) &&
        Objects.equals(this.treeScore, formulaCandidate.treeScore) &&
        Objects.equals(this.zodiacScore, formulaCandidate.zodiacScore) &&
        Objects.equals(this.molecularFormula, formulaCandidate.molecularFormula) &&
        Objects.equals(this.adduct, formulaCandidate.adduct) &&
        Objects.equals(this.numOfexplainedPeaks, formulaCandidate.numOfexplainedPeaks) &&
        Objects.equals(this.numOfexplainablePeaks, formulaCandidate.numOfexplainablePeaks) &&
        Objects.equals(this.totalExplainedIntensity, formulaCandidate.totalExplainedIntensity) &&
        Objects.equals(this.medianMassDeviation, formulaCandidate.medianMassDeviation);
  }

  @Override
  public int hashCode() {
    return Objects.hash(siriusScore, isotopeScore, treeScore, zodiacScore, molecularFormula, adduct, numOfexplainedPeaks, numOfexplainablePeaks, totalExplainedIntensity, medianMassDeviation);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FormulaCandidate {\n");
    
    sb.append("    siriusScore: ").append(toIndentedString(siriusScore)).append("\n");
    sb.append("    isotopeScore: ").append(toIndentedString(isotopeScore)).append("\n");
    sb.append("    treeScore: ").append(toIndentedString(treeScore)).append("\n");
    sb.append("    zodiacScore: ").append(toIndentedString(zodiacScore)).append("\n");
    sb.append("    molecularFormula: ").append(toIndentedString(molecularFormula)).append("\n");
    sb.append("    adduct: ").append(toIndentedString(adduct)).append("\n");
    sb.append("    numOfexplainedPeaks: ").append(toIndentedString(numOfexplainedPeaks)).append("\n");
    sb.append("    numOfexplainablePeaks: ").append(toIndentedString(numOfexplainablePeaks)).append("\n");
    sb.append("    totalExplainedIntensity: ").append(toIndentedString(totalExplainedIntensity)).append("\n");
    sb.append("    medianMassDeviation: ").append(toIndentedString(medianMassDeviation)).append("\n");
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
