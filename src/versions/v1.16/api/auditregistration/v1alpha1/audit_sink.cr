# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # AuditSink represents a cluster level audit sink
  class Api::Auditregistration::V1alpha1::AuditSink
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "auditregistration/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "AuditSink"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "auditregistration/v1alpha1" && instance.kind == "AuditSink"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "auditregistration/v1alpha1" && instance.kind == "AuditSink"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the audit configuration spec
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Auditregistration::V1alpha1::AuditSinkSpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Auditregistration::V1alpha1::AuditSinkSpec | Nil = nil)
    end
  end

  module Resources::Auditregistration::V1alpha1
    alias AuditSink = ::Pyrite::Api::Auditregistration::V1alpha1::AuditSink
  end
end
