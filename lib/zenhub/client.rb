require 'zenhub/connection'
require 'zenhub/client/api'
require 'zenhub/github'
require 'zenhub/version'

module Zenhub
  class Client
    include Connection
    include Client::Api

    attr_reader :zenhub_access_token, :github

    def initialize(zenhub_access_token, github_access_token)
      @zenhub_access_token = zenhub_access_token
      @github = Zenhub::Github.new(github_access_token)
    end
  end
end
