require 'spec_helper'
require 'sidekiq'
require 'sidekiq/testing'
describe "Home View" do

  it "Show the correct home content" do
    get '/'
    expect(response.status).to be(200)
  end

  it 'Show Last Tip' do
    tip1 = FactoryGirl.create(:tip)
    tip2 = FactoryGirl.create(:tip)
    visit root_url
    expect(page).to have_content(tip2.titulo)
  end

  it 'Send email' do
    visit root_url
    fill_in 'Nombre', with: 'Nombre de prueba'
    fill_in 'Email', with: 'email@prueba.cl'
    fill_in 'Mensaje', with: 'mensaje de prueba'
    click_button 'Enviar'
    expect(MailWorker).to have(1).jobs
    expect{
      # forces the execution of all enqueued jobs in this queue
      MailWorker.drain
    }.to change{Sidekiq::Extensions::DelayedMailer.jobs.size}.by 1

    expect{
      Sidekiq::Extensions::DelayedMailer.drain
    }.to change{ActionMailer::Base.deliveries.count}.by 5
  end
end
