class ReviewsController < ApplicationController
    before_action :set_reviews 
    def create
        @review = @movie.reviews.create(review_params)
        @review.user = current_user
        if @review.save
            flash[:notice] = "Comment has been created"
            redirect_to movie_path(@movie)
        else
            flash[:notice] = "Comment has not been created"
            redirect_to movie_path(@movie)
        end

    end

    def update
        @review = @movie.reviews.find(params[:id])
    
        respond_to do |format|
          if @review.update(review_params)
            format.html { redirect_to movie_url(@movie), notice: 'Comment has been updated' }
          else
            format.html { redirect_to movie_url(@movie), alert: 'Comment was not updated!' }
          end
        end
    end

    def destroy
        @review = @movie.reviews.find(params[:id])
        @review.destroy
        redirect_to movie_path(@movie)
    end

    private
        def set_reviews
            @movie = Movie.find(params[:movie_id])
        end

        def review_params
            params.require(:review).permit(:rating, :review)
        end
end
