class Front::DocumentsController < FrontController

	def index
		@documents = Document.all
		@doctypes = Doctype.all
	end

	def show
		@document = Document.find(params[:id])
	end

end
