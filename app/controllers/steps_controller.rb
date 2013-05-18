class StepsController < ApplicationController
	def new
		@step = Step.new
		@college = College.find_by_id(params[:id])
	end

	def create
		@college = College.find_by_id(params[:id])
		@step = Step.new(params[:step])

		if @step.save
			redirect_to college_path(:id => @step.college_id), :notice => "Created step!"
		else
			render "new"
		end
	end
	def update
		step = Step.find_by_id(params[:id])
      	if step.update_attributes(params[:step])
      		redirect_to college_path(:id => step.college_id), :flash => {:success => "Step was saved!"}
		else
			Rails.logger.info(@step.errors.messages.inspect)
			redirect_to college_path(:id => @step.college_id), :flash => {:error =>  "Step couldn't be saved!"}
		end
	end 

end	