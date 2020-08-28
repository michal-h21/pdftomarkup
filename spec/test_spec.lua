-- test_spec.lua
local xml_text = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pdf2xml SYSTEM "pdf2xml.dtd">

<pdf2xml producer="poppler" version="0.73.0">
<page number="1" position="absolute" top="0" left="0" height="1262" width="892">
	<fontspec id="0" size="12" family="YIUXTL+LMRoman10" color="#000000"/>
<text top="186" left="223" width="75" height="20" font="0">Hello world</text>
<text top="1038" left="455" width="7" height="20" font="0">1</text>
</page>
</pdf2xml>
]]
expose("exposed test for pdftomarkup", function()
    local pdftomarkup = require("pdftomarkup")
    local parser = pdftomarkup.new()
    it("should load parser", function()
      assert.truthy(type(parser) == "table")
    end)
    parser:parse_xml(xml_text)
    for k,v in pairs(parser.dom.root) do
      print(k,v)
    end
    -- tests can go here

    -- more tests pertaining to the top level
end)
