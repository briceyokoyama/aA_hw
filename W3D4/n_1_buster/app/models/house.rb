class House < ApplicationRecord
  has_many :gardeners,
    class_name: 'Gardener',
    foreign_key: :house_id,
    primary_key: :id

  has_many :plants,
    through: :gardeners,
    source: :plants

  def n_plus_one_seeds
    plants = self.plants
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds
  end

  def better_seeds_query
    # TODO: your code here
    plants = self.plants.includes(:seeds)
    plant_seed_counts = {}
    plants.each do |plant|
      plant_seed_counts[plant] = plant.seeds.length
    end
    plant_seed_counts
  end

  
end
