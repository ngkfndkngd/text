# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe,"モデルに関するテスト", type: :model do
  describe 'バリデーションのテスト' do
    subject { recipe.valid?}

    let(:user) { create(:user) }
    let!(:recipe) { build(:recipe, user_id: user.id) }

    context 'nameカラム' do
      it '空欄でないこと' do
        recipe.name = ''
        is_expected.to eq false
      end
    end

    context 'descriptionカラム' do
      it '空欄でないこと' do
        recipe.description = ''
        is_expected.to eq false
      end
    end
    # context 'recipe_imageカラム' do
    #   it '空欄でないこと' do
    #     recipe.image = ''
    #     is_expected.to eq false
    #   end
    # end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Recipe.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Materialモデルとの関係' do
      it '1:Nとなっている' do
        expect(Recipe.reflect_on_association(:materials).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Recipe.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Reviewモデルとの関係' do
      it '1:Nとなっている' do
        expect(Recipe.reflect_on_association(:reviews).macro).to eq :has_many
      end
    end
  end
end