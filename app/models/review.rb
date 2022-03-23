class Review < ActiveRecord::Base
    belongs_to :game 
  def game 
    game.find(self.game_id)
  end
end

# rake console : 

# # Access the first review instance in the database
# review = Review.first
# # => #<Review:0x00007ffc23c58e20 id: 1, score: 6, comment: "Velit a tenetur eius.", game_id: 1>

# # Get the game_id foreign key for the review instance
# review.game_id
# # => 1