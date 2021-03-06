--
-- pdftomarkup-0.1.0
--
-- The MIT License (MIT)
--
-- Copyright (c) 2020, Michal Hoftich
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so,
-- subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
-- FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
-- COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
-- IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
-- CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--

local PKG_AUTHOR = 'Michal Hoftich'
local PKG_EMAIL = 'michal.h21@gmail.com'
local PKG_VERSION = '0.1.0-1'


local pdftomarkup = {
    _VERSION = PKG_VERSION
}

local xml2lua = require("xml2lua")
local handler = require("xmlhandler.dom")


function pdftomarkup:new (o)
    o = o or {}   -- create object if user does not provide one
    local self = pdftomarkup
    setmetatable(o, self)
    self.__index = self
    return o
end

function pdftomarkup:method(text)
    -- docstring
    if string.len(text) == 0 then
        return false
    end
    return true
end

function pdftomarkup:parse_xml(xml_text)
  local parser = xml2lua.parser(handler)
  local status = parser:parse(xml_text)
  self.dom = handler
  return handler
end

return pdftomarkup
