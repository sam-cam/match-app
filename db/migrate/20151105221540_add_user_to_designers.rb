class AddUserToDesigners < ActiveRecord::Migration
  def change
    add_reference :designers, :user, index: true, foreign_key: true
  end
end
