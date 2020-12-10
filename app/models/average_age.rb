class AverageAge < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '小学生' }, { id: 3, name: '中学生' }, { id: 4, name: '高校生' },
    { id: 5, name: '大学生' }, { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
