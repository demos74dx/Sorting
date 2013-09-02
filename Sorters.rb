class Sorters
	
	def bubbleSort(arr)
		arr.each_index do |x|
			arr.each_index do |i|
				if arr[x].to_i < arr[i].to_i
					temp = arr[x]
					arr[x] = arr[i]
					arr[i] = temp
				end
			end
		end
		return arr
	end

	def quickSort(arr)
		length = arr.length
		if length <= 1 #base case
			return arr
		else  #recursive case
			pivot = length / 2
			pivotVal = arr.delete_at(pivot)
			less = Array.new
			greater = Array.new
			arr.each do |e|
				if e.to_i <= pivotVal.to_i
					less.push(e)
				else
					greater.push(e)
				end
			end
			pivotArr = Array.new
			pivotArr.push(pivotVal)
			return quickSort(less)+pivotArr+quickSort(greater)
		end
	end		

	def swap3(a, b, c)
		if(a > b)
			a,b = b,a
		end
		if(b > c)
			b,c = c,b
		end
		if(a > b)
			a,b = b,c
		end
		sw = Array.new
		sw.push(a)
		sw.push(b)	
		sw.push(c)	
		return sw
	end

	def swap2(a, b)
		if(a > b)
			a,b = b,a
		end
		sw = Array.new
		sw.push(a)
		sw.push(b)
		return sw
	end

	def mySort(arr)
    length = arr.length
		if length.to_i == 3 #base case
			a = arr.pop.to_i
			b = arr.pop.to_i
			c = arr.pop.to_i
			arr = swap3(a,b,c)
			return arr
    elsif(length.to_i == 2)
			a = arr.pop.to_i
			b = arr.pop.to_i
			arr = swap2(a,b)
			return arr
		elsif(length.to_i == 1)
			return arr
		else  #recursive case
    	left = Array.new
      right = Array.new
			mid = length / 2
			mid = arr.delete_at(mid)
			right.push(mid)
      arr.each do |e|
				if e.to_i < mid.to_i
					left.push(e)
				else
					right.push(e)	
				end
			end
			return (mySort(left)+mySort(right))			
		end	
	end
end
