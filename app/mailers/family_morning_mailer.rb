class FamilyMorningMailer < ApplicationMailer
  default from: 'jennaleeblumenthal@gmail.com'

  def greet(family_member)
    @family_member = family_member
    mail to: @family_member.email, subject: "#{Date.today.strftime("%A")} Morning Weather Report"
  end
end
