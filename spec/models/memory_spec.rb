require 'rails_helper'

RSpec.describe Memory, type: :model do
  before do
    @memory = FactoryBot.build(:memory)
  end

  describe "思い出投稿機能" do
    context "思い出投稿ができる" do
      it "title、memoryが存在すれば投稿できる" do
        expect(@memory).to be_valid
      end
    end

    context "思い出投稿ができない" do
      it "titleが空では投稿できない" do
        @memory.title = ""
        @memory.valid?
        expect(@memory.errors.full_messages).to include("Title can't be blank")
      end

      it "memoryが空では投稿できない" do
        @memory.memory = ""
        @memory.valid?
        expect(@memory.errors.full_messages).to include("Memory can't be blank")
      end
    end
  end
end
