require 'zenhub/client'

module Zenhub
  class << self
    def new(zenhub_access_token, github_access_token)
      Client.new(zenhub_access_token, github_access_token)
    end
  end
end
