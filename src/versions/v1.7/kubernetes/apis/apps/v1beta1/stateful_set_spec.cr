# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A StatefulSetSpec is the specification of a StatefulSet.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
    @[::JSON::Field(key: "podManagementPolicy")]
    @[::YAML::Field(key: "podManagementPolicy")]
    property pod_management_policy : String | Nil

    # replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
    @[::JSON::Field(key: "revisionHistoryLimit")]
    @[::YAML::Field(key: "revisionHistoryLimit")]
    property revision_history_limit : Int32 | Nil

    # selector is a label query over pods that should match the replica count. If empty, defaulted to labels on the pod template. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.)
    @[::JSON::Field(key: "serviceName")]
    @[::YAML::Field(key: "serviceName")]
    property service_name : String

    # template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
    @[::JSON::Field(key: "template")]
    @[::YAML::Field(key: "template")]
    property template : Kubernetes::Api::V1::PodTemplateSpec

    # updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
    @[::JSON::Field(key: "updateStrategy")]
    @[::YAML::Field(key: "updateStrategy")]
    property update_strategy : Kubernetes::Apis::Apps::V1beta1::StatefulSetUpdateStrategy | Nil

    # volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    @[::JSON::Field(key: "volumeClaimTemplates")]
    @[::YAML::Field(key: "volumeClaimTemplates")]
    property volume_claim_templates : Array(Kubernetes::Api::V1::PersistentVolumeClaim) | Nil

    def initialize(*, @pod_management_policy : String | Nil = nil, @replicas : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @service_name : String, @template : Kubernetes::Api::V1::PodTemplateSpec, @update_strategy : Kubernetes::Apis::Apps::V1beta1::StatefulSetUpdateStrategy | Nil = nil, @volume_claim_templates : Array | Nil = nil)
    end
  end
end
