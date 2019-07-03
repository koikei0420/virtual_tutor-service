require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest

  mock_question = '$$\frac{\mathrm d}{\mathrm d x}\sin(x) = ?'
  mock_answer = '$$\frac{\mathrm d}{\mathrm d x}\sin(x) = \cos(x)$$'

  test 'post questions then post answer , so get question detail expect same quesiton and same answer' do
    post api_questions_path, params: { body: mock_question }
    assert_response :ok
    return_question = JSON.parse(response.body)
    assert_equal return_question['body'], mock_question

    post api_question_answers_path(return_question['id'].to_i), params: { body: mock_answer }
    p response
    return_answer = JSON.parse(response.body)
    
    assert_equal return_answer['body'], mock_answer

    get api_question_path(return_question['id'])
    return_question_detail = JSON.parse(response.body)
    answers = return_question_detail['answers']
    assert_equal return_question_detail['id'], return_question['id']
    assert_equal answers[0]['id'], return_answer['id']
    assert_equal answers[0]['body'], mock_answer
  end

  test 'post answer to nothing question id, expect ' do
    post api_questions_path, params: { body: mock_question }
    assert_response :ok
    return_question = JSON.parse(response.body)
    assert_equal return_question['body'], mock_question

    post api_question_answers_path(return_question['id'].to_i - 100), params: { body: mock_answer }
    assert_response :unprocessable_entity
  end
end
