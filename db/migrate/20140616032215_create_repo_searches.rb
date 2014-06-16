class CreateRepoSearches < ActiveRecord::Migration
  def change
    create_table :repo_searches do |t|
      t.string :username
      t.string :results
    end
  end
end
