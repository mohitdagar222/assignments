class OrderMailer < ApplicationMailer

  def send_admin_email(user, products)
    @user = user
    @products = products

    mail to: "abkb2023@gmail.com", subject: "A New order Added by #{@user.email}"
  end

  def send_user_order_email(user, products)
    @user = user
    @products = products

    mail to: @user.email , subject: "Order Received by Ecommerce Website"
  end


end