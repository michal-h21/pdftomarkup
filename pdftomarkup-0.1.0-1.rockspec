package = "pdftomarkup"
version = "0.1.0-1"
source = {
  url = "https://github.com/michal-h21/pdftomarkup/archive/v0.1.0.tar.gz",
  dir = "pdftomarkup-0.1.0-1"
}
description = {
  summary = "pdftomarkup",
  detailed = [[
    Convert PDF to LaTeX or markup languages"
  ]],
  homepage = "https://github.com/michal-h21/pdftomarkup/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
   modules = {
    pdftomarkup = "src/pdftomarkup.lua"
  }
}