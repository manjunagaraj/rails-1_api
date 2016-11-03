class Api::V1::MoviesController<ApplicationController


	def create
			binding.pry
		@movie=Movie.new(movie_params)
		if @movie.save
		render json:{message:'successfully created',data:@movie,status_code:201}

		else
			render json:{message:'failure',data:@movie.errors,status_code:422}

		end
	end
	
	def update

        @movie = Movie.find_by_id(params[:id])
       @movie.update_attributes(movie_params)
            render json: @movie
       
           
        
    end


def destroy
	binding.pry
	@movie=movie.find_by_id(params[:id])
	@movie.destroy
	render json:@movie
end


	private
	def movie_params
		params.require(:movie).permit(:title,:year,:rating,:language,:actors,:director)
		




	end 
end


