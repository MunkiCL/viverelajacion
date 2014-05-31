class BaseModel < ActiveRecord::Base
    self.abstract_class = true
    def self.by_creation
        self.order('created_at DESC')
    end
end
