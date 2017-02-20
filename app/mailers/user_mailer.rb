class UserMailer < ApplicationMailer
	def confirm(order)
    @order = order
    mail(to: @order.email, subject: 'Thanks for Purchase')
  end
end
