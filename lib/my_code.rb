# Your Code Here
def map (array)
  new = []
  index = 0 
  while index < array.length do
    new.push(yield(array[index]))
    index += 1 
  end
  new
end

def reduce(array, starting = nil)
  total = starting
  index = 0
  while index < array.length do
  total = yield(total, array[index])
  index += 1 
end
total
end