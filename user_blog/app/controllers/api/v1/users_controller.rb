
	class Api::V1::UsersController<ApplicationController


	def create
		@user=User.new(user_params)
		if @user.save
		render json:{message:'successfully created',data:@user,status_code:201}

		else
			render json:{message:'failures',data:@user.errors,status_code:422}

		end
	end
	
	def update
        @user = User.find_by_id(params[:id])
       @user.update_attributes(user_params)
            render json: @user
       
           
        
    end


def destroy
	binding.pry
	@user=User.find_by_id(params[:id])
	@user.destroy
	render json:@user
end


	private
	def user_params
		params.require(:user).permit(:name,:age,:role,:gender)
		
	end 
end


