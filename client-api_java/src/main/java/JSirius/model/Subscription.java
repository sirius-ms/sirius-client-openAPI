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
import org.threeten.bp.OffsetDateTime;
/**
 * Subscription
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2022-10-18T13:44:23.795147Z[Etc/UTC]")
public class Subscription {
  @SerializedName("sid")
  private String sid = null;

  @SerializedName("subscriberId")
  private String subscriberId = null;

  @SerializedName("subscriberName")
  private String subscriberName = null;

  @SerializedName("expirationDate")
  private OffsetDateTime expirationDate = null;

  @SerializedName("countQueries")
  private Boolean countQueries = null;

  @SerializedName("compoundLimit")
  private Integer compoundLimit = null;

  @SerializedName("compoundHashRecordingTime")
  private Integer compoundHashRecordingTime = null;

  @SerializedName("maxQueriesPerCompound")
  private Integer maxQueriesPerCompound = null;

  @SerializedName("maxUserAccounts")
  private Integer maxUserAccounts = null;

  @SerializedName("serviceUrl")
  private String serviceUrl = null;

  @SerializedName("description")
  private String description = null;

  @SerializedName("name")
  private String name = null;

  @SerializedName("tos")
  private String tos = null;

  @SerializedName("pp")
  private String pp = null;

  public Subscription sid(String sid) {
    this.sid = sid;
    return this;
  }

   /**
   * Get sid
   * @return sid
  **/
  @Schema(description = "")
  public String getSid() {
    return sid;
  }

  public void setSid(String sid) {
    this.sid = sid;
  }

  public Subscription subscriberId(String subscriberId) {
    this.subscriberId = subscriberId;
    return this;
  }

   /**
   * Get subscriberId
   * @return subscriberId
  **/
  @Schema(description = "")
  public String getSubscriberId() {
    return subscriberId;
  }

  public void setSubscriberId(String subscriberId) {
    this.subscriberId = subscriberId;
  }

  public Subscription subscriberName(String subscriberName) {
    this.subscriberName = subscriberName;
    return this;
  }

   /**
   * Get subscriberName
   * @return subscriberName
  **/
  @Schema(description = "")
  public String getSubscriberName() {
    return subscriberName;
  }

  public void setSubscriberName(String subscriberName) {
    this.subscriberName = subscriberName;
  }

  public Subscription expirationDate(OffsetDateTime expirationDate) {
    this.expirationDate = expirationDate;
    return this;
  }

   /**
   * Get expirationDate
   * @return expirationDate
  **/
  @Schema(description = "")
  public OffsetDateTime getExpirationDate() {
    return expirationDate;
  }

  public void setExpirationDate(OffsetDateTime expirationDate) {
    this.expirationDate = expirationDate;
  }

  public Subscription countQueries(Boolean countQueries) {
    this.countQueries = countQueries;
    return this;
  }

   /**
   * Get countQueries
   * @return countQueries
  **/
  @Schema(description = "")
  public Boolean isCountQueries() {
    return countQueries;
  }

  public void setCountQueries(Boolean countQueries) {
    this.countQueries = countQueries;
  }

  public Subscription compoundLimit(Integer compoundLimit) {
    this.compoundLimit = compoundLimit;
    return this;
  }

   /**
   * Get compoundLimit
   * @return compoundLimit
  **/
  @Schema(description = "")
  public Integer getCompoundLimit() {
    return compoundLimit;
  }

  public void setCompoundLimit(Integer compoundLimit) {
    this.compoundLimit = compoundLimit;
  }

  public Subscription compoundHashRecordingTime(Integer compoundHashRecordingTime) {
    this.compoundHashRecordingTime = compoundHashRecordingTime;
    return this;
  }

   /**
   * Get compoundHashRecordingTime
   * @return compoundHashRecordingTime
  **/
  @Schema(description = "")
  public Integer getCompoundHashRecordingTime() {
    return compoundHashRecordingTime;
  }

  public void setCompoundHashRecordingTime(Integer compoundHashRecordingTime) {
    this.compoundHashRecordingTime = compoundHashRecordingTime;
  }

  public Subscription maxQueriesPerCompound(Integer maxQueriesPerCompound) {
    this.maxQueriesPerCompound = maxQueriesPerCompound;
    return this;
  }

   /**
   * Get maxQueriesPerCompound
   * @return maxQueriesPerCompound
  **/
  @Schema(description = "")
  public Integer getMaxQueriesPerCompound() {
    return maxQueriesPerCompound;
  }

  public void setMaxQueriesPerCompound(Integer maxQueriesPerCompound) {
    this.maxQueriesPerCompound = maxQueriesPerCompound;
  }

  public Subscription maxUserAccounts(Integer maxUserAccounts) {
    this.maxUserAccounts = maxUserAccounts;
    return this;
  }

   /**
   * Get maxUserAccounts
   * @return maxUserAccounts
  **/
  @Schema(description = "")
  public Integer getMaxUserAccounts() {
    return maxUserAccounts;
  }

  public void setMaxUserAccounts(Integer maxUserAccounts) {
    this.maxUserAccounts = maxUserAccounts;
  }

  public Subscription serviceUrl(String serviceUrl) {
    this.serviceUrl = serviceUrl;
    return this;
  }

   /**
   * Get serviceUrl
   * @return serviceUrl
  **/
  @Schema(description = "")
  public String getServiceUrl() {
    return serviceUrl;
  }

  public void setServiceUrl(String serviceUrl) {
    this.serviceUrl = serviceUrl;
  }

  public Subscription description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @Schema(description = "")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Subscription name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @Schema(description = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Subscription tos(String tos) {
    this.tos = tos;
    return this;
  }

   /**
   * Get tos
   * @return tos
  **/
  @Schema(description = "")
  public String getTos() {
    return tos;
  }

  public void setTos(String tos) {
    this.tos = tos;
  }

  public Subscription pp(String pp) {
    this.pp = pp;
    return this;
  }

   /**
   * Get pp
   * @return pp
  **/
  @Schema(description = "")
  public String getPp() {
    return pp;
  }

  public void setPp(String pp) {
    this.pp = pp;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Subscription subscription = (Subscription) o;
    return Objects.equals(this.sid, subscription.sid) &&
        Objects.equals(this.subscriberId, subscription.subscriberId) &&
        Objects.equals(this.subscriberName, subscription.subscriberName) &&
        Objects.equals(this.expirationDate, subscription.expirationDate) &&
        Objects.equals(this.countQueries, subscription.countQueries) &&
        Objects.equals(this.compoundLimit, subscription.compoundLimit) &&
        Objects.equals(this.compoundHashRecordingTime, subscription.compoundHashRecordingTime) &&
        Objects.equals(this.maxQueriesPerCompound, subscription.maxQueriesPerCompound) &&
        Objects.equals(this.maxUserAccounts, subscription.maxUserAccounts) &&
        Objects.equals(this.serviceUrl, subscription.serviceUrl) &&
        Objects.equals(this.description, subscription.description) &&
        Objects.equals(this.name, subscription.name) &&
        Objects.equals(this.tos, subscription.tos) &&
        Objects.equals(this.pp, subscription.pp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sid, subscriberId, subscriberName, expirationDate, countQueries, compoundLimit, compoundHashRecordingTime, maxQueriesPerCompound, maxUserAccounts, serviceUrl, description, name, tos, pp);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Subscription {\n");
    
    sb.append("    sid: ").append(toIndentedString(sid)).append("\n");
    sb.append("    subscriberId: ").append(toIndentedString(subscriberId)).append("\n");
    sb.append("    subscriberName: ").append(toIndentedString(subscriberName)).append("\n");
    sb.append("    expirationDate: ").append(toIndentedString(expirationDate)).append("\n");
    sb.append("    countQueries: ").append(toIndentedString(countQueries)).append("\n");
    sb.append("    compoundLimit: ").append(toIndentedString(compoundLimit)).append("\n");
    sb.append("    compoundHashRecordingTime: ").append(toIndentedString(compoundHashRecordingTime)).append("\n");
    sb.append("    maxQueriesPerCompound: ").append(toIndentedString(maxQueriesPerCompound)).append("\n");
    sb.append("    maxUserAccounts: ").append(toIndentedString(maxUserAccounts)).append("\n");
    sb.append("    serviceUrl: ").append(toIndentedString(serviceUrl)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    tos: ").append(toIndentedString(tos)).append("\n");
    sb.append("    pp: ").append(toIndentedString(pp)).append("\n");
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
