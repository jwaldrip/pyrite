# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
  class Api::Rbac::V1::ClusterRole
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("rbac.authorization.k8s.io/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("rbac.authorization.k8s.io/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "rbac.authorization.k8s.io/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ClusterRole"
    # AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
    @[::JSON::Field(key: "aggregationRule")]
    @[::YAML::Field(key: "aggregationRule")]
    property aggregation_rule : Api::Rbac::V1::AggregationRule | Nil

    # Standard object's metadata.
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this ClusterRole
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Rbac::V1::PolicyRule) | Nil

    def initialize(*, @aggregation_rule : Api::Rbac::V1::AggregationRule | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1
    alias ClusterRole = ::Pyrite::Api::Rbac::V1::ClusterRole
  end
end