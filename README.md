# ZenHub module for Ruby

## Introduction

- Bundles a GitHub and a ZenHub client in one module API
- Derived from `tkm-kj/zenhub_ruby`
- Extended ZenHub REST API
- Contains a `Rakefile` to build and un/re/install the local gem

## Rakefile tasks

- `rake build_gem`: Build the Zenhub gem locally
- `rake install_gem`: Install the local Zenhub gem file
- `rake reinstall_gem`: Reinstall the local Zenhub gem file
- `rake uninstall_gem`: Uninstall the local Zenhub gem file

## API

1. Require the modules needed:
   ```ruby
   require 'dotenv'
   require 'zenhub'
   ```
   
1. I strongly recommend to put the API keys in an *unversioned* `.env` file and read that at the beginning: 
   ```ruby
   Dotenv.load
   ```
1. Define some issue numbers to use for tests:
   ```ruby
   issue_number = 13249
   epic_number = 12146
   ```
1. Instantiate the client:
   ```ruby
   client = Zenhub::Client.new(ENV["ZH_TOKEN"], ENV["GH_TOKEN"])
   ```
1. Grab all the data you like:
   ```ruby
   issue = client.issue_data(ENV["REPO_NAME"], issue_number)

   board = client.board_data(ENV['REPO_NAME'])
   board.body['pipelines'].each do |value|
   puts "#{value['name']} - #{value['id']}"
   end

   epics = client.epics(ENV['REPO_NAME'])
   epics.body['epic_issues'].each do |value|
     puts "#{value['issue_number']} - #{value['issue_url']}"
   end

   epic = client.epic_data(ENV['REPO_NAME'], epic_number)
   epic.body['issues'].each do |value|
     puts "#{value['issue_number']} - #{value['is_epic']}"
   end
   ```

