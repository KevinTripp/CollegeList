class College < ActiveRecord::Base
  attr_accessible :accepted, :address1, :address2, :city, :complete, :due_date, :name, :state, :student_progress, :student_rank, :tuition, :user_id, :zip, :percent_complete

  belongs_to :users
  has_many :steps

  validates_presence_of :name
  validates_presence_of :due_date
  validates_presence_of :student_rank

end
