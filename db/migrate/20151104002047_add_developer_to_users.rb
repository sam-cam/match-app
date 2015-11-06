class AddDeveloperToUsers < ActiveRecord::Migration
  def change
    add_column :users, :developer, :integer
  end
end
