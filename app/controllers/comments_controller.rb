class CommentsController < ApplicationController

def create

    @comments = Comment.new
    @comments.content = params[:input_comment]
    @comments.question_id = params[:qs_id]
    @comments.save
    redirect_to :controller => 'questions', :action => 'reply_view',:id => 1, :param=> 'qs_id'
    end

def destroy

    @comments = Comment.find(params[:comment_id])
    @comments.destroy
    redirect_to :controller => 'questions', :action => 'reply_view',:id => 1, :param=> 'qs_id'

end


end
