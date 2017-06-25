class QuestionsController < ApplicationController
  def new
    @all = Question.all#Question 모델의 모든 값 가져오기
    # @last = Question.last #Question 모델의 가장 최근 질문
    # @first = Question.first #Question 모델의 첫번째질문
    @random = Question.all.sample
    
  end

  def create
   q = Question.new #Question 객체 모델 생성
   q.name = params[:input_name] #입력받은 name값 을 question 모델에 저장
   q.content = params[:input_content] #입력받은 content 값을 question 모델에 저장
   uploader = ImguploaderUploader.new
   uploader.store!(params[:pic])

   q.image_url = uploader.url
   q.save #DB에 저장
   redirect_to "/"
   
  end

  def index
   
 
  end
  
  def destroy
    
    @qs = Question.find(params[:qs_id])
    @qs.destroy
    redirect_to "/" #삭제후에 /questions/index로 이동 
  end
  
  
  def update_view
    
     @qs = Question.find(params[:qs_id])

  end
  
  def update_real
  
     @qs = Question.find(params[:qs_id])
       @qs.name = params[:input_name] #입력받은 name값 을 question 모델에 저장
       @qs.content = params[:input_content] #입력받은 content 값을 question 모델에 저장
       @qs.save #DB에 저장
    redirect_to "/questions/index" 
     
  end
  
  
end
