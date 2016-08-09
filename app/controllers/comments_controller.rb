class CommentsController < ApplicationController

  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to course_path(@course)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @course, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { redirect_to @course, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    course = @comment.course
    @comment.destroy
    redirect_to course
  end
  
private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
  
end
