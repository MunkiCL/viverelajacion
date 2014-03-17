
class MailWorker
  include Sidekiq::Worker
  include ActionView::Helpers
  def perform(email,name,content)
    Pony.mail(
     :from => email,
     :reply_to => email,
     :subject => "Contacto desde Viverelajacion.cl",
     :body => content,
     :html_body => simple_format(content)
   )
 end
end
