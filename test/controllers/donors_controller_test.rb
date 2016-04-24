require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get donors_url
    assert_response :success
  end

  test "should get new" do
    get new_donor_url
    assert_response :success
  end

  test "should create donor" do
    assert_difference('Donor.count') do
      post donors_url, params: { donor: { address: @donor.address, email: @donor.email, first_name: @donor.first_name, last_name: @donor.last_name, phone_number: @donor.phone_number } }
    end

    assert_redirected_to donor_path(Donor.last)
  end

  test "should show donor" do
    get donor_url(@donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_donor_url(@donor)
    assert_response :success
  end

  test "should update donor" do
    patch donor_url(@donor), params: { donor: { address: @donor.address, email: @donor.email, first_name: @donor.first_name, last_name: @donor.last_name, phone_number: @donor.phone_number } }
    assert_redirected_to donor_path(@donor)
  end

  test "should destroy donor" do
    assert_difference('Donor.count', -1) do
      delete donor_url(@donor)
    end

    assert_redirected_to donors_path
  end
end
