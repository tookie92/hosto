require 'test_helper'

class ProverbesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proverbe = proverbes(:one)
  end

  test "should get index" do
    get proverbes_url
    assert_response :success
  end

  test "should get new" do
    get new_proverbe_url
    assert_response :success
  end

  test "should create proverbe" do
    assert_difference('Proverbe.count') do
      post proverbes_url, params: { proverbe: { auteur: @proverbe.auteur, citation: @proverbe.citation } }
    end

    assert_redirected_to proverbe_url(Proverbe.last)
  end

  test "should show proverbe" do
    get proverbe_url(@proverbe)
    assert_response :success
  end

  test "should get edit" do
    get edit_proverbe_url(@proverbe)
    assert_response :success
  end

  test "should update proverbe" do
    patch proverbe_url(@proverbe), params: { proverbe: { auteur: @proverbe.auteur, citation: @proverbe.citation } }
    assert_redirected_to proverbe_url(@proverbe)
  end

  test "should destroy proverbe" do
    assert_difference('Proverbe.count', -1) do
      delete proverbe_url(@proverbe)
    end

    assert_redirected_to proverbes_url
  end
end
