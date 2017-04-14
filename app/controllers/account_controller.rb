class AccountController < ApplicationController
	def checkLogin

		@result=CreateAccount.find_or_initialize_by(username:params["username"],password:params["password"])

		if @result.new_record?
			@result.save
		else
			render 'result'	
			
		end
	end
	def login


	end

	def result

	end
	def registerPage
		
	end
	def register

		@p1=params["password"]
		@p2=params["passwordz"]

		if @p1==@p2
			@account=CreateAccount.new
			@account.username=params["username"]
			@account.password=params["password"]
			@account.save
			render 'result'
		else
			redirect_to '/register'
			return
		end
	end
end
