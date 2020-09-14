class PullRequestsController < ApplicationController
  def index
    @pull_requests = GithubService.new.pull_requests(params[:author], params[:repo])
    @pull_requests = [] if @pull_requests.message == 'Not Found'
  end

  def search
  end
end
