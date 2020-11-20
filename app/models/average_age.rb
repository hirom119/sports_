class AverageAge < ActiveHash::Base
  self.data = [
    {id: 1, name: '--'},
    {id: 2, name: '18歳'}, {id: 3, name: '19歳'}, {id: 4, name: '20歳'},
      {id: 5, name: '21歳'}, {id: 6, name: '22歳'}, {id: 7, name: '23歳'},
      {id: 8, name: '24歳'}, {id: 9, name: '25歳'}, {id: 10, name: '26歳'},
      {id: 11, name: '27歳'}, {id: 12, name: '28歳'}, {id: 13, name: '29歳'},
      {id: 14, name: '30歳'}, {id: 15, name: '31歳'}, {id: 16, name: '32歳'},
      {id: 17, name: '33歳'}, {id: 18, name: '34歳'}, {id: 19, name: '35歳'},
      {id: 20, name: '36歳'}, {id: 21, name: '37歳'}, {id: 22, name: '38歳'},
      {id: 23, name: '39歳'}, {id: 24, name: '40歳'}, {id: 25, name: '41歳'},
      {id: 26, name: '42歳'}, {id: 27, name: '43歳'}, {id: 28, name: '44歳'},
      {id: 29, name: '45歳'}, {id: 30, name: '46歳'}, {id: 31, name: '47歳'},
      {id: 32, name: '48歳'}, {id: 33, name: '49歳'}, {id: 34, name: '50歳'},
      {id: 35, name: '51歳'}, {id: 36, name: '52歳'}, {id: 37, name: '53歳'},
      {id: 38, name: '54歳'}, {id: 39, name: '55歳'}, {id: 40, name: '56歳'},
      {id: 41, name: '57歳'}, {id: 42, name: '58歳'}, {id: 43, name: '59歳'},
      {id: 44, name: '60歳'}, {id: 45, name: '61歳以上'}
    ]

    include ActiveHash::Associations
  has_many :posts
  end