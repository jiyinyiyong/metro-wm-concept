
Array::remove = (func) ->
  ret = []
  @forEach (elem) ->
    unless elem is func
      ret.push elem
  ret