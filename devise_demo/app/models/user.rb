class User < ApplicationRecord
  has_one :cart
  has_many :checkout_informations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, :lockable, :timeoutable

  private

  def after_confirmation
    WelcomeMailer.send_greetings_notification(self).deliver_now
  end
end
