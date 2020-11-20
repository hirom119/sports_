require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
end
  describe '投稿'do
    context '投稿がうまくいくとき' do
      it "recruitment_team_idとcompetition_idとaverage_age_idとplaceとremarksとgender_idがあれば投稿できる"do
        expect(@post).to be_valid
      end
      it "募集チーム数が１だと投稿できない"do
        @post.recruitment_team_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Recruitment team must be other than 1")
      end
      it "競技が1だと投稿できない"do 
        @post.competition_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Competition must be other than 1")
      end
      it "平均年齢が1だと投稿できない"do
        @post.average_age_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Average age must be other than 1")        
      end
      it "性別が1だと投稿できない"do
        @post.gender_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Gender must be other than 1")
      end
      it "場所が空だと投稿できない"do
        @post.place = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Place can't be blank")
      end
      it "募集チームが空だと投稿できない"do
        @post.recruitment_team_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include ("Recruitment team can't be blank")
      end
      it "競技が空だと投稿できない"do
        @post.competition = nil
        @post.valid?
        expect(@post.errors.full_messages).to include ("Competition can't be blank")
        end
      it "平均年齢が空だと投稿できない"do
        @post.average_age = nil
        @post.valid?
        expect(@post.errors.full_messages).to include ("Average age can't be blank")
        end
      it "性別が空だと投稿できない"do
        @post.gender = nil
        @post.valid?
        expect(@post.errors.full_messages).to include ("Gender can't be blank") 
      end
    end
  end
end