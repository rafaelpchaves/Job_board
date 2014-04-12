class CommentsController < ApplicationController
	def create
		@job = Job.find(params[:job_id])
		@comment = @job.comments.create(params[:comment].permit(:name, :body))
	if @comment.save
		flash[:notice] = " Comentário criado com sucesso"
	else
		flash[:alert] = " Todos os campos devem ser preenchidos"
	end	
	redirect_to @job
	end
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to @comment.job, notice: "Comentário destruido"
	end
end
