class ClassNeed < ActiveRecord::Base
  attr_accessible :campaign_id, :contacts_url, :status
  belongs_to :project_message
end
