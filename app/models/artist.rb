class Artist < ActiveRecord::Base
  validates :name, :presence => true

  has_and_belongs_to_many :tags

  default_scope {order('name DESC')}
end
