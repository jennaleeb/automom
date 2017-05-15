class SendWeatherReportJob
  # queue_as :default
  include Sidekiq::Worker

  def perform(family_member_id)
    family_member = FamilyMember.find(family_member_id)
    WeatherReportMailer.greet(family_member).deliver_now
  end
end
