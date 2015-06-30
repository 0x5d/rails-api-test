class User < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2 }
	validates :email, presence: true, length: { minimum: 2 }, format: { with: /@/ }
	validates :age, presence: true, numericality: { greater_than: 20, less_than: 100 }
  validates_date :birth_date, presence:true,
      after: lambda { Time.now - 99.years },
      before: lambda { Time.now - 21.years }
end
