# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReview
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewSpec

  # Status is filled in by the server and indicates whether the request can be authenticated.
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewSpec = nil, @status : ::Pyrite::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewStatus = nil)
    @api_version = "TokenReview"
    @kind = "v1"
  end

  # create a TokenReview
  def create(context : String? = nil)
  end
end