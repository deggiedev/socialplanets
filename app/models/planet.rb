class Planet < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :questions, through: :activities
  has_many :resources, through: :questions

  def user_name=(name)
    self.user = User.find_or_create_by(username: name)
  end

  def category_name
     self.user ? self.user.name : nil
  end

  

end
