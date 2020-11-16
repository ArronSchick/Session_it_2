require 'test_helper'

class BookedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booked = bookeds(:one)
  end

  test "should get index" do
    get bookeds_url
    assert_response :success
  end

  test "should get new" do
    get new_booked_url
    assert_response :success
  end

  test "should create booked" do
    assert_difference('Booked.count') do
      post bookeds_url, params: { booked: {  } }
    end

    assert_redirected_to booked_url(Booked.last)
  end

  test "should show booked" do
    get booked_url(@booked)
    assert_response :success
  end

  test "should get edit" do
    get edit_booked_url(@booked)
    assert_response :success
  end

  test "should update booked" do
    patch booked_url(@booked), params: { booked: {  } }
    assert_redirected_to booked_url(@booked)
  end

  test "should destroy booked" do
    assert_difference('Booked.count', -1) do
      delete booked_url(@booked)
    end

    assert_redirected_to bookeds_url
  end
end
