require 'test_helper'

class FactsTest < ActionDispatch::IntegrationTest
  def setup
  @user = users(:example)
  @admin = users(:admin)
  @fact = create(:fact)
  end

  test "User can see facts index and links to the facts" do
    log_in_as(@user)
    get facts_path
    assert_template 'facts/index'
    assert_select "a[href=?]", fact_path(@fact)
  end

  test "Admin can create facts" do
    log_in_as(@admin)
    assert_difference 'Fact.count', 1 do
    @fact2 = create(:fact)
    end
  end

  test "Admin can delete facts" do
    log_in_as(@admin)
    assert_difference 'Fact.count', -1 do
    delete fact_path(@fact)
    end
  end

  test "User cant delete facts" do
    log_in_as(@user)
    assert_difference 'Fact.count', 0 do
    delete fact_path(@fact)
    end
  end

  test "User cant create facts" do
    log_in_as(@user)
    assert_difference 'Fact.count', 0 do
    get new_fact_path, params: {title: "test", content: "test content"}
    end
  end
end
