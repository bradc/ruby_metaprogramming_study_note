# ss002.rb
if false then y = nil end  # only for Ruby interpreter

self.class.class_eval do
  define_method :m do |i|
    lambda{|x| x + i + y}
  end
end

y = 200
a = m 3

y = 300
b = m 10

p a.call(2)  #=> 205
p b.call(2)  #=> 312
