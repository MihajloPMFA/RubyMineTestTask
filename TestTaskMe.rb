# frozen_string_literal: true

# Original code that does not use any Refactoring

def originalcalculation(height, radius)
  volume = height * radius * radius * 3.14159
  puts "The volume of the roller is #{volume}. We got this result without using any Refactorings."
end

# Code that uses the Refactor | Introduce variable

def calculationintroducevariable(height, radius)
  surface_of_base = radius * radius * 3.14159
  volume = height * surface_of_base
  puts "The volume of the roller is #{volume}. We got this result with the use of the Refactor | Introduce variable."
end

# Code that uses the Refactor | Extract method

def surfaceofbasemethod(radius)
  radius * radius * 3.14159
end

def calculationextractmethod(height, radius)
  volume = height * surfaceofbasemethod(radius)
  puts "The volume of the roller is #{volume}. We got this result with the use of the Refactor | Extract method"
end

def testrefactorings
  height = 10
  radius = 5
  originalcalculation(height, radius)
  calculationintroducevariable(height, radius)
  calculationextractmethod(height, radius)
end

# Start Test

testrefactorings
