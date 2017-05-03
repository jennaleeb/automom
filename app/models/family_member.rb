class FamilyMember < ApplicationRecord
  def greet
    SendFamilyGreetingJob.perform_later
  end
end
