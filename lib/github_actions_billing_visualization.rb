require 'github_actions_billing_visualization/version'
require 'octokit'

require 'patch/actions_workflow'
require 'patch/users'

module GithubActionsBillingVisualization

  def self.run
    access_token = ENV['ACCESS_TOKEN']
    client = Octokit::Client.new(access_token: access_token)
    user_name = 'M-Yamashita01'
    res = client.github_actions_billing(user_name).to_h

    puts 'GitHub Actions Usage'
    puts "Total Used: #{res[:total_minutes_used]} min"
    puts "Included minutes: #{res[:included_minutes]} min"
    puts "Minutes Used Breakdown: #{res[:minutes_used_breakdown]} min"
  end

  class Error < StandardError; end
  # Your code goes here...
end
