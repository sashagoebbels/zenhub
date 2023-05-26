Gem::Specification.new do |s|
  s.name        = "zenhub"
  s.version     = "0.1.0"
  s.summary     = "ZenHub module for Ruby"
  s.description = "ZenHub module for Ruby, derived from tkm-kj/zenhub_ruby"
  s.authors     = ["Dr. Sasha Göbbels", "Nick Quaranto"]
  s.email       = "sasha.goebbels@overleaf.com"
  s.files       = ["lib/zenhub.rb",
                   "lib/zenhub/client.rb",
                   "lib/zenhub/connection.rb",
                   "lib/zenhub/github.rb",
                   "lib/zenhub/version.rb",
                   "lib/zenhub/client/api.rb"]
  s.homepage    = "https://www.overleaf.com"
  s.license       = "MIT"
end