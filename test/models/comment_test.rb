require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without commenter" do
    article = Article.new(title: "aaaaa")
    article.save
    comment = article.comments.create
    assert_not article.save, "Saved the comment without a commenter"
  end
end
