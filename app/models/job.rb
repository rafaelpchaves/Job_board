class Job < ActiveRecord::Base



has_many :comments
private
 def job_params
      params.require(:jobs).permit(:description, :title , :premium)
 end	
validates_presence_of :description , :title
end
