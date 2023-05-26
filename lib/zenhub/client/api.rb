module Zenhub
  class Client
    module Api
      def issue_data(repo_name, issue_number)
        get "/p1/repositories/#{github.repo_id(repo_name)}/issues/#{issue_number}"
      end

      def issue_events(repo_name, issue_number)
        get "/p1/repositories/#{github.repo_id(repo_name)}/issues/#{issue_number}/events"
      end

      def board_data(repo_name)
        get "/p1/repositories/#{github.repo_id(repo_name)}/board"
      end

      def epics(repo_name)
        get "/p1/repositories/#{github.repo_id(repo_name)}/epics"
      end

      def epic_data(repo_name, epic_number)
        get "/p1/repositories/#{github.repo_id(repo_name)}/epics/#{epic_number}"
      end
    end
  end
end