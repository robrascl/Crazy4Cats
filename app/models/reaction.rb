class Reaction < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :user
  belongs_to :comment, optional: true 


  validates :kind, acceptance: {
    accept: %w[MeGusta NoMeGusta]

  }

  def self.kinds
    %w[MeGusta NoMeGusta]
  end
end
