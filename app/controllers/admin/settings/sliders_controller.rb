class Admin::Settings::SlidersController < AdminController
	
	before_action :find_slider, only: [:edit, :update, :destroy]

	def index
		@sliders = Slider.all
	end

	def new
		@slider = Slider.new
	end

	def create
		@slider = Slider.new(slider_params)
		if @slider.save
			redirect_to edit_admin_settings_slider_path(@slider), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @slider.update(slider_params)
			redirect_to edit_admin_settings_slider_path(@slider), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @slider.destroy
			redirect_to admin_settings_slider_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def slider_params
		params.require(:slider).permit(:image, :first_row, :second_row, :third_row, :right, :show_text, :title)
	end

	def find_slider
		@slider = Slider.find(params[:id])
	end
end

