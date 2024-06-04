require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:user) { create(:user) }
  let(:hotel) { create(:hotel) }
  let(:room) { create(:room, hotel: hotel) }

  describe "validations" do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:room) }
    it { should validate_presence_of(:check_in_date) }
    it { should validate_presence_of(:check_out_date) }
  end
end
