class ProjectMessage < ActiveRecord::Base
  attr_accessible :email_body, :fax_body, :sms_body, :title
  has_many :class_need
end
