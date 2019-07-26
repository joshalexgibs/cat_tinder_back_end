require 'rails_helper'

RSpec.describe Ewok, type: :model do
  it "should validate name" do
      ewok = Ewok.create
      expect(ewok.errors[:name]).to_not be_empty
  end
  it "should validate age" do
      ewok = Ewok.create
      expect(ewok.errors[:age]).to_not be_empty
  end
  it "should contain text in enjoys" do
      ewok = Ewok.create
      expect(ewok.errors[:enjoys]).to_not be_empty
  end
  it "should contain 10 characters in enjoys" do
      ewok = Ewok.create
      puts ewok.errors[:enjoys]
      should validate_length_of(:password).
      is_at_least(10).
      on(:enjoys)
  end
end
