# SimpleGeneticAlgorithm
A genetic algorithm figures out big numbers

## What it does
The algorithm figures out the largest 20-digit binary number through a genetic evolution process

## How it does it
We begin by seeding 10 random 20-digit binary numbers. This is generation 1. We evaluate each number and select the 5 fittest. In this case, fitness is how large the number is. Then, with our 5 fittest numbers, we make a slight mutation to each one, and store that mutated value. Our next generation is our fittest 5, plus our mutated 5.

We continue this iterative process until we have figured out the largest number.

## Sample output
```
Seeded generation: [1022, 519, 163, 542, 178, 638, 148, 994, 127, 211]
Generation 1 fittest: 1022
Generation 2 fittest: 33406
Generation 3 fittest: 264190
Generation 4 fittest: 264190
Generation 5 fittest: 328702
Generation 6 fittest: 787455
Generation 7 fittest: 787455
Generation 8 fittest: 789502
Generation 9 fittest: 918527
Generation 10 fittest: 918527
Generation 11 fittest: 918527
Generation 12 fittest: 984062
Generation 13 fittest: 1000446
Generation 14 fittest: 1000446
Generation 15 fittest: 1000446
Generation 16 fittest: 1008378
Generation 17 fittest: 1008574
Generation 18 fittest: 1012670
Generation 19 fittest: 1012670
Generation 20 fittest: 1012670
Generation 21 fittest: 1045246
Generation 22 fittest: 1045246
Generation 23 fittest: 1046270
Generation 24 fittest: 1046270
Generation 25 fittest: 1047486
Generation 26 fittest: 1047486
Generation 27 fittest: 1047486
Generation 28 fittest: 1048318
Generation 29 fittest: 1048510
Generation 30 fittest: 1048510
Generation 31 fittest: 1048510
Generation 32 fittest: 1048510
Generation 33 fittest: 1048574
Generation 34 fittest: 1048574
Generation 35 fittest: 1048574
Generation 36 fittest: 1048574
Done!
Generation: [1048574, 1048510, 1048502, 1048374, 1048319, 1048575, 786366, 1044406, 1047350, 524031]
Gen: 37
```
