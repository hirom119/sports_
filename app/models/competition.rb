class Competition < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'バスケ' },
    { id: 3, name: '野球' },
    { id: 4, name: 'サッカー' },
    { id: 5, name: 'バレー' },
    { id: 6, name: 'テニス' },
    { id: 7, name: '卓球' },
    { id: 8, name: 'ラグビー' },
    { id: 9, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :posts
end