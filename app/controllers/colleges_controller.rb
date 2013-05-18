class CollegesController < ApplicationController
	def new
		@college = College.new
	end

	def create
		@college = College.new(params[:college])
		@college.user_id = session[:user_id]
		if @college.save
			redirect_to user_path(@college.user_id), :notice => "Your college was saved!"
		else
			render "new"
		end
	end

	def show
		@college = College.find_by_id(params[:id])
		@steps = Step.order(:duedate).where("college_id = ?", params[:id])
		calc_percent_complete
	end

	def calc_percent_complete
        completed_steps = 0

		if @steps.length != 0
			@steps.each do|step|
				if step.complete
					completed_steps += 1
				end
			end
			if	@college.update_attribute(:percent_complete, (completed_steps.to_f / @steps.length.to_f  * 100).round)
				puts "updated percent complete"
			else
				puts "error"
			end
		else
			@college.update_attribute(:percent_complete, 0)
		end
	end
end