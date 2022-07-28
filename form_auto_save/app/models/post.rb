class Post < ApplicationRecord
    def published
        return self.state == "Published"
    end
end
