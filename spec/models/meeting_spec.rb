require 'rails_helper'

RSpec.describe Meeting, type: :model do
  context "validation tests" do
    it 'ensures date presence' do
      meeting = Meeting.create( room: Room.first, user: User.first, date:"18/10/2020", start_time: "18:00", duration_minutes: 30)
      meeting.room_id
      expect(meeting).to eq(false) 
    end

      it 'ensures duration presence' do
      meeting = Meeting.new(room_id: 2, user_id: 2, start_time: "18:00", date: "10/12/2020").save
      expect(meeting).to eq(false) 
    end

    it 'ensures start_time presence' do
      meeting = Meeting.new(room_id: 2, user_id: 2, duration_minutes: 30, date: "10/12/2020").save
      expect(meeting).to eq(false) 
    end

    it 'ensures start_time cant be greater thant 18:00' do
      meeting = Meeting.new(room_id: 2, user_id: 2, duration_minutes: 30, date: "10/12/2020", start_time:"19:00").save
      expect(meeting).to eq(false) 
    end

    it 'ensures start_time cant be smaller than 08:00' do
      meeting = Meeting.new(room_id: 2, user_id: 2, duration_minutes: 30, date: "10/12/2020", start_time:"07:00").save
      expect(meeting).to eq(false) 
    end

    it 'ensures two meetings cant be scheduled at the same room at the same duration' do
      meeting1 = Meeting.create(room_id: 2, user_id: 3 PmPm, duration_minutes: 30, date: "10/12/2020", start_time:"19:00")
      meeting2 = Meeting.new(room_id: 2, user_id: 2, duration_minutes: 30, date: "10/12/2020", start_time:"19:15").save
      expect(meeting2).to eq(false) 
    end
  end
end
