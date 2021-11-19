# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe Material,"モデルに関するテスト", type: :model do
#   describe 'バリデーションのテスト' do
#     subject { material.valid?}

#     let(:user) { create(:user) }
#     let!(:material) { build(:material, recipe_id: recipe.id) }

#     context 'ingredientカラム' do
#       it '空欄でないこと' do
#         material.ingredient = ''
#         is_expected.to eq false
#       end
#     end
#   end

#   describe 'アソシエーションのテスト' do
#     context 'Materialモデルとの関係' do
#       it 'N:1となっている' do
#         expect(Material.reflect_on_association(:recipe).macro).to eq :belongs_to
#       end
#     end
#   end
# end