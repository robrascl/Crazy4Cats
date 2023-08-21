class Article < ApplicationRecord
    has_one_attached :photo


    has_many :reactions, dependent: :destroy
    has_many :comment, dependent: :destroy
    has_many :users, through: :comment 


    def count_with_kind(arg)
        number = self.reactions.where(kind: arg).count
        return "#{arg} - #{number}"
    end

    def find_kind_user_relation(user)
        self.reactions.find_by(user_id: user.id).kind 
    end
end
