class AddUserToDevelopers < ActiveRecord::Migration
  def change
    add_reference :developers, :user, index: true, foreign_key: true
  end
end
