class Tag < ActiveRecord::Base
  validates :name, :presence => true

  has_and_belongs_to_many :artists

  default_scope {order('name DESC')}
end
