class ImageConmmentsController < ApplicationController
  before_action :set_image_conmment, only: [:show, :edit, :update, :destroy]

  # GET /image_conmments
  # GET /image_conmments.json
  def index
    @image_conmments = ImageConmment.all
  end

  # GET /image_conmments/1
  # GET /image_conmments/1.json
  def show
  end

  # GET /image_conmments/new
  def new
    @image_conmment = ImageConmment.new
  end

  # GET /image_conmments/1/edit
  def edit
  end

  # POST /image_conmments
  # POST /image_conmments.json
  def create
    @image_conmment = ImageConmment.new(image_conmment_params)
    @iamge_comment.user_id = current_user.id

    respond_to do |format|
      if @image_conmment.save
        url= "/images" + @image_conmment.image_id.to_s
        format.html { redirect_to url, notice: 'Image conmment was successfully created.' }
        format.json { render :show, status: :created, location: @image_conmment }
      else
        format.html { render :new }
        format.json { render json: @image_conmment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_conmments/1
  # PATCH/PUT /image_conmments/1.json
  def update
    respond_to do |format|
      if @image_conmment.update(image_conmment_params)
        format.html { redirect_to @image_conmment, notice: 'Image conmment was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_conmment }
      else
        format.html { render :edit }
        format.json { render json: @image_conmment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_conmments/1
  # DELETE /image_conmments/1.json
  def destroy
    @image_conmment.destroy
    respond_to do |format|
      format.html { redirect_to image_conmments_url, notice: 'Image conmment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_conmment
      @image_conmment = ImageConmment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_conmment_params
      params.require(:image_conmment).permit(:user_id, :image_id, :comment)
    end
end
