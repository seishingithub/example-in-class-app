class RepoSearch < ActiveRecord::Base
  validates :username, :presence => true

  def repos
    JSON.parse results
  end
end