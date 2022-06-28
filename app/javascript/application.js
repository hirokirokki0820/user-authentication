// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// Semantic UI
// = require semantic-ui

import "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import "jquery-validation-rails"

/* jquery 関数定義 */
$(document).on("turbo:load", function() {
  /* ドロップダウン */
  $('.ui.dropdown').dropdown();

  /* アコーディオン */
  $('.ui.accordion').accordion();

  /* User入力フォームのバリデーション */
//   $('.ui.form')
//   .form({
//     fields: {
//       'user[name]'    : 'empty',
//       'user[email]'   : 'empty',
//       'user[password]' : ['minLength[6]', 'empty'],
//       'user[password_confirmation]' : ['minLength[6]', 'empty']
//     }
//   })
// ;

// $('.ui.form')
//   .form({
//     fields: {
//       name: {
//         identifier: 'user[name]',
//         rules: [
//           {
//             type   : 'empty',
//             prompt : 'ユーザー名を入力してください'
//           }
//         ]
//       },
//       email: {
//         identifier: 'user[email]',
//         rules: [
//           {
//             type   : 'empty',
//             prompt : 'メールアドレスを入力してください'
//           }
//         ]
//       },
//       password: {
//         identifier: 'user[password]',
//         rules: [
//           {
//             type   : 'empty',
//             prompt : 'パスワードを入力してください'
//           },
//           {
//             type   : 'minLength[6]',
//             prompt : 'パスワードは6文字以上で入力してください'
//           }
//         ]
//       }
//     }
//   })
// ;



}); //最後尾
