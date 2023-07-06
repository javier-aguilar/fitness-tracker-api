require 'rails_helper'

RSpec.describe Log, type: :model do
  describe 'validations' do
    it {should validate_presence_of :user_id}
    it {should validate_presence_of :weight}
    it {should validate_presence_of :body_fat}
    it {should validate_presence_of :muscle_mass}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end

  describe 'default scope'
    it 'orders by descending created_at' do
      user = User.create(first_name: "Marge",
                         last_name: "Simpson",
                         dob:  "January 1 1985")
      log_1 = Log.create(user_id: user.id,
                         weight: 150.0,
                         body_fat: 12.0,
                         muscle_mass: 80.0)
      log_2 = Log.create(user_id: user.id,
                          weight: 151.0,
                          body_fat: 12.2,
                          muscle_mass: 80.1)
      log_3 = Log.create(user_id: user.id,
                          weight: 149.0,
                          body_fat: 12.1,
                          muscle_mass: 81.0)
      expect(Log.all).to eq [log_3, log_2, log_1]
    end
end