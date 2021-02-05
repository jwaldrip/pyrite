# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  class Api::Core::V1::EventSeries
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Number of occurrences in this series up to the last heartbeat time
    @[::JSON::Field(key: "count")]
    @[::YAML::Field(key: "count")]
    property count : Int32 | Nil

    # Time of the last occurrence observed
    @[::JSON::Field(key: "lastObservedTime")]
    @[::YAML::Field(key: "lastObservedTime")]
    property last_observed_time : Time | Nil

    # State of this Series: Ongoing or Finished Deprecated. Planned removal for 1.18
    @[::JSON::Field(key: "state")]
    @[::YAML::Field(key: "state")]
    property state : String | Nil

    def initialize(*, @count : Int32 | Nil = nil, @last_observed_time : Time | Nil = nil, @state : String | Nil = nil)
    end
  end
end