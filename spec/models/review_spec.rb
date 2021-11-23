# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, "モデルに関するテスト", type: :model do
  describe 'バリデーションのテスト' do
    subject { review.valid? }

    let(:user) { create(:user) }
    let!(:review) { build(:review, user_id: user.id) }

    context 'commentカラム' do
      it '空欄でないこと' do
        review.comment = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Review.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Recipeモデルとの関係' do
      it 'N:1となっている' do
        expect(Review.reflect_on_association(:recipe).macro).to eq :belongs_to
      end
    end
  end
end
