class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 50
      t.string :email, :limit => 40
      t.string :password

      t.timestamps
    end
  end
end
