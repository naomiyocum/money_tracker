require 'rails_helper'

RSpec.describe 'Expenses', type: :feature do
  before do
    @expense = create(:expense)
  end

  describe 'Expenses' do
    it 'shows an expense' do
      visit expenses_path
      click_link @expense.label
      assert_selector "h1", text: "#{@expense.label}"
    end

    it 'creates an expense' do
      visit expenses_path
      assert_selector "a", text: "New Expense"
      
      click_on "New Expense"
      fill_in "Label", with: "Netflix Subscription"
      fill_in "Amount", with: 9.99
      click_on "Create Expense"

      assert_selector "h1", text: "Expenses"
      assert_text "Netflix Subscription"
      assert_text "$9.99"
    end

    it 'updates an expense' do
      visit expenses_path
      assert_selector "a", text: "Edit"

      click_on "Edit", match: :first
      fill_in "Label", with: "Mortgage"
      
      click_on "Update Expense"

      assert_text "Mortgage"
    end

    it 'destroys an expense' do
      visit expenses_path
      assert_text @expense.label

      click_on "Delete", match: :first
      assert_no_text @expense.label
    end
  end
end