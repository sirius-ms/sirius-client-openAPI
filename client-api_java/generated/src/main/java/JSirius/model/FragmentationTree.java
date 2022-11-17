/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package JSirius.model;

import java.util.Objects;
import java.util.Arrays;
import JSirius.model.FragmentNode;
import JSirius.model.LossEdge;
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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-17T10:42:39.120967Z[Etc/UTC]")
public class FragmentationTree {
  public static final String SERIALIZED_NAME_FRAGMENTS = "fragments";
  @SerializedName(SERIALIZED_NAME_FRAGMENTS)
  private List<FragmentNode> fragments = null;

  public static final String SERIALIZED_NAME_LOSSES = "losses";
  @SerializedName(SERIALIZED_NAME_LOSSES)
  private List<LossEdge> losses = null;

  public static final String SERIALIZED_NAME_TREE_SCORE = "treeScore";
  @SerializedName(SERIALIZED_NAME_TREE_SCORE)
  private Double treeScore;

  public static final String SERIALIZED_NAME_ROOT = "root";
  @SerializedName(SERIALIZED_NAME_ROOT)
  private FragmentNode root;

  public FragmentationTree() {
  }

  public FragmentationTree fragments(List<FragmentNode> fragments) {
    
    this.fragments = fragments;
    return this;
  }

  public FragmentationTree addFragmentsItem(FragmentNode fragmentsItem) {
    if (this.fragments == null) {
      this.fragments = new ArrayList<>();
    }
    this.fragments.add(fragmentsItem);
    return this;
  }

   /**
   * Get fragments
   * @return fragments
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<FragmentNode> getFragments() {
    return fragments;
  }


  public void setFragments(List<FragmentNode> fragments) {
    this.fragments = fragments;
  }


  public FragmentationTree losses(List<LossEdge> losses) {
    
    this.losses = losses;
    return this;
  }

  public FragmentationTree addLossesItem(LossEdge lossesItem) {
    if (this.losses == null) {
      this.losses = new ArrayList<>();
    }
    this.losses.add(lossesItem);
    return this;
  }

   /**
   * Get losses
   * @return losses
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<LossEdge> getLosses() {
    return losses;
  }


  public void setLosses(List<LossEdge> losses) {
    this.losses = losses;
  }


  public FragmentationTree treeScore(Double treeScore) {
    
    this.treeScore = treeScore;
    return this;
  }

   /**
   * Get treeScore
   * @return treeScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getTreeScore() {
    return treeScore;
  }


  public void setTreeScore(Double treeScore) {
    this.treeScore = treeScore;
  }


  public FragmentationTree root(FragmentNode root) {
    
    this.root = root;
    return this;
  }

   /**
   * Get root
   * @return root
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public FragmentNode getRoot() {
    return root;
  }


  public void setRoot(FragmentNode root) {
    this.root = root;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FragmentationTree fragmentationTree = (FragmentationTree) o;
    return Objects.equals(this.fragments, fragmentationTree.fragments) &&
        Objects.equals(this.losses, fragmentationTree.losses) &&
        Objects.equals(this.treeScore, fragmentationTree.treeScore) &&
        Objects.equals(this.root, fragmentationTree.root);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fragments, losses, treeScore, root);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FragmentationTree {\n");
    sb.append("    fragments: ").append(toIndentedString(fragments)).append("\n");
    sb.append("    losses: ").append(toIndentedString(losses)).append("\n");
    sb.append("    treeScore: ").append(toIndentedString(treeScore)).append("\n");
    sb.append("    root: ").append(toIndentedString(root)).append("\n");
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
    openapiFields.add("fragments");
    openapiFields.add("losses");
    openapiFields.add("treeScore");
    openapiFields.add("root");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to FragmentationTree
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!FragmentationTree.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in FragmentationTree is not found in the empty JSON string", FragmentationTree.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!FragmentationTree.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `FragmentationTree` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if (jsonObj.get("fragments") != null && !jsonObj.get("fragments").isJsonNull()) {
        JsonArray jsonArrayfragments = jsonObj.getAsJsonArray("fragments");
        if (jsonArrayfragments != null) {
          // ensure the json data is an array
          if (!jsonObj.get("fragments").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `fragments` to be an array in the JSON string but got `%s`", jsonObj.get("fragments").toString()));
          }

          // validate the optional field `fragments` (array)
          for (int i = 0; i < jsonArrayfragments.size(); i++) {
            FragmentNode.validateJsonObject(jsonArrayfragments.get(i).getAsJsonObject());
          };
        }
      }
      if (jsonObj.get("losses") != null && !jsonObj.get("losses").isJsonNull()) {
        JsonArray jsonArraylosses = jsonObj.getAsJsonArray("losses");
        if (jsonArraylosses != null) {
          // ensure the json data is an array
          if (!jsonObj.get("losses").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `losses` to be an array in the JSON string but got `%s`", jsonObj.get("losses").toString()));
          }

          // validate the optional field `losses` (array)
          for (int i = 0; i < jsonArraylosses.size(); i++) {
            LossEdge.validateJsonObject(jsonArraylosses.get(i).getAsJsonObject());
          };
        }
      }
      // validate the optional field `root`
      if (jsonObj.get("root") != null && !jsonObj.get("root").isJsonNull()) {
        FragmentNode.validateJsonObject(jsonObj.getAsJsonObject("root"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!FragmentationTree.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'FragmentationTree' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<FragmentationTree> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(FragmentationTree.class));

       return (TypeAdapter<T>) new TypeAdapter<FragmentationTree>() {
           @Override
           public void write(JsonWriter out, FragmentationTree value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public FragmentationTree read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of FragmentationTree given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of FragmentationTree
  * @throws IOException if the JSON string is invalid with respect to FragmentationTree
  */
  public static FragmentationTree fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, FragmentationTree.class);
  }

 /**
  * Convert an instance of FragmentationTree to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

