require 'rails_helper'

RSpec.describe Room, type: :model do
  context "validation tests" do
    it 'ensures name presence' do
      room = Room.new(capacity: 10).save
      expect(room).to eq(false) 
    end

    it 'ensures capacity presence' do
      room = Room.new( name: "Room 1").save
      expect(room).to eq(false) 
    end

    it 'ensures capatity to be greater than 0' do
      room = Room.new( name: "Room 1", capacity: 0).save
      expect(room).to eq(false)
    end

    it 'ensures name to be unique' do
      room1 = Room.create( name: "Room 1", capacity: 5)
      room = Room.new( name: "Room 1", capacity: 10).save
      expect(room).to eq(false)
    end
  end
end