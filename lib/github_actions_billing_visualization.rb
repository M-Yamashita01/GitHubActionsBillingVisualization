require 'github_actions_billing_visualization/version'
require 'octokit'

module GithubActionsBillingVisualization

  def self.run
    access_token = ENV['ACCESS_TOKEN']
    client = Octokit::Client.new(access_token: access_token)
    repo = {
      owner: 'M-Yamashita01',
      repo: 'GitHubActionsBillingVisualization'
    }
    client.workflow_usage(repo, '')

    # puts client.user.inspect
  end

  class Error < StandardError; end
  # Your code goes here...
end
