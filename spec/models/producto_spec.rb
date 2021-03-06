require 'spec_helper'

describe Producto do
  it 'should create a new valid product' do
    p = FactoryGirl.build(:producto)
    expect(p).to be_valid
  end

  it 'should require imagen' do
    p = FactoryGirl.build(:producto,imagen: nil)
    expect(p).not_to be_valid
  end


  it 'should return promociones' do
    p1 = FactoryGirl.create(:producto, descuento: 20)
    p2 = FactoryGirl.create(:producto, descuento: 50)
    p3 = FactoryGirl.create(:producto, descuento: 30)
    p4 = FactoryGirl.create(:producto)
    p = Producto.promociones
    expect(p.count).to be(3)
    expect(p).to eq([p1,p2,p3])
  end

  it 'should return by class' do
    p1 = FactoryGirl.create(:producto, clase: 'kinesiologia',descuento: 20)
    p2 = FactoryGirl.create(:producto, clase: 'kinesiologia',)
    p3 = FactoryGirl.create(:producto, clase: 'kinesiologia',)
    p4 = FactoryGirl.create(:producto)
    p = Producto.by_type('kinesiologia')
    expect(p.count).to be(3)
    expect(p).to eq([p1,p2,p3])
  end

  it 'Should resize image' do
    p = FactoryGirl.create(:producto)
    expect(p.imagen.width(:large)).to eq(300)
    expect(p.imagen.height(:large)).to eq(300)
    expect(p.imagen.width(:small)).to eq(240)
    expect(p.imagen.height(:small)).to eq(240)
    expect(p.imagen.image_size(:small)).to eq("240x240")
  end
end
