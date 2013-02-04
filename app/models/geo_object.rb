class GeoObject < ActiveFedora::Base
  attr_accessible :description, :geo_lat, :geo_lng, :path_to_cop, :path_to_image, :publish_year, :title
end
