require 'spec_helper'

describe 'home/index.html.erb' do
  it 'display navbar correct' do
    render
    expect(rendered).to have_content('QUIENES SOMOS')
    expect(rendered).to have_content('SERVICIOS')
    expect(rendered).to have_content('PROMOCIONES')
    expect(rendered).to have_content('ALGUNOS TIPS')
    expect(rendered).to have_content('CONTACTO')
  end
end
