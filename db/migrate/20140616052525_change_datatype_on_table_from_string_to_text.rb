class ChangeDatatypeOnTableFromStringToText < ActiveRecord::Migration
  def change
    change_column :repo_searches, :results, :text, :limit => nil
  end
end
