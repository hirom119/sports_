class RecruitmentTeam < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1チーム' },
    { id: 3, name: '2チーム' },
    { id: 4, name: '3チーム' },
    { id: 5, name: '4チーム' },
    { id: 6, name: '5チーム' },
    { id: 7, name: '6チーム' },
    { id: 8, name: '7チーム' },
    { id: 9, name: '8チーム' },
    { id: 10, name: '9チーム' },
    { id: 11, name: '10チーム' },
    { id: 12, name: '11チーム以上' }
  ]
  include ActiveHash::Associations
  has_many :posts
end
