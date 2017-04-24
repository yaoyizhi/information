class Authentication < ApplicationRecord
    def validate!
        authentication.is_validated = true
        save
    end

    def invalidate!
        authentication.is_validated = false
        save
    end

    def is_validated
        validated
    end
end
