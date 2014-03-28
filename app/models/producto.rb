class Producto < BaseModel
  has_attached_file :imagen, :styles => { :small => "240x240#", :large => "300x300#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :imagen

  after_create    :post_to_facebook

  def post_to_facebook
    if ENV['FACEBOOK_ACCESS_TOKEN'] and self.descuento > 0
        owner = FbGraph::User.me(ENV['FACEBOOK_ACCESS_TOKEN'])
        pages = owner.accounts
        page  = pages.detect {|page| page.identifier == ENV['FACEBOOK_PAGE_ID']}
        page.feed!(
            :message => "Nueva Promocion!! #{self.nombre}",
            :link => "http://www.viverelajacion.cl/store/",
            :name => "Nueva Promocion!! #{self.nombre}",
            :description => truncate(raw(self.descripcion),:length => 150,:omision => '...',:escape => false),
            :picture => self.imagen.url(:small)
        )
    end
  end

  def self.by_type(clase)
    self.where('clase = ?',clase)
  end


  def self.promociones
    where('descuento > 0').by_creation
  end
end
