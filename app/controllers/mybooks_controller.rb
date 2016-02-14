class MybooksController < ApplicationController
  before_action :set_mybook, only: [:show, :edit, :update, :destroy]

  # GET /mybooks
  # GET /mybooks.json
  def index
    @mybooks = Mybook.all
  end

  # GET /mybooks/1
  # GET /mybooks/1.json
  def show
  end

  # GET /mybooks/new
  def new
    @mybook = Mybook.new
  end

  # GET /mybooks/1/edit
  def edit
  end

  # POST /mybooks
  # POST /mybooks.json
  def create
    @mybook = Mybook.new(mybook_params)

    respond_to do |format|
      if @mybook.save
        format.html { redirect_to @mybook, notice: 'Mybook was successfully created.' }
        format.json { render :show, status: :created, location: @mybook }
      else
        format.html { render :new }
        format.json { render json: @mybook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybooks/1
  # PATCH/PUT /mybooks/1.json
  def update
    respond_to do |format|
      if @mybook.update(mybook_params)
        format.html { redirect_to @mybook, notice: 'Mybook was successfully updated.' }
        format.json { render :show, status: :ok, location: @mybook }
      else
        format.html { render :edit }
        format.json { render json: @mybook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybooks/1
  # DELETE /mybooks/1.json
  def destroy
    @mybook.destroy
    respond_to do |format|
      format.html { redirect_to mybooks_url, notice: 'Mybook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybook
      @mybook = Mybook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mybook_params
      params.require(:mybook).permit(:book_name, :author, :price, :publisher, :release, :book_img)
    end
end
