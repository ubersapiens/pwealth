class CmsHomepagesController < ApplicationController
  before_action :set_cms_homepage, only: [:show, :edit, :update, :destroy]

  # GET /cms_homepages
  # GET /cms_homepages.json
  def index
    @cms_homepages = CmsHomepage.all
  end

  # GET /cms_homepages/1
  # GET /cms_homepages/1.json
  def show
  end

  # GET /cms_homepages/new
  def new
    @cms_homepage = CmsHomepage.new
  end

  # GET /cms_homepages/1/edit
  def edit
  end

  # POST /cms_homepages
  # POST /cms_homepages.json
  def create
    @cms_homepage = CmsHomepage.new(cms_homepage_params)

    respond_to do |format|
      if @cms_homepage.save
        format.html { redirect_to @cms_homepage, notice: 'Cms homepage was successfully created.' }
        format.json { render :show, status: :created, location: @cms_homepage }
      else
        format.html { render :new }
        format.json { render json: @cms_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms_homepages/1
  # PATCH/PUT /cms_homepages/1.json
  def update
    respond_to do |format|
      if @cms_homepage.update(cms_homepage_params)
        format.html { redirect_to @cms_homepage, notice: 'Cms homepage was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_homepage }
      else
        format.html { render :edit }
        format.json { render json: @cms_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms_homepages/1
  # DELETE /cms_homepages/1.json
  def destroy
    @cms_homepage.destroy
    respond_to do |format|
      format.html { redirect_to cms_homepages_url, notice: 'Cms homepage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_homepage
      @cms_homepage = CmsHomepage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_homepage_params
      params.require(:cms_homepage).permit(:header_title_1, :header_caption_1, :header_title_2, :header_caption_2, :header_title_3, :header_caption_3, :header_title_4, :header_caption_4, :main_description, :news_title_1, :news_content_1, :news_link_1, :news_title_2, :news_content_2, :news_link_2, :news_title_3, :news_content_3, :news_link_3, :header_image_1, :header_image_2, :header_image_3, :header_image_4)
    end
end
