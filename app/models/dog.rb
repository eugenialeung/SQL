# == Schema Information
#
# Table name: dogs
#
#  id       :bigint           not null, primary key
#  name     :string           not null
#  house_id :integer
#

class Dog < ApplicationRecord
    validates :name, presence: true
    validate(:check_name_length)

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "is too short, must be longer than four or more characters"
        end
    end

    # The below gives us the getter and setter methods
    # def toys
    #     Toy.where({ dog_id: self.id })
    # end

    has_many(:toys, {
        primary_key: :id,   #dog's id
        foreign_key: :dog_id,
        class_name: :Toy
    })
    # can delete curly braces and parenthesis

    belongs_to(:house, {
        primary_key: :id,  
        foreign_key: :house_id,   
        class_name: :House
    })

    def self.lookup_name_in_ms(name)
        start = Time.now
        Dog.where(name: name)
        (Time.now - start) * 1000
    end
end 
