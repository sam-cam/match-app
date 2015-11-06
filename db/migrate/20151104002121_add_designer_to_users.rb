class AddDesignerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :designer, :integer
  end
end
