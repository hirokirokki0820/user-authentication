require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # 新規ユーザー登録用の統合テスト
  # ユーザー登録ボタンを押したときに（ユーザー情報が無効であるために）ユーザーが作成されないことを確認する
  test "invalid signup information" do
    # 新規ユーザー登録フォームに入る
    get new_user_path
    assert_no_difference 'User.count' do
      # users_pathに対してポストリクエストを送信する
      post users_path, params:
                      { user: { name: "",
                              email: "user@invalid",
                              password: "foo",
                              password_confirmation: "bar" } }
    end
    # エラー発生時に new_user_path をレンダリングしているかどうか
    assert_template "users/new"
    # エラー発生時に error クラスが追加されているかどうか
    assert_select 'div.field.error'
  end

end
