class DefaultWorker
  include Sidekiq::Worker

  def perform
    FamilyMember.all.each do |family_member|
      WeatherReportMailer.greet(family_member).deliver_now
    end
  end
end
