# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Api::Rbac::V1beta1::ClusterRoleBinding
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ClusterRoleBinding"
    # Standard object's metadata.
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    @[JSON::Field(key: "roleRef")]
    @[YAML::Field(key: "roleRef")]
    property role_ref : Api::Rbac::V1beta1::RoleRef

    # Subjects holds references to the objects the role applies to.
    @[JSON::Field(key: "subjects")]
    @[YAML::Field(key: "subjects")]
    property subjects : Array(Api::Rbac::V1beta1::Subject)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @role_ref : Api::Rbac::V1beta1::RoleRef, @subjects : Array)
    end
  end

  module Resources::Rbac::V1beta1
    alias ClusterRoleBinding = ::Pyrite::Api::Rbac::V1beta1::ClusterRoleBinding
  end
end
