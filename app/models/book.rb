class Book < ActiveRecord::Base
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres

  # def initialize(opts={})
  #   opts.each do |attribute, value|
  #     self.send("#{attribute}=", value)
  #   end
  # end


  def dog=(fido)
    puts "Something CRAZY!!!!"
  end

  # def genre_ids=(genre_ids)
  #   genre_ids.each do |genre_id|
  #     self.genres << Genre.find(genre_id)
  #   end
  # end

end
