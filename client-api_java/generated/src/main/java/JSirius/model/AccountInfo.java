/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * The version of the OpenAPI document: v0.9 on SIRIUS 5.6.4-SNAPSHOT
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package JSirius.model;

import java.util.Objects;
import java.util.Arrays;
import JSirius.model.Subscription;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import JSirius.JSON;

/**
 * 
 */
@ApiModel(description = "")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-03-28T16:46:58.250763Z[Etc/UTC]")
public class AccountInfo {
  public static final String SERIALIZED_NAME_USER_I_D = "userID";
  @SerializedName(SERIALIZED_NAME_USER_I_D)
  private String userID;

  public static final String SERIALIZED_NAME_USERNAME = "username";
  @SerializedName(SERIALIZED_NAME_USERNAME)
  private String username;

  public static final String SERIALIZED_NAME_USER_EMAIL = "userEmail";
  @SerializedName(SERIALIZED_NAME_USER_EMAIL)
  private String userEmail;

  public static final String SERIALIZED_NAME_GRAVATAR_U_R_L = "gravatarURL";
  @SerializedName(SERIALIZED_NAME_GRAVATAR_U_R_L)
  private String gravatarURL;

  public static final String SERIALIZED_NAME_SUBSCRIPTIONS = "subscriptions";
  @SerializedName(SERIALIZED_NAME_SUBSCRIPTIONS)
  private List<Subscription> subscriptions = null;

  public static final String SERIALIZED_NAME_ACTIVE_SUBSCRIPTION_ID = "activeSubscriptionId";
  @SerializedName(SERIALIZED_NAME_ACTIVE_SUBSCRIPTION_ID)
  private String activeSubscriptionId;

  public AccountInfo() {
  }

  public AccountInfo userID(String userID) {
    
    this.userID = userID;
    return this;
  }

   /**
   * Get userID
   * @return userID
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUserID() {
    return userID;
  }


  public void setUserID(String userID) {
    this.userID = userID;
  }


  public AccountInfo username(String username) {
    
    this.username = username;
    return this;
  }

   /**
   * Get username
   * @return username
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUsername() {
    return username;
  }


  public void setUsername(String username) {
    this.username = username;
  }


  public AccountInfo userEmail(String userEmail) {
    
    this.userEmail = userEmail;
    return this;
  }

   /**
   * Get userEmail
   * @return userEmail
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUserEmail() {
    return userEmail;
  }


  public void setUserEmail(String userEmail) {
    this.userEmail = userEmail;
  }


  public AccountInfo gravatarURL(String gravatarURL) {
    
    this.gravatarURL = gravatarURL;
    return this;
  }

   /**
   * Get gravatarURL
   * @return gravatarURL
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getGravatarURL() {
    return gravatarURL;
  }


  public void setGravatarURL(String gravatarURL) {
    this.gravatarURL = gravatarURL;
  }


  public AccountInfo subscriptions(List<Subscription> subscriptions) {
    
    this.subscriptions = subscriptions;
    return this;
  }

  public AccountInfo addSubscriptionsItem(Subscription subscriptionsItem) {
    if (this.subscriptions == null) {
      this.subscriptions = new ArrayList<>();
    }
    this.subscriptions.add(subscriptionsItem);
    return this;
  }

   /**
   * Get subscriptions
   * @return subscriptions
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Subscription> getSubscriptions() {
    return subscriptions;
  }


  public void setSubscriptions(List<Subscription> subscriptions) {
    this.subscriptions = subscriptions;
  }


  public AccountInfo activeSubscriptionId(String activeSubscriptionId) {
    
    this.activeSubscriptionId = activeSubscriptionId;
    return this;
  }

   /**
   * Get activeSubscriptionId
   * @return activeSubscriptionId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getActiveSubscriptionId() {
    return activeSubscriptionId;
  }


  public void setActiveSubscriptionId(String activeSubscriptionId) {
    this.activeSubscriptionId = activeSubscriptionId;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfo accountInfo = (AccountInfo) o;
    return Objects.equals(this.userID, accountInfo.userID) &&
        Objects.equals(this.username, accountInfo.username) &&
        Objects.equals(this.userEmail, accountInfo.userEmail) &&
        Objects.equals(this.gravatarURL, accountInfo.gravatarURL) &&
        Objects.equals(this.subscriptions, accountInfo.subscriptions) &&
        Objects.equals(this.activeSubscriptionId, accountInfo.activeSubscriptionId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(userID, username, userEmail, gravatarURL, subscriptions, activeSubscriptionId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfo {\n");
    sb.append("    userID: ").append(toIndentedString(userID)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    userEmail: ").append(toIndentedString(userEmail)).append("\n");
    sb.append("    gravatarURL: ").append(toIndentedString(gravatarURL)).append("\n");
    sb.append("    subscriptions: ").append(toIndentedString(subscriptions)).append("\n");
    sb.append("    activeSubscriptionId: ").append(toIndentedString(activeSubscriptionId)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("userID");
    openapiFields.add("username");
    openapiFields.add("userEmail");
    openapiFields.add("gravatarURL");
    openapiFields.add("subscriptions");
    openapiFields.add("activeSubscriptionId");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to AccountInfo
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!AccountInfo.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in AccountInfo is not found in the empty JSON string", AccountInfo.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!AccountInfo.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `AccountInfo` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("userID") != null && !jsonObj.get("userID").isJsonNull()) && !jsonObj.get("userID").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `userID` to be a primitive type in the JSON string but got `%s`", jsonObj.get("userID").toString()));
      }
      if ((jsonObj.get("username") != null && !jsonObj.get("username").isJsonNull()) && !jsonObj.get("username").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `username` to be a primitive type in the JSON string but got `%s`", jsonObj.get("username").toString()));
      }
      if ((jsonObj.get("userEmail") != null && !jsonObj.get("userEmail").isJsonNull()) && !jsonObj.get("userEmail").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `userEmail` to be a primitive type in the JSON string but got `%s`", jsonObj.get("userEmail").toString()));
      }
      if ((jsonObj.get("gravatarURL") != null && !jsonObj.get("gravatarURL").isJsonNull()) && !jsonObj.get("gravatarURL").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gravatarURL` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gravatarURL").toString()));
      }
      if (jsonObj.get("subscriptions") != null && !jsonObj.get("subscriptions").isJsonNull()) {
        JsonArray jsonArraysubscriptions = jsonObj.getAsJsonArray("subscriptions");
        if (jsonArraysubscriptions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("subscriptions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `subscriptions` to be an array in the JSON string but got `%s`", jsonObj.get("subscriptions").toString()));
          }

          // validate the optional field `subscriptions` (array)
          for (int i = 0; i < jsonArraysubscriptions.size(); i++) {
            Subscription.validateJsonObject(jsonArraysubscriptions.get(i).getAsJsonObject());
          };
        }
      }
      if ((jsonObj.get("activeSubscriptionId") != null && !jsonObj.get("activeSubscriptionId").isJsonNull()) && !jsonObj.get("activeSubscriptionId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `activeSubscriptionId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("activeSubscriptionId").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!AccountInfo.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'AccountInfo' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<AccountInfo> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(AccountInfo.class));

       return (TypeAdapter<T>) new TypeAdapter<AccountInfo>() {
           @Override
           public void write(JsonWriter out, AccountInfo value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public AccountInfo read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of AccountInfo given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of AccountInfo
  * @throws IOException if the JSON string is invalid with respect to AccountInfo
  */
  public static AccountInfo fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, AccountInfo.class);
  }

 /**
  * Convert an instance of AccountInfo to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

