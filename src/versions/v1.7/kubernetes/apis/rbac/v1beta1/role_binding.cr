# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
  class Kubernetes::Apis::Rbac::V1beta1::RoleBinding
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "RoleBinding"
    # Standard object's metadata.
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    @[JSON::Field(key: "roleRef")]
    @[YAML::Field(key: "roleRef")]
    property role_ref : Kubernetes::Apis::Rbac::V1beta1::RoleRef

    # Subjects holds references to the objects the role applies to.
    @[JSON::Field(key: "subjects")]
    @[YAML::Field(key: "subjects")]
    property subjects : Array(Kubernetes::Apis::Rbac::V1beta1::Subject)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @role_ref : Kubernetes::Apis::Rbac::V1beta1::RoleRef, @subjects : Array)
    end
  end

  module Resources::Rbac::V1beta1
    alias RoleBinding = ::Pyrite::Kubernetes::Apis::Rbac::V1beta1::RoleBinding
  end
end
