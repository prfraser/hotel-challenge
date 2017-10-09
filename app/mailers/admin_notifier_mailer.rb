class AdminNotifierMailer < ApplicationMailer
	default :from => 'any_from_address@example.com'

  # send a notice email to the admin, pass in the admin object that contains the admin's email address
  def send_notice_email(admin)
    @admin = admin
    mail( :to => @admin.email,
    :subject => 'You have recieved a new enquiry.' )
  end
end
