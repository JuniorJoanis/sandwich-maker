class Sandwich < ActiveRecord::Base
  belongs_to :type
  belongs_to :user
  attr_accessible :type_id, :user_id

  def type_name
    self.type.name
  end
end
