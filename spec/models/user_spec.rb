# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User,"モデルに関するテスト", type: :model do
  describe 'バリデーションのテスト' do
    subject { user.valid?}

    let!(:other_user) { create(:user) }
    let( :user) { build(:user) }

    context 'nameカラム' do
      it '空欄でないこと' do
        user.name = ''
        is_expected.to eq false
      end
      it '2文字以上であること：　1文字はNG' do
        user.name = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること：　2文字はOK' do
        user.name = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること：20字はOK' do
        user.name = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること：20字はNG' do
        user.name = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
      it '一意性があること' do
        user.name = other_user.name
        is_expected.to eq false
      end
    end

    context 'introductionカラム' do
      it '50文字以下であること：50文字はOK' do
        user.introduction = Faker::Lorem.characters(number: 50)
        is_expected.to eq true
      end
      it '50文字以上であること：51文字はNG' do
        user.introduction = Faker::Lorem.characters(number: 51)
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Recipeモデルとの関係' do
      it '1:Nとなっているか' do
        expect(User.reflect_on_association(:recipes).macro).to eq :has_many
      end
    end
    context 'Logモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:logs).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Reviewモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:reviews).macro).to eq :has_many
      end
    end
  end
end