class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :albums
  has_many :tasks, through: :albums
  after_create :addTasks
  def addTasks
    Task.all.each do |task|
    album =  Album.new(
      user_id: self.id,
      task_id: task.id,
      completed: false
    )
    album.save
    end
  end
end

