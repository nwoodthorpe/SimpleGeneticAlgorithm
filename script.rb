# This script uses a simple genetic algorithm to maximize a number
# This is done by seeding the algorithm with 10 numbers, making random mutations,
# and retaining the fittest (bigest) for the next generation

# Vocab:
# Phenotype/Creature - One instance of the thing we're mutating
# Generation - One group of many phenotypes.
# Mutation - A slight modification to an existing phenotypes
# Fitness - A numeric score that grades phenotypes and allows them to be compared
# Fitness function - A function that assigns a phenotypes a Fitness score

require 'byebug';
SEED_LEN = 20
SEED_MIN = 0b00000000000000000000
SEED_MAX = 0b00000000001111111111
TARGET   = 0b11111111111111111111

# Generate 10 phenotypes
def seed
  array = []
  10.times do
    array << rand(SEED_MIN..SEED_MAX)
  end

  array
end

def mutate(phenotype)
  random_index = rand(0..SEED_LEN-1)

  binary = phenotype.to_s(2).rjust(20, '0')
  binary[random_index] = binary[random_index] == "0" ? "1" : "0"

  binary.to_i(2)
end

# Worlds simplest fitness function, just returns the number the phenotype evals to
def fitness(phenotype)
  phenotype
end

def winners(generation)
  sort_by_fitness(generation)[0..4]
end

def sort_by_fitness(generation)
  generation.sort do |a, b|
    fitness(b).to_i <=> fitness(a).to_i
  end
end

def fittest(generation)
  sort_by_fitness(generation).first
end

def run
  generation_count = 1
  generation = seed

  while fittest(generation) != TARGET
    puts "Fittest: #{fittest(generation)}"

    gen_winners = winners(generation)
    new_gen = gen_winners.map do |winner|
      mutate(winner)
    end

    generation = [gen_winners, new_gen].flatten
    generation_count += 1
  end

  puts "Done!"
  puts "Generation: #{generation}"
  puts "Gen: #{generation_count}"
end

run
