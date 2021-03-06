require 'rails_helper'

RSpec.describe Meeting, type: :model do
  context "validation tests" do
  
    it 'ensures date presence' do
      room = Room.create(name: "t", capacity: 20, floor: "4")
      user = User.create(email: "ed@gmail.com", password: "123456", first_name: "Ed", last_name: "ved")
      meeting = Meeting.new(user: user, room: room, start_time: "12:00", duration_minutes: 30, title: "Test meeting").save
      expect(meeting).to eq(false) 
    end

    it 'ensures title presence' do
      room = Room.create(name: "t", capacity: 20, floor: "4")
      user = User.create(email: "ed@gmail.com", password: "123456", first_name: "Ed", last_name: "ved")
      meeting = Meeting.new(user: user, room: room, date:"18/10/2021", start_time: "12:00", duration_minutes: 30).save
      expect(meeting).to eq(false) 
    end

    it 'ensures date is in the right format' do
      room = Room.create(name: "t", capacity: 20, floor: "4")
      user = User.create(email: "ed@gmail.com", password: "123456", first_name: "Ed", last_name: "ved")
      meeting = Meeting.new(user: user, room: room, date:"10/31/2021", start_time: "12:00", duration_minutes: 30, title: "Test Meeting").save
      expect(meeting).to eq(false) 
    end

    it 'ensures the meeting has to start after 8' do
      room = Room.create(name: "t", capacity: 20, floor: "4")
      user = User.create(email: "ed@gmail.com", password: "123456", first_name: "Ed", last_name: "ved")
      meeting = Meeting.new(user: user, room: room, date:"12/10/2021", start_time: "7:00", duration_minutes: 60, title: "Test Meeting").save
      expect(meeting).to eq(false) 
    end

    it 'ensures meeting cant end after 18h' do
      room = Room.create(name: "t", capacity: 20, floor: "4")
      user = User.create(email: "ed@gmail.com", password: "123456", first_name: "Ed", last_name: "ved")
      meeting = Meeting.new(user: user, room: room, date:"12/10/2021", start_time: "17:30", duration_minutes: 60, title: "Test Meeting").save
      expect(meeting).to eq(false) 
    end
  end
end
