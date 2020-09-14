class GithubService
  include HTTParty
  base_uri 'api.github.com'

  def pull_requests(author, repo)
    self.class.get("/repos/#{author}/#{repo}/pulls",
                   { "Accept": 'application/vnd.github.v3+json' })
  end
end