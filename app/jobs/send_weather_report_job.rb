class SendWeatherReportJob < ApplicationJob
  queue_as :default

  def perform
    family_member = FamilyMember.first

    FamilyMorningMailer.greet(family_member).deliver_now
  end
end
