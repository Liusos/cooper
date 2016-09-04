require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "COOPER"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get instrucciones" do
    get static_pages_instrucciones_url
    assert_response :success
    assert_select "title", "Instrucciones | #{@base_title}"
  end

  test "should get resultados" do
    get static_pages_resultados_url
    assert_response :success
    assert_select "title", "Resultados | #{@base_title}"
  end

end
