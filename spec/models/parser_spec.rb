require 'rails_helper'

describe Parser do 
    it 'can take a markdown string and return it as html' do 
        parser = Parser.new 
        expect(parser.parse_markdown('# Test Body')).to eq "<h1>Test Body</h1>\n"
    end

end
