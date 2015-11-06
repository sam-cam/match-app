class ChangeIntegerToBooleans < ActiveRecord::Migration
  def change
    # change_column :users, :developer, :boolean
    # change_column :users, :designer, :boolean
    change_column :users, :developer, 'integer USING CAST(developer AS integer)'

    change_column :users, :designer, 'integer USING CAST(designer AS integer)'

  end
end
