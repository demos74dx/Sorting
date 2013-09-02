require File.expand_path(File.dirname(__FILE__) + '/List')
require File.expand_path(File.dirname(__FILE__) + '/Sorters')

class Test

	@@sorters = Sorters.new

	def test_controller
		arr = test_makeArr
		bubbleArr = Array.new(arr)
		test_bubble_sort(bubbleArr)
		quickArr = Array.new(arr)
		test_quick_sort(quickArr)
		myArr = Array.new(arr)
		test_my_sort(myArr)
	end
	
	def test_makeArr
		list = List.new(50, 1000)
		arr = Array.new
		arr = list.makeArr
		puts "\nRandom Array: "
		puts arr.inspect 
		return arr
	end

	def test_bubble_sort(arr)
		puts "\nBubble Sort: "
		start_time = Time.now
		arr = @@sorters.bubbleSort(arr)
		end_time = Time.now
		puts "Time: #{(end_time - start_time) * 1000} miliseconds"
		puts arr.inspect
	end

	def test_quick_sort(arr)
		puts "\nQuick Sort: "
		start_time = Time.now
		arr = @@sorters.quickSort(arr)
		end_time = Time.now
		puts "Time: #{(end_time - start_time) * 1000} miliseconds"
		puts arr.inspect
	end

	def test_my_sort(arr)
		puts "\nNy Sort: "
		start_time = Time.now
		arr = @@sorters.mySort(arr)
		end_time = Time.now
		puts "Time: #{(end_time - start_time) * 1000} miliseconds"
		puts arr.inspect
	end
end
