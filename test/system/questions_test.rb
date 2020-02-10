require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    take_screenshot
    assert_selector "p", text: "Ask your coach anything"
  end

  test "say hello! to the coach" do 
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "say I am going to work! to the coach" do 
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
  end

  test "ask a question to the coach" do 
    visit ask_url
    fill_in "question", with: "Question ?     "
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "say random thing to the coach" do 
    visit ask_url
    fill_in "question", with: "random thing"
    click_on "Ask"
    assert_text "I don\'t care, get dressed and go to work!"
  end

end
