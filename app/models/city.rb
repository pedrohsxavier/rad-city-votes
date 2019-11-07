class City < ApplicationRecord
    has_many :councilors
    has_one :mayor

    accepts_nested_attributes_for :mayor, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :councilors, reject_if: :all_blank, allow_destroy: true
end
