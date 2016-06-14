class ExhibitsController < ApplicationController
  before_action :set_exhibit, only: [:show, :edit, :update, :destroy]
  
  # GET /exhibits
  def index
    @types = Type.all
    @exhibits = Exhibit.search(params[:keyword]).collection(params[:collection])
    @exhibits = @exhibits.collection(params[:collection]) if params[:collection].present?
  end
  def search
    @q = "%#{params[:query]}%"
    @exhibits = Exhibit.where("title LIKE ? or description LIKE ?", @q, @q)
    render 'index'
  end
  # GET /exhibits/1
  def show
    @types = Type.all
  end

  # GET /exhibits/new
  def new
    @exhibit = Exhibit.new
    @types = Type.all
    2.times do 
      question = @exhibit.questions.build
      3.times { question.answers.build }
    end
  end

  # GET /exhibits/1/edit
  def edit
     @types = Type.all
  end

  # POST /exhibits
  def create
    @exhibit = Exhibit.new(exhibit_params)
    
    respond_to do |format|
      if @exhibit.save
        format.html { redirect_to @exhibit, notice: 'Exhibit was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /exhibits/1
  def update
    @exhibit.type_id = params[:type_id]
    respond_to do |format|
      if @exhibit.update(exhibit_params)
        format.html { redirect_to @exhibit, notice: 'Exhibit was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /exhibits/1
  def destroy
    @exhibit.destroy
    respond_to do |format|
      format.html { redirect_to exhibits_url, notice: 'Exhibit was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibit
      @exhibit = Exhibit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibit_params
      params.require(:exhibit).permit(:title, 
                                      :author, 
                                      :date_of_origin, 
                                      :description, 
                                      :type_id, 
                                      :ex_id,
                                      :keywords,
                                      :avatar, 
                                      :big_photo,
                                      :thumb_photo,
                                      questions_attributes: [ :id ,:exhibit_id, :content, :_destroy,
                                                              answers_attributes: [:id, :question_id, :content, :correct, :_destroy]])
    end
end
