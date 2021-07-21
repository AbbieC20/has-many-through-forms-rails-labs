class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attributes)
    if !attributes[:username].blank? 
      user = User.find_or_create_by(attributes)
      self.user = user 
    end
  end

end
