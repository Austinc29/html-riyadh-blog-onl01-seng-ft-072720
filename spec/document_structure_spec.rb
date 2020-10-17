RSpec.describe "Well-Formed HTML Document" do
  # The goal is to use the W3C Validator to ensure the content is valid.
  # This is an early stage lab and students aren't used to HTML debugging via
  # test suite. We use this to activate `learn`

  it 'has a valid document structure' do
    index_file_found = File.exists?("index.html")
    expect(index_file_found).to be, "Make sure you have an index.html file"
  end

  context 'within <body>' do
      it 'the wrapper class section contains the correct header sizes and text content' do
        title_box = parsed_html.search('.wrapper').first

        expect(title_box.children.any? {|ch| ch.name == "h1"}).to be == true, "No 'h1' tag(s) found"
        expect(title_box.children.select {|ch| ch.name == "h1"}.first.children.first.text).to be == "Welcome to Riyadh", "Your 'h1' tag should contain the text 'Welcome to Riyadh'"

        expect(title_box.children.any? {|ch| ch.name == "h2"}).to be == true, "No 'h2' tag found"
        expect(title_box.children.select {|ch| ch.name == "h2"}.first.children.first.text).to be == "Where A Traditional Past Meets A Modern Future.", "Your 'h2' tag should contain the text 'Where A Traditional Past Meets A Modern Future.'"

      end


end
