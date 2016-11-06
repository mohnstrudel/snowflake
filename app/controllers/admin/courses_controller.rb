class Admin::CoursesController < AdminController
	before_action :find_course, only: [:edit, :update, :destroy]


	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def edit
	end

	def create
		@course = Course.new(course_params)

		if @course.save
			redirect_to edit_admin_course_path(@course), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @@course.destroy
			
			redirect_to admin_courses_path
			flash[:alert] = 'Удалено успешно'
		else
			render 'index'
		end
	end

	def update
		if @course.update(course_params)
			# debug
			if params[:pictures]
				params[:pictures].each { |image| @course.pictures.create(image: image) }
			end
			redirect_to edit_admin_course_path(@course)
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
		end

	end


	private

	def course_params
		params.require(:course).permit(:title, :max_people, :duration, :subcategory_id, :description, :price, 
			pictures_attributes: [ :id, :image, :course_id, :_destroy ])
	end

	def find_course
		@course = Course.find(params[:id])
	end
end
