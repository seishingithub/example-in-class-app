class GithubApi

  def repos(options)
    username = options.fetch(:username)
    get("/users/#{username}/repos")
  end

  private

  def get(url)
    Faraday.get("https://api.github.com" + url).body
  end

end