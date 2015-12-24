def binarySerach(arr, target)
  binaryHelper = lambda do |start, finish|
    middle = (start + finish) / 2
    middleElem = arr[middle]
    if middleElem == target 
      return middle
    elsif middleElem < target
      return binaryHelper.call(middle, finish)
    elsif middleElem > target
      return binaryHelper.call(start, middle)
    end
  end
  binaryHelper.call(0, arr.length)
end

puts binarySerach([1,2,3,4,5,6], 1)
