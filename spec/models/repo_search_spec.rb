require 'spec_helper'

describe RepoSearch do
  describe 'validations' do
    it 'requires a username' do
      repo_search = RepoSearch.new
      expect(repo_search.valid?).to eq(false)

      repo_search.username = 'something'
      expect(repo_search.valid?).to eq(true)
    end
  end
end