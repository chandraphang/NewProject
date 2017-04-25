class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :check_session, only: [:index, :show, :edit, :about]

  # GET /blogs
  # GET /blogs.json

  def index

    @blogs = Blog.all
    @comments = Comment.all
  end

  def blog_list
    if params[:search]
        if params[:tags][:id].blank?
            @blogs = Blog.all.order('created_at DESC')
            @blogs_by_tag = @blogs.where('LOWER(title) LIKE ?', "%#{params[:search]}%".downcase)

        else
            @tags = Tag.find(params[:tags][:id].to_i)
            @blogs_by_tag = @tags.blogs.where('LOWER(title) LIKE ?', "%#{params[:search]}%".downcase)
        end

        if  @blogs_by_tag.blank?
            flash[:notice] = "Search Result for "+"'"+params[:search]+"'"
            flash[:danger] = "Sorry the Blog is not Available"
        end

    else
        @blogs_by_tag = Blog.all.order('created_at DESC')
        flash[:notice] = ""
        flash[:danger] = ""
    end

end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @comment = Comment.new( :blog => @blog )
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
    @blog = Blog.create(blog_params)
    params[:tags][:tag_id].each do |p|
    @tagging = Tagging.create(tag_id: p.to_i, blog_id: @blog.id)
  end
  respond_to do |format|

      format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      format.json { render :show, status: :created, location: @blog }

  end
end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @destroy_tagging = Tagging.where(:blog_id => @blog.id).destroy_all
    params[:tags][:tag_id].each do |p|
    @tagging = Tagging.create(tag_id: p.to_i, blog_id: @blog.id)
end
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
      @tags = Tag.all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :content, :summary, :user_id, :title_image_url, :commentable)
  end

    def tag_params
      params.require(:tags).permit(:tag_id)
  end

end
