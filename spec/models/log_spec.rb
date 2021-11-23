# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Log, "モデルに関するテスト", type: :model do
  # describe 'バリデーションのテスト' do
  #   subject { log.valid?}

  #   let(:user) { create(:user) }
  #   let!(:log) { build(:log, user_id: user.id) }

  #   context 'record_statusカラム' do
  #     it '空欄でないこと' do
  #       log.record_status = ''
  #       is_expected.to eq false
  #     end
  #   end
  # end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Log.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
end
