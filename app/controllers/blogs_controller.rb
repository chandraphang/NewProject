class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :check_session, only: [:index, :show, :edit, :about]

  # GET /blogs
  # GET /blogs.json
  def index
    if params[:search]
      if @blogs.blank?
    flash[:notice] = "Search Result for "+"'"+params[:search]+"'"
    flash[:danger] = "Sorry the Blog is not Available"
    @blogs = Blog.search(params[:search]).order("created_at DESC")
      end
      if !@blogs.blank?
        flash[:notice] = "Search Result for "+"'"+params[:search]+"'"
        flash[:danger] = ""
        @blogs = Blog.search(params[:search]).order("created_at DESC")

    end
  else
    @blogs = Blog.all.order('created_at DESC')
    flash[:notice] = ""
    flash[:danger] = ""
  end

  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end


  def about
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|

      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :content, :summary, :user_id, :title_image_url)
    end
end
