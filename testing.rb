
def shifted(input)
  base = ("a".."z").to_a
  input_index = base.index(input)
  if input_index > 26
    input_index += 26
  end
  puts base[input_index - 4]
end

shifted("e")

