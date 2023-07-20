require_relative "../helpers/version"
require_relative "../helpers/SeleniumHelper"

module ChrisTest
  SeleniumHelper.get_new_webpage
  SeleniumHelper.search_for_string("XFL")
  SeleniumHelper.close_browser
end