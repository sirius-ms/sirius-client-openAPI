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
 * Parameters to \&quot;remote control\&quot; the SIRIUS GUI.
 */
@Schema(description = "Parameters to \"remote control\" the SIRIUS GUI.")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-18T14:00:31.480810Z[Etc/UTC]")
public class GuiParameters {
  /**
   * Selected Result ab.
   */
  @JsonAdapter(SelectedTabEnum.Adapter.class)
  public enum SelectedTabEnum {
    FORMULAS("FORMULAS"),
    SPECTRA("SPECTRA"),
    TREES("TREES"),
    PREDICTED_FINGERPRINT("PREDICTED_FINGERPRINT"),
    STRUCTURES("STRUCTURES"),
    STRUCTURE_ANNOTATION("STRUCTURE_ANNOTATION"),
    COMPOUND_CLASSES("COMPOUND_CLASSES");

    private String value;

    SelectedTabEnum(String value) {
      this.value = value;
    }
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    public static SelectedTabEnum fromValue(String input) {
      for (SelectedTabEnum b : SelectedTabEnum.values()) {
        if (b.value.equals(input)) {
          return b;
        }
      }
      return null;
    }
    public static class Adapter extends TypeAdapter<SelectedTabEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final SelectedTabEnum enumeration) throws IOException {
        jsonWriter.value(String.valueOf(enumeration.getValue()));
      }

      @Override
      public SelectedTabEnum read(final JsonReader jsonReader) throws IOException {
        Object value = jsonReader.nextString();
        return SelectedTabEnum.fromValue((String)(value));
      }
    }
  }  @SerializedName("selectedTab")
  private SelectedTabEnum selectedTab = null;

  @SerializedName("cid")
  private String cid = null;

  @SerializedName("fid")
  private String fid = null;

  @SerializedName("structureCandidateInChIKey")
  private String structureCandidateInChIKey = null;

  @SerializedName("bringToFront")
  private Boolean bringToFront = null;

  public GuiParameters selectedTab(SelectedTabEnum selectedTab) {
    this.selectedTab = selectedTab;
    return this;
  }

   /**
   * Selected Result ab.
   * @return selectedTab
  **/
  @Schema(description = "Selected Result ab.")
  public SelectedTabEnum getSelectedTab() {
    return selectedTab;
  }

  public void setSelectedTab(SelectedTabEnum selectedTab) {
    this.selectedTab = selectedTab;
  }

  public GuiParameters cid(String cid) {
    this.cid = cid;
    return this;
  }

   /**
   * ID of Selected compound.
   * @return cid
  **/
  @Schema(description = "ID of Selected compound.")
  public String getCid() {
    return cid;
  }

  public void setCid(String cid) {
    this.cid = cid;
  }

  public GuiParameters fid(String fid) {
    this.fid = fid;
    return this;
  }

   /**
   * ID of Selected Formula candidate of the selected compound.
   * @return fid
  **/
  @Schema(description = "ID of Selected Formula candidate of the selected compound.")
  public String getFid() {
    return fid;
  }

  public void setFid(String fid) {
    this.fid = fid;
  }

  public GuiParameters structureCandidateInChIKey(String structureCandidateInChIKey) {
    this.structureCandidateInChIKey = structureCandidateInChIKey;
    return this;
  }

   /**
   * InChIKey of selected structure candidate of selected formula candidate.
   * @return structureCandidateInChIKey
  **/
  @Schema(description = "InChIKey of selected structure candidate of selected formula candidate.")
  public String getStructureCandidateInChIKey() {
    return structureCandidateInChIKey;
  }

  public void setStructureCandidateInChIKey(String structureCandidateInChIKey) {
    this.structureCandidateInChIKey = structureCandidateInChIKey;
  }

  public GuiParameters bringToFront(Boolean bringToFront) {
    this.bringToFront = bringToFront;
    return this;
  }

   /**
   * If true bring SIRIUS GUI window to foreground.
   * @return bringToFront
  **/
  @Schema(description = "If true bring SIRIUS GUI window to foreground.")
  public Boolean isBringToFront() {
    return bringToFront;
  }

  public void setBringToFront(Boolean bringToFront) {
    this.bringToFront = bringToFront;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GuiParameters guiParameters = (GuiParameters) o;
    return Objects.equals(this.selectedTab, guiParameters.selectedTab) &&
        Objects.equals(this.cid, guiParameters.cid) &&
        Objects.equals(this.fid, guiParameters.fid) &&
        Objects.equals(this.structureCandidateInChIKey, guiParameters.structureCandidateInChIKey) &&
        Objects.equals(this.bringToFront, guiParameters.bringToFront);
  }

  @Override
  public int hashCode() {
    return Objects.hash(selectedTab, cid, fid, structureCandidateInChIKey, bringToFront);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GuiParameters {\n");
    
    sb.append("    selectedTab: ").append(toIndentedString(selectedTab)).append("\n");
    sb.append("    cid: ").append(toIndentedString(cid)).append("\n");
    sb.append("    fid: ").append(toIndentedString(fid)).append("\n");
    sb.append("    structureCandidateInChIKey: ").append(toIndentedString(structureCandidateInChIKey)).append("\n");
    sb.append("    bringToFront: ").append(toIndentedString(bringToFront)).append("\n");
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
