class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :editable

  def editable
    scope == object.user
  end
end
