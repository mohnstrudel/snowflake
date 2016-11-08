class Front::StaticPagesController < FrontController
  def index
  	@services = Service.all
  	@cheapest_services = Service.order(price: :asc).limit(6)
  	@subcategories = Subcategory.all
  	@team = Master.all
  	@general_settings = General.first
    @sliders = Slider.all
  end

  def team
  	@team = Master.all
  	@static_page = StaticPage.where(sp_category: 'Мастера')[0]
  end

  def important
  	@important_page = StaticPage.where(sp_category: 'Услуги')[0]
  end

  def services
  	@services = Service.all
  	@subcategories = Subcategory.all
  end

  def examples
    @examples_page = StaticPage.where(sp_category: 'Примеры')[0]
    instagram_result = InstagramHelper.new
    @instagram = instagram_result.by_tag("lashes")
  end

  def contact
    @contact_page = StaticPage.where(sp_category: 'Контакты')[0]
    @general_settings = General.first
  end

  def courses
    @courses = Course.all
    @subcategories = Subcategory.all
  end

end
