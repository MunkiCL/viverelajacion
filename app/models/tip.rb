class Tip < BaseModel
    has_attached_file :portada,
        :styles => { :small => "200x200#", :large => "940" },
        :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :portada, :content_type => /\Aimage\/.*\Z/
    validates_attachment_presence :portada
    after_create    :post_to_facebook

    def post_to_facebook
        if ENV['FACEBOOK_ACCESS_TOKEN']
            owner = FbGraph::User.me(ENV['FACEBOOK_ACCESS_TOKEN'])
            pages = owner.accounts
            page  = pages.detect {|page| page.identifier == ENV['FACEBOOK_PAGE_ID']}
            page.feed!(
                :message => self.titulo,
                :link => "http://www.viverelajacion.cl/tips/#{self.id}",
                :name => self.titulo,
                :description => truncate(raw(self.texto),:length => 150,:omision => '...',:escape => false),
                :picture => self.portada.url(:small)
            )
        end
    end
end
