module FrontHelper

  def single_image_or_default(object, picture_field, version, options = {})
    if object
      if object.respond_to?(picture_field.to_sym)
        if object.send("#{picture_field}_url")
          return image_tag(object.send(picture_field).url(version.to_sym), class: options[:class], alt: options[:alt])
        else
          return image_tag("http://placehold.it/128x128")
        end
      else
        return image_tag("http://placehold.it/128x128")
      end 
    else
      return image_tag("http://placehold.it/128x128")
    end
  end
end
