
FactoryGirl.define do
  sequence :titulo do |n|
    "Tip de prueba #{n}"
  end
  factory :tip do
    titulo
    texto Faker::Lorem.paragraphs(10).join(" ")
    portada File.new('spec/fixtures/images/img_portada.jpg')
  end
end
