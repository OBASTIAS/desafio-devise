class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: :true
  has_many :stories


  def update
    @user = User.find(params[:id])
    @user.admin = !@user.admin
    @user.save
    redirect_to :admins, notice: 'User saved'
  end
  
end
