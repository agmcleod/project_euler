class Point
	attr_accessor :x, :y
	
	def initialize(x, y)
		@x = x
		@y = y
	end
	
	def to_s
		"#{@x},#{@y}"
	end
	
	def self.compare(point_1, point_2, previous_paths, path, i)
		if (point_1.x <= point_2.x) && (point_1.y <= point_2.y)
			similar = true
			count = 0
			previous_paths.each do |prev|
				j = 0
				until j == i
					puts "prev: #{prev[j].to_s} path: #{path[j].to_s}"
					# puts "j: #{j}"
					similar = false if prev[j].to_s != path[j].to_s		
					j += 1
				end
				if similar
					puts "prev: #{prev[j].to_s} path: #{path[j].to_s}"
					similar = false if prev[i].to_s != point_2.to_s
				end
				break unless similar
				count += 1
			end
			if similar && count > 0
				return false
			else
				return true
			end
		else
			return false
		end
	end
end
coordinates = Array.new
3.times do |i|
	3.times do |j|
		coordinates << Point.new(i, j)
	end
end

count = 0
done = false
previous_paths = Array.new
times = 0
until done
	path = Array.new
	last_index = 0
	path << coordinates[0]
	
	4.times do |i|
		if Point.compare(coordinates[last_index], coordinates[last_index + 1], previous_paths, path, i)
			path << coordinates[last_index + 1]
			times = 0
		else
			times += 1	
		end
		last_index += 1
	end
	if times >= 3
		done = true
	end
	previous_paths << path unless path.size == 0
end

previous_paths.each do |prev|
	prev.each { |e|	puts e  }
end