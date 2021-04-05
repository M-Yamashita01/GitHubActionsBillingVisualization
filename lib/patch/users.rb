module Octokit
  class Client
    module Users
      # https://docs.github.com/ja/rest/reference/billing#get-github-actions-billing-for-a-user
      # /users/{username}/settings/billing/actions
      def github_actions_billing(user)
        get "#{User.path user}/settings/billing/actions"
      end
    end
  end
end
