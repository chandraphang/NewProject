class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  # GET /comments
  # GET /comments.json

  # POST /comments
  # POST /comments.json
  def create
    @blog = Blog.find(params[:comment][:blog_id].to_i)
    if @blog.commentable == "Yes"
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.blog, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { redirect_to @comment.blog, notice: 'Comment was NOT successfully created.'}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end

    else
        respond_to do |format|

        format.html { redirect_to @blog, notice: 'Comment was Unable.' }
        format.json { render :show, status: :created, location: @comment }

      end
  end


  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.blog, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:username, :comment_text, :blog_id)
    end
end
