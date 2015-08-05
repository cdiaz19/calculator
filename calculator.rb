require 'spec_helper'

class Calculator
 def addition(v1,v2)
  v1 + v2
 end

 def subtraction(v1,v2)
   v1 - v2
 end

 def multiplication(v1,v2)
   v1 * v2
 end

 def division(v1,v2)
   if v2 != 0
     v1 / v2
   else
     puts'The division by zero, does not exist'
   end
 end
end

RSpec.describe Calculator do
  describe '#methods' do
   describe '#addition' do
     context 'when sums two number positive' do
       it{ subject.addition(2,6) }
     end
   end
  end

   describe '#subtraction' do
    context 'when subtraction two number positve' do
      it{ subject.subtraction(6,5)}
    end
    context 'when subtraction two number negative' do
      it{ subject.addition(-5,-6) }
   end
  end

  # describe '#multiplication()' do
   #   expect( subject.multiplication(6,2) )
  # end

   describe '#division()' do
      context 'when division two number different zero' do
        it{ subject.division(2,6) }
      end
      context 'when the divisor is zero' do
        it{ subject.division(2,0) }
      end
   end
end
