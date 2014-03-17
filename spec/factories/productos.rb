# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  sequence :nombre do |n|
    "Producto de prueba #{n}"
  end
  factory :producto do
    nombre
    precio {1 + rand(20000)}
    descripcion Faker::Lorem.paragraphs(10).join(" ")
    imagen File.new('spec/fixtures/images/img_portada.jpg')
  end
end
