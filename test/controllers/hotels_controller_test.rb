require 'test_helper'

class HotelsControllerTest < ActionController::TestCase
  setup do
    @hotel = hotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post :create, hotel: { breakfast_included: @hotel.breakfast_included, photo: @hotel.photo, price_for_room: @hotel.price_for_room, room_description: @hotel.room_description, star_rating: @hotel.star_rating, title: @hotel.title }
    end

    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should show hotel" do
    get :show, id: @hotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotel
    assert_response :success
  end

  test "should update hotel" do
    patch :update, id: @hotel, hotel: { breakfast_included: @hotel.breakfast_included, photo: @hotel.photo, price_for_room: @hotel.price_for_room, room_description: @hotel.room_description, star_rating: @hotel.star_rating, title: @hotel.title }
    assert_redirected_to hotel_path(assigns(:hotel))
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete :destroy, id: @hotel
    end

    assert_redirected_to hotels_path
  end
end