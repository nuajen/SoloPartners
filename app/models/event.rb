class Event < ApplicationRecord
    def editable?
        Date.today < start ? true : false
    end 
end