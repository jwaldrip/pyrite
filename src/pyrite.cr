require "json"
require "yaml"
require "http/client"
require "./kube_config"

module Pyrite
  # Parse the version from the shard.yml
  VERSION = YAML.parse({{ `cat ../shard.yml` }})["version"].to_s

  def self.url=(url)
    @@client = HTTP::Client.new(url)
  end

  def self.client
    @@client
  end

  def self.headers
    HTTP::Headers.new
  end
end

if File.exists?("~/.kube/config")
  Pyrite::KubeConfig.from_yaml(File.read("~/.kube/config"))
  Pyrite.url = ""
end

require "./pyrite/*"