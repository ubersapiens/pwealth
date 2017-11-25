class CmsPagesController < ApplicationController
  before_action :admin_only, except: [:index, :show]
  before_action :set_cms_page, only: [:show, :edit, :update, :destroy]

  def index
    @cms_pages = CmsPage.all
    if params[:search]
      @cms_pages = CmsPage.search(params[:search]).order("created_at DESC")
    else
      @cms_pages = CmsPage.all.order("created_at DESC")
    end
  end

  # GET /cms_pages/1
  # GET /cms_pages/1.json
  def show
  end

  # GET /cms_pages/new
  def new
    @cms_page = CmsPage.new
  end

  # GET /cms_pages/1/edit
  def edit
  end

  # POST /cms_pages
  # POST /cms_pages.json
  def create
    @cms_page = CmsPage.new(cms_page_params)

    respond_to do |format|
      if @cms_page.save
        format.html { redirect_to @cms_page, notice: 'Cms page was successfully created.' }
        format.json { render :show, status: :created, location: @cms_page }
      else
        format.html { render :new }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms_pages/1
  # PATCH/PUT /cms_pages/1.json
  def update
    respond_to do |format|
      if @cms_page.update(cms_page_params)
        format.html { redirect_to admin_pages_path, notice: 'Cms page was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_page }
      else
        format.html { render :edit }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms_pages/1
  # DELETE /cms_pages/1.json
  def destroy
    @cms_page.destroy
    respond_to do |format|
      format.html { redirect_to cms_pages_url, notice: 'Cms page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_page
      @cms_page = CmsPage.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_page_params
      params.require(:cms_page).permit(:title, :text_1, :text_2, :text_3, :image_1, :image_2)
    end
end
