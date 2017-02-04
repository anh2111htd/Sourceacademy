require 'test_helper'

module Sourceacademy
  class CodesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @code = sourceacademy_codes(:one)
    end

    test "should get index" do
      get codes_url
      assert_response :success
    end

    test "should get new" do
      get new_code_url
      assert_response :success
    end

    test "should create code" do
      assert_difference('Code.count') do
        post codes_url, params: { code: { author_mail: @code.author_mail, body: @code.body, name: @code.name } }
      end

      assert_redirected_to code_url(Code.last)
    end

    test "should show code" do
      get code_url(@code)
      assert_response :success
    end

    test "should get edit" do
      get edit_code_url(@code)
      assert_response :success
    end

    test "should update code" do
      patch code_url(@code), params: { code: { author_mail: @code.author_mail, body: @code.body, name: @code.name } }
      assert_redirected_to code_url(@code)
    end

    test "should destroy code" do
      assert_difference('Code.count', -1) do
        delete code_url(@code)
      end

      assert_redirected_to codes_url
    end
  end
end
