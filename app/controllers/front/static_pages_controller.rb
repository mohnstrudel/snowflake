class Front::StaticPagesController < FrontController
  def index
  	@services = Service.all
  	@cheapest_services = Service.order(price: :asc).limit(6)
  	@subcategories = Subcategory.all
  	@team = Master.all
  end

  def team
  	@team = Master.all
  	@static_page = StaticPage.where(sp_category: 'Мастера')[0]
  end
end
