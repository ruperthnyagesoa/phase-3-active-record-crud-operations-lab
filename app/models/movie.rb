class Movie < ActiveRecord::Base
    #  validates :title, presence: true
    #  validates :release_date, presence: true

    def self.create_with_title(title)
        movie = self.new
        movie.title = title
        movie.save
        movie
    end

    def self.last_movie
        self.last
    end

    def self.first_movie
        self.first
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def self.find_movies_after_2002(year)
        # self.find_all_after(year)
        self.where("release_date > ?", year)
        #for some reason, I couldn't get this passing!
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        self.update_all(title: title)
    end

    def self.delete_by_id(id)
        self.delete(id)
    end

    def self.delete_all_movies
        self.delete_all
    end

end