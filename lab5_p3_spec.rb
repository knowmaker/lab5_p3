# frozen_string_literal: true

require_relative 'lab5_p3_func'
require 'rspec'

RSpec.describe Correct do
  test_ar = []
  test_ar_correct = []
  context 'with correct strings 1' do
    before do
      c_st = Random.rand(1..5)
      c_cl = Random.rand(2..10)
      c_st.times do
        test_st = ''
        test_st_correct = ''
        c_cl.times do
          test_cl = ''
          c_bukv = Random.rand(2..10)
          c_bukv.times do
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
    end
    it 'should change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
    it 'should change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
    it 'should change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
  end
  context 'with correct strings 2' do
    before do
      c_st = Random.rand(1..5)
      c_cl = Random.rand(2..10)
      c_st.times do
        test_st = ''
        test_st_correct = ''
        c_cl.times do
          test_cl = ''
          c_bukv = Random.rand(2..10)
          c_bukv.times do
            test_cl += Random.rand(65...85).chr
          end
          test_cl_correct = test_cl
          test_st += "#{test_cl} "
          test_st_correct += "#{test_cl_correct} "
        end
        test_ar.push(test_st.strip!)
        test_ar_correct.push(test_st_correct.strip!)
      end
    end
    it 'should NO change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
    it 'should NO change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
    it 'should NO change' do
      expect(Correct.new_str_array(test_ar)).to eq(test_ar_correct)
      test_ar = []
      test_ar_correct = []
    end
  end
end
