Jekyll::Hooks.register :notes, :pre_render do |post, payload|
  docExt = post.extname.tr('.', '')
  # only process if we deal with a markdown file
  if payload['site']['markdown_ext'].include? docExt
    newContent = post.content.gsub(/==(.+?)==/, '<mark>\1</mark>')
    post.content = newContent
  end
end
