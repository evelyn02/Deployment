class CreateProjectMessages < ActiveRecord::Migration
  def change
    create_table :project_messages do |t|
      t.string :title
      t.string :sms_body, :limit=> 160
      t.string :email_body
      t.string :fax_body

      t.timestamps
    end
  end
end
