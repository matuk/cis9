class Patient < ActiveRecord::Base
  attr_accessible :born_on, :firstname, :lastname
  validates_presence_of :firstname, :lastname
  has_many :items
end
