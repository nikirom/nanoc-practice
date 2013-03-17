# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require "redcarpet"
require "coderay"

class MyRedcarpetRenderer < Redcarpet::Render::XHTML
  # ～～～中略～～～
  def block_code(code, language)
    if language then
      CodeRay.scan(code, language).div
    else
      "\n<pre><code>#{code}</code></pre>\n"
    end
  end
end

include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo
