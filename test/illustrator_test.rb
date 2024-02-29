require 'test_helper'
require 'rack'

class Marcel::MimeType::IllustratorTest < Marcel::TestCase
  test ".ai uploaded as application/postscript" do
    file = files("name/application/illustrator/illustrator.ai")
    assert_equal "application/illustrator", Marcel::MimeType.for(file, name: "illustrator.ai", declared_type: "application/postscript")
  end
end
