# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIService represents a server for a particular GroupVersion. Name must be "version.group".
  class KubeAggregator::Apis::Apiregistration::V1::APIService
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "apiregistration/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "APIService"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "apiregistration/v1" && instance.kind == "APIService"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "apiregistration/v1" && instance.kind == "APIService"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec contains information for locating and communicating with a server
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec | Nil

    # Status contains derived information about an API server
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec | Nil = nil, @status : KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus | Nil = nil)
    end
  end

  module Resources::Apiregistration::V1
    alias APIService = ::Pyrite::KubeAggregator::Apis::Apiregistration::V1::APIService
  end
end
