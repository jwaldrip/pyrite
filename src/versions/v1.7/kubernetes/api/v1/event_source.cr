# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSource contains information for an event.
  class Kubernetes::Api::V1::EventSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Component from which the event is generated.
    @[JSON::Field(key: "component")]
    @[YAML::Field(key: "component")]
    property component : String | Nil

    # Node name on which the event is generated.
    @[JSON::Field(key: "host")]
    @[YAML::Field(key: "host")]
    property host : String | Nil

    def initialize(*, @component : String | Nil = nil, @host : String | Nil = nil)
    end
  end
end
