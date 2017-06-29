class User < ApplicationRecord

before_create :confirm_token

def email_activate
  self.email_confirmed = true
  self.confirm_token = nil
  save!(:validate => false)
end

private

def confirm_token
  if self.confirm_token.blank?
    self.confirm_token = SecureRandom.urlsafe_based64.to_s
  end
end
end
