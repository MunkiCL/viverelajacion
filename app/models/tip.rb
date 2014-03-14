class Tip < BaseModel
    has_attached_file :portada,
        :styles => { :small => "200x200>", :large => "940x350>" },
        :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :portada, :content_type => /\Aimage\/.*\Z/
    validates_attachment_presence :portada
end
