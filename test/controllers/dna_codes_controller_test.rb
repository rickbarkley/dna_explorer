require "test_helper"

class DnaCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dna_code = dna_codes(:one)
  end

  test "should get index" do
    get dna_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_dna_code_url
    assert_response :success
  end

  test "should create dna_code" do
    assert_difference("DnaCode.count") do
      post dna_codes_url, params: { dna_code: { entity_id: @dna_code.entity_id, raw: @dna_code.raw, user_id: @dna_code.user_id } }
    end

    assert_redirected_to dna_code_url(DnaCode.last)
  end

  test "should show dna_code" do
    get dna_code_url(@dna_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_dna_code_url(@dna_code)
    assert_response :success
  end

  test "should update dna_code" do
    patch dna_code_url(@dna_code), params: { dna_code: { entity_id: @dna_code.entity_id, raw: @dna_code.raw, user_id: @dna_code.user_id } }
    assert_redirected_to dna_code_url(@dna_code)
  end

  test "should destroy dna_code" do
    assert_difference("DnaCode.count", -1) do
      delete dna_code_url(@dna_code)
    end

    assert_redirected_to dna_codes_url
  end
end
