class Sandwich < ActiveRecord::Base
  belongs_to :type
  attr_accessible :type_id

  def type_name
    self.type.name
  end
end
