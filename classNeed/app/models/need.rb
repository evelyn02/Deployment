class Need < ActiveRecord::Base
  attr_accessible :campaign_id, :contacts_url, :status
  belongs_to :campaign
end
