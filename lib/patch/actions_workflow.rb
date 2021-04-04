module Octokit
  class Client
    # get /repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing
    def workflow_usage(repo, id, options = {})
      get "#{Repository.path repo}/actions/workflows/#{id}/timing", options
    end
  end
end
