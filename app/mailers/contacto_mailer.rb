class ContactoMailer < ActionMailer::Base
  def contact_email(from,name,content)
    @name = name
    @date = Date.today.to_s
    @content = content
    mail(to:'contacto@viverelajacion.cl',
         subject:'Contacto desde pagina web',
         from:from,
         template_name:'contacto_email')
  end
end
