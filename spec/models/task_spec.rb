require 'rails_helper'
describe 'タスクモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context 'タスクのタイトルが空の場合' do
      it 'バリデーションにひっかる' do
        task = Task.new(title: '', content: '失敗テスト')
        expect(task).not_to be_valid
        #not_to be_validはひっかかれば成功という意味
      end
    end
    context 'タスクの詳細が空の場合' do
      it 'バリデーションにひっかかる' do
        task = Task.new(title: '失敗テスト2', content: '')
        expect(task).not_to be_valid
      end
    end
    context 'タスクのタイトルと詳細に内容が記載されている場合' do
      it 'バリデーションが通る' do
        task = Task.new(title: '成功テスト', content: '成功テスト1')
        expect(task).to be_valid
        #to be_validはnotの逆、引っかからなければ成功という意味
      end
    end
  end
end
