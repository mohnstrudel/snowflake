class Front::StaticPagesController < FrontController
  def index
  	@services = Service.all
  	@cheapest_services = Service.order(price: :asc).limit(6)
  	@subcategories = Subcategory.all
  	@general_settings = General.first
  end
end
