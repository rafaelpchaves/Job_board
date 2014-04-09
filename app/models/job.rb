class Job < ActiveRecord::Base
private
 def job_params
      params.require(:jobs).permit(:description, :title , :premium)
 end	
validates_presence_of :description , :title
end
