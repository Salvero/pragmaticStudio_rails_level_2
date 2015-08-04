class FavoritesController < ApplicationController
	before_action :require_signin

	def create
		@movie = Movie.find(params[:movie_id])
		@movie.favorites.create!(user: current_user)

		redirect_to @movie, notice: "Thanks for fav'ing!"
	end

	def destroy
		@movie = Movie.find(params[:movie_id])
		favorite = current_user.favorites.find(params[:id])
		favorite.destroy
		redirect_to @movie, notice: "Successfully unfave movie"
	end
end
