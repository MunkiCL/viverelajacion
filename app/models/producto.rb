class Producto < ActiveRecord::Base
    has_attached_file :imagen, :styles => { :small => "240x240>", :large => "300x300>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/
    validates_attachment_presence :imagen


    def self.by_type(clase)
        self.all(:conditions => ["clase = ?", clase])
    end
end
