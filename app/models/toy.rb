# == Schema Information
#
# Table name: toys
#
#  id     :bigint           not null, primary key
#  name   :string           not null
#  dog_id :integer          not null
#  color  :string           not null
#

class Toy < ApplicationRecord
    # The below gives us the getter and setter methods
    # def dog
    #     Dog.find(dog_id)
    # end

    belongs_to(:dog, {
        primary_key: :id,   #Dog's id
        foreign_key: :dog_id,   # Toy's table
        class_name: :Dog
    })
    # can delete curly braces and parenthesis

    has_one(:house, {
        through: :dog,
        source: :house
    })
 
end
