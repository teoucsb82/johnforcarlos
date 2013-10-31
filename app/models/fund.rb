class Fund < ActiveRecord::Base
  attr_accessible :email, :dollars, :name, :paid

  validates :dollars, :numericality => { :greater_than_or_equal_to => 5 }

  validates :name, :presence => :true
  
  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
end
