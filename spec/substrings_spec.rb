# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/substrings'

RSpec.describe 'Substrings Project' do
  describe 'single word search' do
    it 'finds single instances of word substrings in a dictionary' do
      dictionary = %w[below down go going horn how howdy it i low own part
                      partner sit]
      result = { 'below' => 1, 'low' => 1 }
      expect(substrings('below', dictionary)).to eq(result)
    end
  end

  describe 'multiple word search' do
    it 'finds multiple instances of word substrings in a dictionary' do
      dictionary = %w[below down go going horn how howdy it i low own part
                      partner sit]
      result = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
                 'part' => 1, 'partner' => 1, 'sit' => 1 }
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(result)
    end
  end
end
