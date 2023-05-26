require './lib/zenhub/version'

desc 'Build the gem file'
task :build_gem do
  sh 'gem build zenhub.gemspec'
end

desc 'Install the gem file'
task :install_gem do
  sh "gem install ./zenhub-#{Zenhub::VERSION}.gem"
end

desc 'Uninstall the gem file'
task :uninstall_gem do
  sh 'gem uninstall zenhub'
end