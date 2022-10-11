# frozen_string_literal: true

require_relative 'lab5_p3_func'
require 'rspec'
def gench
  test_ar = []
  test_ar_correct = []
  Random.rand(1..5).times do # c_st
    test_st = ''
    test_st_correct = ''
    Random.rand(2..10).times do # c_cl
      test_cl = ''
      Random.rand(2..10).times do # c_bukv
        test_cl += Random.rand(65...85).chr
      end
      test_cl_correct = "т#{test_cl}е"
      test_cl = "н#{test_cl}о"
      test_st += "#{test_cl} "
      test_st_correct += "#{test_cl_correct} "
    end
    test_ar.push(test_st.strip!)
    test_ar_correct.push(test_st_correct.strip!)
  end
  [test_ar, test_ar_correct]
end

def genwhch
  test_ar = []
  test_ar_correct = []
  Random.rand(1..5).times do # c_st
    test_st = ''
    test_st_correct = ''
    Random.rand(2..10).times do # c_cl
      test_cl = ''
      Random.rand(2..10).times do # c_bukv
        test_cl += Random.rand(65...85).chr
      end
      test_cl_correct = test_cl
      test_st += "#{test_cl} "
      test_st_correct += "#{test_cl_correct} "
    end
    test_ar.push(test_st.strip!)
    test_ar_correct.push(test_st_correct.strip!)
  end
  [test_ar, test_ar_correct]
end

RSpec.describe Correct do
  test_ar = []
  test_ar_correct = []
  context 'with correct strings 1' do
    before do
      test_ar, test_ar_correct = gench
    end
    it 'should change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
    end
    it 'should change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
    end
  end
  context 'with correct strings 2' do
    before do
      test_ar, test_ar_correct = genwhch
    end
    it 'should NO change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
    end
    it 'should NO change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
    end
  end
end
