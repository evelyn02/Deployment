class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :sms_body, :limit => 160
      t.text :email_body
      t.text :fax_body

      t.timestamps
    end
  end
end

