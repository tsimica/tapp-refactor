class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :comments, :program, :department, :previous_uoft_experience, 
             :yip, :annotation
end
