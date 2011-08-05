require 'test/unit'
$: << './'
require 'stack.rb'

class TC_stack < Test::Unit::TestCase
   def setup
     @stack = Stack.new
   end

   def teardowan
   end

   def test_is_empty?
     assert_equal(true, @stack.is_empty?)
   end
   def test_size_is_0
     assert_equal(0, @stack.size)
   end
   def test_size_equal_1_after_push
     @stack.push('abded')
     assert_equal(1, @stack.size)
   end

   def test_size_over_16
     16.times do |t|
       @stack.push(t)
     end
     assert_equal(RangeError, @stack.push('sample'))
   end
   def test_pop
     expect_value = "sample"
     assert_equal(expect_value, @stack.pop(expect_value))
   end
end




