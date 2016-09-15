class OrderMailer < ActionMailer::Base
  default from: "noreply@example.com"
  def order_confirmation order 
    @order = order
    mail to: order.user.email, subject: "[Paid receipt] for you order"
  end
end