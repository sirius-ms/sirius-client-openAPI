/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * OpenAPI spec version: v0.9 on SIRIUS 5.6.3-SNAPSHOT
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
/**
 * Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint.
 */
@Schema(description = "Container class that holds the best matching compound class for different levels of each ontology for a  certain compound/feature/predicted fingerprint.")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-11-12T13:00:03.644393Z[Etc/UTC]")
public class CompoundClasses {
  @SerializedName("npcPathway")
  private CompoundClass npcPathway = null;

  @SerializedName("npcSuperclass")
  private CompoundClass npcSuperclass = null;

  @SerializedName("npcClass")
  private CompoundClass npcClass = null;

  @SerializedName("classyFireMostSpecific")
  private CompoundClass classyFireMostSpecific = null;

  @SerializedName("classyFireLevel5")
  private CompoundClass classyFireLevel5 = null;

  @SerializedName("classyFireClass")
  private CompoundClass classyFireClass = null;

  @SerializedName("classyFireSubClass")
  private CompoundClass classyFireSubClass = null;

  @SerializedName("classyFireSuperClass")
  private CompoundClass classyFireSuperClass = null;

  public CompoundClasses npcPathway(CompoundClass npcPathway) {
    this.npcPathway = npcPathway;
    return this;
  }

   /**
   * Get npcPathway
   * @return npcPathway
  **/
  @Schema(description = "")
  public CompoundClass getNpcPathway() {
    return npcPathway;
  }

  public void setNpcPathway(CompoundClass npcPathway) {
    this.npcPathway = npcPathway;
  }

  public CompoundClasses npcSuperclass(CompoundClass npcSuperclass) {
    this.npcSuperclass = npcSuperclass;
    return this;
  }

   /**
   * Get npcSuperclass
   * @return npcSuperclass
  **/
  @Schema(description = "")
  public CompoundClass getNpcSuperclass() {
    return npcSuperclass;
  }

  public void setNpcSuperclass(CompoundClass npcSuperclass) {
    this.npcSuperclass = npcSuperclass;
  }

  public CompoundClasses npcClass(CompoundClass npcClass) {
    this.npcClass = npcClass;
    return this;
  }

   /**
   * Get npcClass
   * @return npcClass
  **/
  @Schema(description = "")
  public CompoundClass getNpcClass() {
    return npcClass;
  }

  public void setNpcClass(CompoundClass npcClass) {
    this.npcClass = npcClass;
  }

  public CompoundClasses classyFireMostSpecific(CompoundClass classyFireMostSpecific) {
    this.classyFireMostSpecific = classyFireMostSpecific;
    return this;
  }

   /**
   * Get classyFireMostSpecific
   * @return classyFireMostSpecific
  **/
  @Schema(description = "")
  public CompoundClass getClassyFireMostSpecific() {
    return classyFireMostSpecific;
  }

  public void setClassyFireMostSpecific(CompoundClass classyFireMostSpecific) {
    this.classyFireMostSpecific = classyFireMostSpecific;
  }

  public CompoundClasses classyFireLevel5(CompoundClass classyFireLevel5) {
    this.classyFireLevel5 = classyFireLevel5;
    return this;
  }

   /**
   * Get classyFireLevel5
   * @return classyFireLevel5
  **/
  @Schema(description = "")
  public CompoundClass getClassyFireLevel5() {
    return classyFireLevel5;
  }

  public void setClassyFireLevel5(CompoundClass classyFireLevel5) {
    this.classyFireLevel5 = classyFireLevel5;
  }

  public CompoundClasses classyFireClass(CompoundClass classyFireClass) {
    this.classyFireClass = classyFireClass;
    return this;
  }

   /**
   * Get classyFireClass
   * @return classyFireClass
  **/
  @Schema(description = "")
  public CompoundClass getClassyFireClass() {
    return classyFireClass;
  }

  public void setClassyFireClass(CompoundClass classyFireClass) {
    this.classyFireClass = classyFireClass;
  }

  public CompoundClasses classyFireSubClass(CompoundClass classyFireSubClass) {
    this.classyFireSubClass = classyFireSubClass;
    return this;
  }

   /**
   * Get classyFireSubClass
   * @return classyFireSubClass
  **/
  @Schema(description = "")
  public CompoundClass getClassyFireSubClass() {
    return classyFireSubClass;
  }

  public void setClassyFireSubClass(CompoundClass classyFireSubClass) {
    this.classyFireSubClass = classyFireSubClass;
  }

  public CompoundClasses classyFireSuperClass(CompoundClass classyFireSuperClass) {
    this.classyFireSuperClass = classyFireSuperClass;
    return this;
  }

   /**
   * Get classyFireSuperClass
   * @return classyFireSuperClass
  **/
  @Schema(description = "")
  public CompoundClass getClassyFireSuperClass() {
    return classyFireSuperClass;
  }

  public void setClassyFireSuperClass(CompoundClass classyFireSuperClass) {
    this.classyFireSuperClass = classyFireSuperClass;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CompoundClasses compoundClasses = (CompoundClasses) o;
    return Objects.equals(this.npcPathway, compoundClasses.npcPathway) &&
        Objects.equals(this.npcSuperclass, compoundClasses.npcSuperclass) &&
        Objects.equals(this.npcClass, compoundClasses.npcClass) &&
        Objects.equals(this.classyFireMostSpecific, compoundClasses.classyFireMostSpecific) &&
        Objects.equals(this.classyFireLevel5, compoundClasses.classyFireLevel5) &&
        Objects.equals(this.classyFireClass, compoundClasses.classyFireClass) &&
        Objects.equals(this.classyFireSubClass, compoundClasses.classyFireSubClass) &&
        Objects.equals(this.classyFireSuperClass, compoundClasses.classyFireSuperClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(npcPathway, npcSuperclass, npcClass, classyFireMostSpecific, classyFireLevel5, classyFireClass, classyFireSubClass, classyFireSuperClass);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CompoundClasses {\n");
    
    sb.append("    npcPathway: ").append(toIndentedString(npcPathway)).append("\n");
    sb.append("    npcSuperclass: ").append(toIndentedString(npcSuperclass)).append("\n");
    sb.append("    npcClass: ").append(toIndentedString(npcClass)).append("\n");
    sb.append("    classyFireMostSpecific: ").append(toIndentedString(classyFireMostSpecific)).append("\n");
    sb.append("    classyFireLevel5: ").append(toIndentedString(classyFireLevel5)).append("\n");
    sb.append("    classyFireClass: ").append(toIndentedString(classyFireClass)).append("\n");
    sb.append("    classyFireSubClass: ").append(toIndentedString(classyFireSubClass)).append("\n");
    sb.append("    classyFireSuperClass: ").append(toIndentedString(classyFireSuperClass)).append("\n");
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
