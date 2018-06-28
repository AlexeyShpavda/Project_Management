class Project < ApplicationRecord
  validates :name, :summary, :start_date, :end_date, presence: true
  validates :name, length: { maximum: 100 }
  validates :summary, length: { maximum: 5000 }
  #validates :start_date, :end_date, length: { is: 10 }
  validates :start_date, :end_date, format: { with: /\d{2}\/\d{2}\/\d{4}/,
                                              message: "Date must be in the following format: mm/dd/yyyy" }

end
