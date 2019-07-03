## Usage

### サーバー側
`port 3001` で起動してください
```
bundle exec rails s -p 3001
```

### クライアント側
defaultの　`port 8080` でOK

## routes

### サーバー側

- GET: `localhost:3001/questions` : 全質問の配列（JSON）`[questions,・・・]`を返す
- POST: `localhost:3001/questions` : 新たな質問を投稿
- GET: `localhost:3001/questions/:id` : 質問（id=:id）とそれに紐づく回答の配列`[questions,answers: [ answers,・・・]]`を返す
- POST: `localhost:3001/questions/:id/answers` : 質問（id=:id）に対する回答を投稿

### クライアント側

- `localhost:8080/` : top page
- `localhost:8080/questions` : 質問入力画面
- `localhost:8080/questions/:id` : 質問(id=:id)の詳細画面
- `localhost:8080/questions/:id/answer` : 質問(id=:id)に対する回答入力画面

## Model

### Questions

- id
- body: 質問内容
- created_at
- updated_at

### Answers

- id
- questions_id: questionsとリンク
- body: 回答内容
- created_at
- updated_at
