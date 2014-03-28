class Producto < BaseModel
  has_attached_file :imagen, :styles => { :small => "240x240#", :large => "300x300#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :imagen


  def self.by_type(clase)
    self.where('clase = ?',clase)
  end


  def self.promociones
    where('descuento >= 0').by_creation
  end
end
