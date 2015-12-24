def binarySerach(arr, target)
  binaryHelper = lambda do |start, finish|
    middle = (start + finish) / 2
    middleElem = arr[middle]
    case middleElem <=> target 
      when 0
        return middle
      when -1
        return binaryHelper.call(middle, finish)
      when 1
        return binaryHelper.call(start, middle)
    end
  end
  binaryHelper.call(0, arr.length)
end

puts binarySerach([1,2,3,4,5,6], 4)
