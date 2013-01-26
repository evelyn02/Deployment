class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :campaign_id
       t.string :contacts_url
      t.string :status,:default => 'pending'

      t.timestamps
    end
  end
end
