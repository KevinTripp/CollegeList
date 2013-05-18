class Step < ActiveRecord::Base
  attr_accessible :college_id, :complete, :duedate, :name

  validates :name, :presence => true, :on => :update
  validates :duedate, :presence => true, :on => :update
end
