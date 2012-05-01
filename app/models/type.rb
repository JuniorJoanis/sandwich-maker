class Type < ActiveRecord::Base
  has_one :sandwich
  attr_accessible :name
end
