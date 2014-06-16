require 'spec_helper'

describe GithubApi do
  describe '#repos' do
    it 'returns all the repos for the seishingithub github user' do
      VCR.use_cassette "github_api/repos/seishingithub" do

        github_api = GithubApi.new

        repos = JSON.parse github_api.repos(:username => 'seishingithub')

        expect(repos.length).to eq(30)

        names = repos.map { |repo| repo["name"] }

        expect(names).to include("camera_snapshot_app")
        expect(names).to include("methods_practice")
        expect(names).to include("rails_crud_apples_app")
      end
    end
  end
end