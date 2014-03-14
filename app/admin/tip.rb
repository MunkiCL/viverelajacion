ActiveAdmin.register Tip do

  menu :label => 'Articulos/Tips'
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :titulo,:texto,:portada
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  form do |f|
    f.inputs 'Articulo/Tip' do
        f.input      :titulo
        f.input      :portada, :label => 'Imagen de portada', :as => :file, :hint => f.object.new_record? ? "" : f.template.image_tag(f.object.portada.url(:small)), required: false,required: false
        f.input      :texto, :as => :text, :input_html => { :class => 'tinymce' }

    end
    f.actions
  end

  show do |ad|
    attributes_table do
        row :titulo
        row :portada do
            image_tag(ad.portada.url(:small))
        end
        row (:texto) { |foobar| raw(foobar.texto) }
        # Will display the image on show object page
    end
  end

  index do
    column 'Titulo' do |tip|
        link_to tip.titulo, admin_tip_path(tip)
    end
    column 'Creado en',     :created_at
    column 'Actualizado en',:updated_at
    actions
  end

end
