class RepoSearchesController < ApplicationController

  def new
    @repo_search = RepoSearch.new
  end

  def create
    results = GithubApi.new.repos(:username => params[:repo_search][:username] )

    repo_search = RepoSearch.new(:username => params[:repo_search][:username], :results => results)
    repo_search.save!

    redirect_to repo_search_path(id: repo_search.id)
  end

  def show
    @repo_search = RepoSearch.find(params[:id])
  end

end