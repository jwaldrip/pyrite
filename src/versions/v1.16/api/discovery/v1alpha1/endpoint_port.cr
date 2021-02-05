# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointPort represents a Port used by an EndpointSlice
  class Api::Discovery::V1alpha1::EndpointPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass IANA_SVC_NAME validation: * must be no more than 15 characters long * may contain only [-a-z0-9] * must contain at least one letter [a-z] * it must not start or end with a hyphen, nor contain adjacent hyphens Default is empty string.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
    @[JSON::Field(key: "port")]
    @[YAML::Field(key: "port")]
    property port : Int32 | Nil

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @[JSON::Field(key: "protocol")]
    @[YAML::Field(key: "protocol")]
    property protocol : String | Nil

    def initialize(*, @name : String | Nil = nil, @port : Int32 | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
