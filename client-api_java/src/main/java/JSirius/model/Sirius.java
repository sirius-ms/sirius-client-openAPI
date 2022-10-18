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
import JSirius.model.Timeout;
import JSirius.model.UseHeuristic;
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
 * User/developer friendly parameter subset for the Formula/SIRIUS tool
 */
@Schema(description = "User/developer friendly parameter subset for the Formula/SIRIUS tool")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-18T13:16:02.800867Z[Etc/UTC]")
public class Sirius {
  @SerializedName("enabled")
  private Boolean enabled = null;

  /**
   * Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data.
   */
  @JsonAdapter(ProfileEnum.Adapter.class)
  public enum ProfileEnum {
    QTOF("QTOF"),
    ORBI("ORBI"),
    FTICR("FTICR");

    private String value;

    ProfileEnum(String value) {
      this.value = value;
    }
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    public static ProfileEnum fromValue(String input) {
      for (ProfileEnum b : ProfileEnum.values()) {
        if (b.value.equals(input)) {
          return b;
        }
      }
      return null;
    }
    public static class Adapter extends TypeAdapter<ProfileEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final ProfileEnum enumeration) throws IOException {
        jsonWriter.value(String.valueOf(enumeration.getValue()));
      }

      @Override
      public ProfileEnum read(final JsonReader jsonReader) throws IOException {
        Object value = jsonReader.nextString();
        return ProfileEnum.fromValue((String)(value));
      }
    }
  }  @SerializedName("profile")
  private ProfileEnum profile = null;

  @SerializedName("numberOfCandidates")
  private Integer numberOfCandidates = null;

  @SerializedName("numberOfCandidatesPerIon")
  private Integer numberOfCandidatesPerIon = null;

  @SerializedName("massAccuracyMS2ppm")
  private Double massAccuracyMS2ppm = null;

  /**
   * Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS
   */
  @JsonAdapter(IsotopeMs2SettingsEnum.Adapter.class)
  public enum IsotopeMs2SettingsEnum {
    IGNORE("IGNORE"),
    FILTER("FILTER"),
    SCORE("SCORE");

    private String value;

    IsotopeMs2SettingsEnum(String value) {
      this.value = value;
    }
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    public static IsotopeMs2SettingsEnum fromValue(String input) {
      for (IsotopeMs2SettingsEnum b : IsotopeMs2SettingsEnum.values()) {
        if (b.value.equals(input)) {
          return b;
        }
      }
      return null;
    }
    public static class Adapter extends TypeAdapter<IsotopeMs2SettingsEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final IsotopeMs2SettingsEnum enumeration) throws IOException {
        jsonWriter.value(String.valueOf(enumeration.getValue()));
      }

      @Override
      public IsotopeMs2SettingsEnum read(final JsonReader jsonReader) throws IOException {
        Object value = jsonReader.nextString();
        return IsotopeMs2SettingsEnum.fromValue((String)(value));
      }
    }
  }  @SerializedName("isotopeMs2Settings")
  private IsotopeMs2SettingsEnum isotopeMs2Settings = null;

  /**
   * Gets or Sets formulaSearchDBs
   */
  @JsonAdapter(FormulaSearchDBsEnum.Adapter.class)
  public enum FormulaSearchDBsEnum {
    ALL("ALL"),
    ALL_BUT_INSILICO("ALL_BUT_INSILICO"),
    PUBCHEM("PUBCHEM"),
    MESH("MESH"),
    HMDB("HMDB"),
    KNAPSACK("KNAPSACK"),
    CHEBI("CHEBI"),
    PUBMED("PUBMED"),
    BIO("BIO"),
    KEGG("KEGG"),
    HSDB("HSDB"),
    MACONDA("MACONDA"),
    METACYC("METACYC"),
    GNPS("GNPS"),
    ZINCBIO("ZINCBIO"),
    TRAIN("TRAIN"),
    UNDP("UNDP"),
    YMDB("YMDB"),
    PLANTCYC("PLANTCYC"),
    NORMAN("NORMAN"),
    ADDITIONAL("ADDITIONAL"),
    SUPERNATURAL("SUPERNATURAL"),
    COCONUT("COCONUT"),
    PUBCHEMANNOTATIONBIO("PUBCHEMANNOTATIONBIO"),
    PUBCHEMANNOTATIONDRUG("PUBCHEMANNOTATIONDRUG"),
    PUBCHEMANNOTATIONSAFETYANDTOXIC("PUBCHEMANNOTATIONSAFETYANDTOXIC"),
    PUBCHEMANNOTATIONFOOD("PUBCHEMANNOTATIONFOOD"),
    LIPID("LIPID"),
    KEGGMINE("KEGGMINE"),
    ECOCYCMINE("ECOCYCMINE"),
    YMDBMINE("YMDBMINE");

    private String value;

    FormulaSearchDBsEnum(String value) {
      this.value = value;
    }
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    public static FormulaSearchDBsEnum fromValue(String input) {
      for (FormulaSearchDBsEnum b : FormulaSearchDBsEnum.values()) {
        if (b.value.equals(input)) {
          return b;
        }
      }
      return null;
    }
    public static class Adapter extends TypeAdapter<FormulaSearchDBsEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final FormulaSearchDBsEnum enumeration) throws IOException {
        jsonWriter.value(String.valueOf(enumeration.getValue()));
      }

      @Override
      public FormulaSearchDBsEnum read(final JsonReader jsonReader) throws IOException {
        Object value = jsonReader.nextString();
        return FormulaSearchDBsEnum.fromValue((String)(value));
      }
    }
  }  @SerializedName("formulaSearchDBs")
  private List<FormulaSearchDBsEnum> formulaSearchDBs = null;

  @SerializedName("enforcedFormulaConstraints")
  private String enforcedFormulaConstraints = null;

  @SerializedName("fallbackFormulaConstraints")
  private String fallbackFormulaConstraints = null;

  @SerializedName("detectableElements")
  private List<String> detectableElements = null;

  @SerializedName("ilpTimeout")
  private Timeout ilpTimeout = null;

  @SerializedName("useHeuristic")
  private UseHeuristic useHeuristic = null;

  public Sirius enabled(Boolean enabled) {
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

  public Sirius profile(ProfileEnum profile) {
    this.profile = profile;
    return this;
  }

   /**
   * Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data.
   * @return profile
  **/
  @Schema(description = "Instrument specific profile for internal algorithms  Just select what comes closest to the instrument that was used for measuring the data.")
  public ProfileEnum getProfile() {
    return profile;
  }

  public void setProfile(ProfileEnum profile) {
    this.profile = profile;
  }

  public Sirius numberOfCandidates(Integer numberOfCandidates) {
    this.numberOfCandidates = numberOfCandidates;
    return this;
  }

   /**
   * Number of formula candidates to keep as result list (Formula Candidates).
   * @return numberOfCandidates
  **/
  @Schema(description = "Number of formula candidates to keep as result list (Formula Candidates).")
  public Integer getNumberOfCandidates() {
    return numberOfCandidates;
  }

  public void setNumberOfCandidates(Integer numberOfCandidates) {
    this.numberOfCandidates = numberOfCandidates;
  }

  public Sirius numberOfCandidatesPerIon(Integer numberOfCandidatesPerIon) {
    this.numberOfCandidatesPerIon = numberOfCandidatesPerIon;
    return this;
  }

   /**
   * Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if &lt;&#x3D; 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.
   * @return numberOfCandidatesPerIon
  **/
  @Schema(description = "Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIon results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.")
  public Integer getNumberOfCandidatesPerIon() {
    return numberOfCandidatesPerIon;
  }

  public void setNumberOfCandidatesPerIon(Integer numberOfCandidatesPerIon) {
    this.numberOfCandidatesPerIon = numberOfCandidatesPerIon;
  }

  public Sirius massAccuracyMS2ppm(Double massAccuracyMS2ppm) {
    this.massAccuracyMS2ppm = massAccuracyMS2ppm;
    return this;
  }

   /**
   * Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered.
   * @return massAccuracyMS2ppm
  **/
  @Schema(description = "Maximum allowed mass accuracy. Only molecular formulas within this mass window are considered.")
  public Double getMassAccuracyMS2ppm() {
    return massAccuracyMS2ppm;
  }

  public void setMassAccuracyMS2ppm(Double massAccuracyMS2ppm) {
    this.massAccuracyMS2ppm = massAccuracyMS2ppm;
  }

  public Sirius isotopeMs2Settings(IsotopeMs2SettingsEnum isotopeMs2Settings) {
    this.isotopeMs2Settings = isotopeMs2Settings;
    return this;
  }

   /**
   * Specify how isotope patterns in MS/MS should be handled.  &lt;p&gt;  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  &lt;p&gt;  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  &lt;p&gt;  IGNORE: Ignore that there might be isotope patterns in MS/MS
   * @return isotopeMs2Settings
  **/
  @Schema(description = "Specify how isotope patterns in MS/MS should be handled.  <p>  FILTER: When filtering is enabled, molecular formulas are excluded if their  theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.  <p>  SCORE: Use them for SCORING. To use this the instrument should produce clear MS/MS isotope patterns  <p>  IGNORE: Ignore that there might be isotope patterns in MS/MS")
  public IsotopeMs2SettingsEnum getIsotopeMs2Settings() {
    return isotopeMs2Settings;
  }

  public void setIsotopeMs2Settings(IsotopeMs2SettingsEnum isotopeMs2Settings) {
    this.isotopeMs2Settings = isotopeMs2Settings;
  }

  public Sirius formulaSearchDBs(List<FormulaSearchDBsEnum> formulaSearchDBs) {
    this.formulaSearchDBs = formulaSearchDBs;
    return this;
  }

  public Sirius addFormulaSearchDBsItem(FormulaSearchDBsEnum formulaSearchDBsItem) {
    if (this.formulaSearchDBs == null) {
      this.formulaSearchDBs = new ArrayList<FormulaSearchDBsEnum>();
    }
    this.formulaSearchDBs.add(formulaSearchDBsItem);
    return this;
  }

   /**
   * List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.
   * @return formulaSearchDBs
  **/
  @Schema(description = "List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.")
  public List<FormulaSearchDBsEnum> getFormulaSearchDBs() {
    return formulaSearchDBs;
  }

  public void setFormulaSearchDBs(List<FormulaSearchDBsEnum> formulaSearchDBs) {
    this.formulaSearchDBs = formulaSearchDBs;
  }

  public Sirius enforcedFormulaConstraints(String enforcedFormulaConstraints) {
    this.enforcedFormulaConstraints = enforcedFormulaConstraints;
    return this;
  }

   /**
   * These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Enforced: Enforced elements are always considered
   * @return enforcedFormulaConstraints
  **/
  @Schema(description = "These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered")
  public String getEnforcedFormulaConstraints() {
    return enforcedFormulaConstraints;
  }

  public void setEnforcedFormulaConstraints(String enforcedFormulaConstraints) {
    this.enforcedFormulaConstraints = enforcedFormulaConstraints;
  }

  public Sirius fallbackFormulaConstraints(String fallbackFormulaConstraints) {
    this.fallbackFormulaConstraints = fallbackFormulaConstraints;
    return this;
  }

   /**
   * These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)
   * @return fallbackFormulaConstraints
  **/
  @Schema(description = "These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)")
  public String getFallbackFormulaConstraints() {
    return fallbackFormulaConstraints;
  }

  public void setFallbackFormulaConstraints(String fallbackFormulaConstraints) {
    this.fallbackFormulaConstraints = fallbackFormulaConstraints;
  }

  public Sirius detectableElements(List<String> detectableElements) {
    this.detectableElements = detectableElements;
    return this;
  }

  public Sirius addDetectableElementsItem(String detectableElementsItem) {
    if (this.detectableElements == null) {
      this.detectableElements = new ArrayList<String>();
    }
    this.detectableElements.add(detectableElementsItem);
    return this;
  }

   /**
   * These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  &lt;p&gt;  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)
   * @return detectableElements
  **/
  @Schema(description = "These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)")
  public List<String> getDetectableElements() {
    return detectableElements;
  }

  public void setDetectableElements(List<String> detectableElements) {
    this.detectableElements = detectableElements;
  }

  public Sirius ilpTimeout(Timeout ilpTimeout) {
    this.ilpTimeout = ilpTimeout;
    return this;
  }

   /**
   * Get ilpTimeout
   * @return ilpTimeout
  **/
  @Schema(description = "")
  public Timeout getIlpTimeout() {
    return ilpTimeout;
  }

  public void setIlpTimeout(Timeout ilpTimeout) {
    this.ilpTimeout = ilpTimeout;
  }

  public Sirius useHeuristic(UseHeuristic useHeuristic) {
    this.useHeuristic = useHeuristic;
    return this;
  }

   /**
   * Get useHeuristic
   * @return useHeuristic
  **/
  @Schema(description = "")
  public UseHeuristic getUseHeuristic() {
    return useHeuristic;
  }

  public void setUseHeuristic(UseHeuristic useHeuristic) {
    this.useHeuristic = useHeuristic;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Sirius sirius = (Sirius) o;
    return Objects.equals(this.enabled, sirius.enabled) &&
        Objects.equals(this.profile, sirius.profile) &&
        Objects.equals(this.numberOfCandidates, sirius.numberOfCandidates) &&
        Objects.equals(this.numberOfCandidatesPerIon, sirius.numberOfCandidatesPerIon) &&
        Objects.equals(this.massAccuracyMS2ppm, sirius.massAccuracyMS2ppm) &&
        Objects.equals(this.isotopeMs2Settings, sirius.isotopeMs2Settings) &&
        Objects.equals(this.formulaSearchDBs, sirius.formulaSearchDBs) &&
        Objects.equals(this.enforcedFormulaConstraints, sirius.enforcedFormulaConstraints) &&
        Objects.equals(this.fallbackFormulaConstraints, sirius.fallbackFormulaConstraints) &&
        Objects.equals(this.detectableElements, sirius.detectableElements) &&
        Objects.equals(this.ilpTimeout, sirius.ilpTimeout) &&
        Objects.equals(this.useHeuristic, sirius.useHeuristic);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, profile, numberOfCandidates, numberOfCandidatesPerIon, massAccuracyMS2ppm, isotopeMs2Settings, formulaSearchDBs, enforcedFormulaConstraints, fallbackFormulaConstraints, detectableElements, ilpTimeout, useHeuristic);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Sirius {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    profile: ").append(toIndentedString(profile)).append("\n");
    sb.append("    numberOfCandidates: ").append(toIndentedString(numberOfCandidates)).append("\n");
    sb.append("    numberOfCandidatesPerIon: ").append(toIndentedString(numberOfCandidatesPerIon)).append("\n");
    sb.append("    massAccuracyMS2ppm: ").append(toIndentedString(massAccuracyMS2ppm)).append("\n");
    sb.append("    isotopeMs2Settings: ").append(toIndentedString(isotopeMs2Settings)).append("\n");
    sb.append("    formulaSearchDBs: ").append(toIndentedString(formulaSearchDBs)).append("\n");
    sb.append("    enforcedFormulaConstraints: ").append(toIndentedString(enforcedFormulaConstraints)).append("\n");
    sb.append("    fallbackFormulaConstraints: ").append(toIndentedString(fallbackFormulaConstraints)).append("\n");
    sb.append("    detectableElements: ").append(toIndentedString(detectableElements)).append("\n");
    sb.append("    ilpTimeout: ").append(toIndentedString(ilpTimeout)).append("\n");
    sb.append("    useHeuristic: ").append(toIndentedString(useHeuristic)).append("\n");
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
