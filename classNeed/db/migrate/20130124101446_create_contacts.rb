class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :string
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
