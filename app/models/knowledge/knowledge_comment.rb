#coding: utf-8

class Knowledge::KnowledgeComment
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :content, :type => String
  field :check_status, :type => Integer
  field :comment_index, :type => Integer

  belongs_to :knowledge, :class_name => 'Knowledge::Knowledge'
  belongs_to :user, :class_name => 'User'

  before_save do |knowledge_comment|
    knowledge_comment.comment_index = knowledge.comments_count + 1
    knowledge.inc(:comments_count, 1)
  end
end