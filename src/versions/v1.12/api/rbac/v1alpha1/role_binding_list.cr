# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBindingList is a collection of RoleBindings
  class Api::Rbac::V1alpha1::RoleBindingList
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "List"
    # Items is a list of RoleBindings
    @[JSON::Field(key: "items")]
    @[YAML::Field(key: "items")]
    property items : Array(Api::Rbac::V1alpha1::RoleBinding)

    # Standard object's metadata.
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
