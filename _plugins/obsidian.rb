Jekyll::Hooks.register :notes, :pre_render do |post, payload|
  if payload['site']['markdown_ext'].include? post.extname.tr('.', '')
    post.content = post.content.gsub(/==(.+?)==/, '<mark>\1</mark>')
  end
end

Jekyll::Hooks.register :pages, :pre_render do |post, payload|
  if payload['site']['markdown_ext'].include? post.extname.tr('.', '')
    post.content = post.content.gsub(/==(.+?)==/, '<mark>\1</mark>')
  end
end
