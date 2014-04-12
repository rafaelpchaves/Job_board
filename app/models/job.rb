class Job < ActiveRecord::Base

scope :mais_recente, order("created_at DESC")

has_many :comments
private
 def job_params
      params.require(:jobs).permit(:description, :title , :premium)
 end	
validates_presence_of :description , :title
end
