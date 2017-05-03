class SendFamilyGreetingJob < ApplicationJob
  queue_as :default

  def perform
    family_members = FamilyMember.all

    family_members.each do |family_member|
      FamilyMorningMailer.greet(family_member).deliver_now
    end

  end
end
