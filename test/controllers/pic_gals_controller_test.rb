require 'test_helper'

class PicGalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pic_gal = pic_gals(:one)
  end

  test "should get index" do
    get pic_gals_url
    assert_response :success
  end

  test "should get new" do
    get new_pic_gal_url
    assert_response :success
  end

  test "should create pic_gal" do
    assert_difference('PicGal.count') do
      post pic_gals_url, params: { pic_gal: { img: @pic_gal.img, notes: @pic_gal.notes, title: @pic_gal.title } }
    end

    assert_redirected_to pic_gal_url(PicGal.last)
  end

  test "should show pic_gal" do
    get pic_gal_url(@pic_gal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pic_gal_url(@pic_gal)
    assert_response :success
  end

  test "should update pic_gal" do
    patch pic_gal_url(@pic_gal), params: { pic_gal: { img: @pic_gal.img, notes: @pic_gal.notes, title: @pic_gal.title } }
    assert_redirected_to pic_gal_url(@pic_gal)
  end

  test "should destroy pic_gal" do
    assert_difference('PicGal.count', -1) do
      delete pic_gal_url(@pic_gal)
    end

    assert_redirected_to pic_gals_url
  end
end
