require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "COOPER"
  end

  test "should get instrucciones" do
    get static_pages_instrucciones_url
    assert_response :success
    assert_select "title", "Instrucciones | COOPER"
  end

  test "should get resultados" do
    get static_pages_resultados_url
    assert_response :success
    assert_select "title", "Resultados | COOPER"
  end

end
