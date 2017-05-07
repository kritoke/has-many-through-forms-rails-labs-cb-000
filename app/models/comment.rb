class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if !user_attributes.has_value?("")
      self.user = User.find_or_create_by(username: user_attributes[:username])
    end
  end
end
