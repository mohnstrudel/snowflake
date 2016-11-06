class Admin::Settings::PostcategoriesController < AdminController
	
	before_action :find_postcategory, only: [:edit, :update, :destroy]

	def index
		@postcategories = Postcategory.all
	end

	def new
		@postcategory = Postcategory.new
	end

	def create
		@postcategory = Postcategory.new(postcategory_params)
		if @postcategory.save
			redirect_to edit_admin_settings_postcategory_path(@postcategory), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @postcategory.update(postcategory_params)
			redirect_to edit_admin_settings_postcategory_path(@postcategory), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @postcategory.destroy
			redirect_to admin_settings_postcategories_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def postcategory_params
		params.require(:postcategory).permit(:title)
	end

	def find_postcategory
		@postcategory = Postcategory.find(params[:id])
	end
end

