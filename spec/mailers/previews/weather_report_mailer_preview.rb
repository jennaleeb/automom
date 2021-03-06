# Preview all emails at http://localhost:3000/rails/mailers/family_morning_mailer
class WeatherReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/family_morning_mailer/greet
  def greet
    family_member = FamilyMember.new(name: "Leanne", email: "test@mail.com", city: "Toronto")
    WeatherReportMailer.greet(family_member)
  end
end
