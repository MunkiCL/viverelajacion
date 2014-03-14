
FactoryGirl.define do
	sequence :titulo do |n|
		"Tip de prueba #{n}"
	end
  factory :tip do
    titulo
    texto "Este es el texto del tip"
    portada File.new('spec/fixtures/images/img_portada.jpg')
  end
end
