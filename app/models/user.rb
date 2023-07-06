class User < ApplicationRecord
    validates_presence_of :first_name,
                          :last_name,
                          :dob
    has_many :logs
end
