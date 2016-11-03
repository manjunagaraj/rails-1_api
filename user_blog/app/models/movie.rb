class Movie < ActiveRecord::Base

has_many :user

validates :title, presence: true, length: { minimum:2} 

    validates :actors,presence:true


    validates :director,presence: true

    validates :producer,presence: true      


end
