# frozen_string_literal: true

require 'rails_helper'

  RSpec.describe Favorite,"モデルのに関するテスト", type: :model do
    describe 'バリデーションのテスト' do
    end
    describe 'アソシエーションのテスト' do
      context 'Userモデルとの関係' do
        it 'N:1となっている' do
          expect(Favorite.reflect_on_association(:user).macro).to eq :belongs_to
        end
      end
      context 'Recipeモデルとの関係' do
        it 'N:1となっている' do
          expect(Favorite.reflect_on_association(:recipe).macro).to eq :belongs_to
        end
      end
    end
  end