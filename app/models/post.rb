class Post < ActiveRecord::Base
    def to_json
      [:title => self.title, :body => self.body].to_json
    end
end














