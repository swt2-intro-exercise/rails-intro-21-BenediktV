class Author < ApplicationRecord

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :homepage, presence: true

    has_and_belongs_to_many :papers

    def name
        return first_name + " " + last_name
    end
end
