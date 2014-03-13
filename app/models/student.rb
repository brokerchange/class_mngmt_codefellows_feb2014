class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #has_many :courses
  has_many :registrations
  has_many :courses, through: :registrations
  
  #validates :full_name, presence: true #alternative way to write it
  #validates_presence_of :full_name
  #validates_presence_of :email

  scope :renees, -> do
    where(full_name: 'Renee')
  end

  def self.teachers
    where(title: 'Teacher')
  end

  def self.full_name
    pluck(:full_name)
  end

  def combined_info
    "name: #{full_name} \n"+
    "age: #{age} \n"+
    "bio: #{bio}"
  end

  def age_in_60_years
    (age + 60).years
  end

end
