# This script uses a simple genetic algorithm to maximize a number
# This is done by seeding the algorithm with 10 numbers, making random mutations,
# and retaining the fittest (bigest) for the next generation

# Vocab:
# Phenotype/Creature - One instance of the thing we're mutating
# Generation - One group of many phenotypes.
# Mutation - A slight modification to an existing phenotypes
# Fitness - A numeric score that grades phenotypes and allows them to be compared
# Fitness function - A function that assigns a phenotypes a Fitness score

require 'byebug'
require_relative 'phenotype.rb'
TARGET   = 0b11111111111111111111

def seed
  10.times.map do
    Phenotype.random_new
  end
end

def winners(generation)
  generation.sort.first(5)
end

def fittest(generation)
  generation.sort.first
end

def run
  generation_count = 1
  generation = seed

  while fittest(generation).value != TARGET
    puts "Generation #{generation_count} fittest: #{fittest(generation).value}"

    gen_winners = winners(generation)
    gen_winners += gen_winners.map(&:mutate)
    generation = gen_winners

    generation_count += 1
  end

  puts "Done!"
  puts "Generation: #{generation.map(&:value)}"
  puts "Gen: #{generation_count}"
end

run
