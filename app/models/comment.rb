class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true
  #before_validation :ensure_comment_has_a_value
  
  

  private
    def ensure_comment_has_a_value
      if self.body.present?
        self.body = "Noted Comment without body by #{self.commenter}"
      end
    end
end
