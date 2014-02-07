--[[
  EXERCISE: Monkey-patching strings

  With all you have learnt now, you should be able to do this exercise

  Add the necessary code below so that the test at the end passes

]]

-- INSERT YOUR CODE HERE
function string.starts_with(self, s)
    local start_pos, end_pos = 1, #s
    return s == string.sub(self, start_pos, end_pos)
end

function string.ends_with(self, s)
    local start_pos, end_pos = #self - #s + 1, #self
    return s == string.sub(self, start_pos, end_pos)    
end

-- END OF CODE INSERT

function test_starts_with()
  local str = "Lua is awesome"

  assert_true(str:starts_with("L"))
  assert_true(str:starts_with("Lua"))
  assert_true(str:starts_with("Lua is"))
end

function test_ends_with()
  local str = "Lua is awesome"

  assert_true(str:ends_with("e"))
  assert_true(str:ends_with("some"))
  assert_true(str:ends_with("awesome"))
end

-- hint: string == getmetatable("").__index








