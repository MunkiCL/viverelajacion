require 'spec_helper'

describe Tip do
  it 'should create a new valid tip' do
    t = FactoryGirl.build(:tip)
    expect(t).to be_valid
  end

  it 'should require portada' do
    t = FactoryGirl.build(:tip,portada: nil)
    expect(t).not_to be_valid
  end
  it 'Should return last tip' do
    tip1 = FactoryGirl.create(:tip)
    tip2 = FactoryGirl.create(:tip)

    last_tip = Tip.by_creation.last
    expect(last_tip).to eq(tip2)

  end

  it 'Should return last 4 tip' do
    for i in 0...5
      FactoryGirl.create(:tip)
    end
    res = Tip.by_creation.limit(4)
    expect(res.size).to be(4)

  end

  it 'Should resize image' do
    t = FactoryGirl.create(:tip)

    expect(t.portada.width(:large)).to eq(940)
    expect(t.portada.width(:small)).to eq(200)
    expect(t.portada.height(:small)).to eq(200)
    expect(t.portada.image_size(:small)).to eq("200x200")
  end


end
