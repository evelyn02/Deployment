class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :string, :title
end
