# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

      if user.present?
        if user.admin?
          # Administradores pueden eliminar todas las publicaciones
          can :destroy, Publication
          can :manage, :all
        else
           # Usuarios pueden eliminar sus propias publicaciones y comentarios
          can :destroy, Publication, user_id: user.id
          can :read, :all
          can :create, Comment
          can :destroy, Comment, user_id: user.id
        end
      else
        can :read, :all
      end
    end
end
