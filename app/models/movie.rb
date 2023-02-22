class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        create(title: title)
    end

    def self.first_movie
        first
    end

    def self.last_movie
        last
    end

    def self.movie_count
        count
    end

    def self.find_movie_with_id(id)
        find(id)
    end

    def self.find_movie_with_attributes(attributes)
        find_by(attributes)
    end

    def self.find_movies_after_2002
        where(release_date: 2003..) #or where(release_date > 2003)
    end

    def update_with_attributes(att)
        update(att)
    end

    def self.update_all_titles(str)
        update(title: str)        
    end

    def self.delete_by_id(id)
        find(id).destroy
    end

    def self.delete_all_movies
        destroy_all        
    end
end
