require 'rails_helper'

RSpec.describe 'Expenses', type: :feature do
  before do
    @expense = create(:expense)
  end

  describe 'Expenses' do
    it 'shows an expense' do
      visit expenses_path
      click_link @expense.label
      assert_selector "h1", text: "Expenses"
    end

    it 'creates an expense' do
      visit expenses_path
      click_on "New expense"
      assert_selector "h1", text: "New expense"

      fill_in "Label", with: "Gas"
      fill_in "Amount", with: 55
      click_on "Create expense"

      assert_selector "h1", text: "Expenses"
      assert_text "Gas"
      assert_text 55
    end

    it 'updates an expense' do
      visit quotes_path
      assert_selector "h1", text: "Expenses"

      click_on "Edit", match: :first
      assert_selector "h1", text: "Edit expense"

      fill_in "Label", with: "Mortgage"
      click_on "Update expense"

      assert_selector "h1", text: "Expenses"
      assert_text "Mortgage"
    end

    it 'destroys an expense' do
      visit expesnes_path
      assert_text @expense.label

      click_on "Delete", match: :first
      assert_no_text @expense.label
    end
  end
end