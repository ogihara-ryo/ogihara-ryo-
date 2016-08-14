module MarkdownHelper
  def markdown_to_html(mk_code, extentions = {}, render_options = {})
    Redcarpet::Markdown.new(
      Redcarpet::Render::HTML.new(render_options),
      extentions
    ).render(mk_code || '')
  end
end
