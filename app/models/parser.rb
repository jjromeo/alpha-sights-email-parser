require 'json'

class Parser

    def initialize
        @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    end

    def parse_markdown(markdown)
        @markdown.render(markdown)
    end

end

