class Visitor < ActiveRecord::Base
  attr_accessible :email
  
  validate :email, :present => true
  
end
