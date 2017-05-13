class WeatherReportMailer < ApplicationMailer
  default from: 'mom@gmail.com'

  def greet(family_member)
    @family_member = family_member
    @weather_info = WeatherFetcher.new.get_weather(family_member.city)

    mail to: family_member.email, subject: "#{Date.today.strftime("%A")} Morning Weather Report"
  end
end
