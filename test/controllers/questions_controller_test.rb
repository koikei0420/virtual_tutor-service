require 'test_helper'
require 'securerandom'

class QuestionsControllerTest < ActionDispatch::IntegrationTest

  test_equation = '$$\frac{\mathrm d}{\mathrm d x}\sin(x) = \cos(x)$$'

  test 'get quesitons expect success' do
    get api_questions_path
    assert_response :success
  end

  test 'post question expect success' do
    post api_questions_path, params: { body: test_equation }
    assert_response :success
  end

  test 'post question then get same question expect true' do
    post api_questions_path, params: { body: test_equation }
    assert_response :success
    json = JSON.parse(response.body)

    get api_question_path(json['id'])
    assert_response :success
    assert_equal json['body'], test_equation
  end

  test 'post 2000 questions then get all questions expect true' do
    times = 2000
    times.times do
      post api_questions_path, params: { body: SecureRandom.base64(8) }
    end
    get api_questions_path
    json = JSON.parse(response.body)
    assert_response :success
    assert_equal json.length, times + 2 #defaultで２つポストされる
  end
end
