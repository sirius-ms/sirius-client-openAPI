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
import JSirius.model.CompoundClass;
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
 * Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.
 */
@Schema(description = "Container class that holds the CANOPUS compound class predictions for alle predictable compound classes.  This is the full CANOPUS result.")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-22T13:03:56.251709Z[Etc/UTC]")
public class CanopusPredictions {
  @SerializedName("classyFireClasses")
  private List<CompoundClass> classyFireClasses = null;

  @SerializedName("npcClasses")
  private List<CompoundClass> npcClasses = null;

  public CanopusPredictions classyFireClasses(List<CompoundClass> classyFireClasses) {
    this.classyFireClasses = classyFireClasses;
    return this;
  }

  public CanopusPredictions addClassyFireClassesItem(CompoundClass classyFireClassesItem) {
    if (this.classyFireClasses == null) {
      this.classyFireClasses = new ArrayList<CompoundClass>();
    }
    this.classyFireClasses.add(classyFireClassesItem);
    return this;
  }

   /**
   * All predicted ClassyFire classes
   * @return classyFireClasses
  **/
  @Schema(description = "All predicted ClassyFire classes")
  public List<CompoundClass> getClassyFireClasses() {
    return classyFireClasses;
  }

  public void setClassyFireClasses(List<CompoundClass> classyFireClasses) {
    this.classyFireClasses = classyFireClasses;
  }

  public CanopusPredictions npcClasses(List<CompoundClass> npcClasses) {
    this.npcClasses = npcClasses;
    return this;
  }

  public CanopusPredictions addNpcClassesItem(CompoundClass npcClassesItem) {
    if (this.npcClasses == null) {
      this.npcClasses = new ArrayList<CompoundClass>();
    }
    this.npcClasses.add(npcClassesItem);
    return this;
  }

   /**
   * All predicted NPC classes
   * @return npcClasses
  **/
  @Schema(description = "All predicted NPC classes")
  public List<CompoundClass> getNpcClasses() {
    return npcClasses;
  }

  public void setNpcClasses(List<CompoundClass> npcClasses) {
    this.npcClasses = npcClasses;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CanopusPredictions canopusPredictions = (CanopusPredictions) o;
    return Objects.equals(this.classyFireClasses, canopusPredictions.classyFireClasses) &&
        Objects.equals(this.npcClasses, canopusPredictions.npcClasses);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classyFireClasses, npcClasses);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CanopusPredictions {\n");
    
    sb.append("    classyFireClasses: ").append(toIndentedString(classyFireClasses)).append("\n");
    sb.append("    npcClasses: ").append(toIndentedString(npcClasses)).append("\n");
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
