class Phenotype
  include Comparable

  SEED_LEN = 20;
  SEED_MIN = 0b00000000000000000000
  SEED_MAX = 0b00000000001111111111

  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  # In this specific example, the fitness is equal to the value
  def fitness
    @value
  end

  # Generates a new Phenotype mutated from this instance
  def mutate
    random_index = rand(0..SEED_LEN-1)

    mutation = @value.to_s(2).rjust(20, '0')
    mutation[random_index] = mutation[random_index] == "0" ? "1" : "0"

    self.class.new(mutation.to_i(2))
  end

  def <=>(other)
     other.value <=> @value
  end

  def self.random_new
    new(rand(SEED_MIN..SEED_MAX))
  end
end
