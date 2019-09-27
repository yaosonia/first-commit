class Student < ApplicationRecord
    validates :name, :lastname, presence: true
end