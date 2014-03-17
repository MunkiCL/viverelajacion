# encoding: utf-8
ActiveAdmin.register Producto do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :nombre,:precio,:imagen,:descripcion,:clase,:descuento
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #
  form do |f|
    f.inputs 'Producto' do
        f.input      :nombre
        f.input      :precio
        f.input      :imagen, :label => 'Imagen', :as => :file, :hint => f.object.new_record? ? "" : f.template.image_tag(f.object.imagen.url(:small)), required: false,required: false
        f.input      :clase, :as => :select, :collection => ['kinesiologia','masaje','actividad']
        f.input      :descuento, :label => '¿Es Promoción? ¿Valor de descuento?'
        f.input      :descripcion, :as => :text, :input_html => { :class => 'tinymce' }

    end
    f.actions
  end

  show do |ad|
    attributes_table do
        row :nombre
        row :precio
        row :clase
        row :descuento
        row :imagen do
            image_tag(ad.imagen.url(:small))
        end
        row (:descripcion) { |foobar| raw(foobar.descripcion) }
        # Will display the image on show object page
    end
  end

  index do
    column 'Producto' do |p|
        link_to p.nombre, admin_producto_path(p)
    end
    column 'Tipo', :clase
    column 'Descuento', :descuento
    column 'Creado en',     :created_at
    column 'Actualizado en',:updated_at
    actions
  end

end
