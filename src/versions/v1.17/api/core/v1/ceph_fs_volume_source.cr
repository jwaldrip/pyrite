# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  class Api::Core::V1::CephFSVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required: Monitors is a collection of Ceph monitors More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "monitors")]
    @[::YAML::Field(key: "monitors")]
    property monitors : Array(String)

    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "readOnly")]
    @[::YAML::Field(key: "readOnly")]
    property read_only : Bool | Nil

    # Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretFile")]
    @[::YAML::Field(key: "secretFile")]
    property secret_file : String | Nil

    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretRef")]
    @[::YAML::Field(key: "secretRef")]
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # Optional: User is the rados user name, default is admin More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : String | Nil

    def initialize(*, @monitors : Array, @path : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_file : String | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
