class ProgramController < ApplicationController
	before_action :find_program, only: [:show]

	def index
		@program = Program.all.order("created_at DESC")
	end

	def show
		
	end

	private

		def find_program
			@program = Program.find(params[:id])
		end
end
