class Usuario < ApplicationRecord
	validates :email, uniqueness: {message: "Ya existe un usuario con ese email"}, on: :create
	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true


end
