document.addEventListener(
  "turbolinks:load", function(){
    if (document.getElementById("token_submit") != null) { //token_submitというidがnullの場合、下記コードを実行しない
    Payjp.setPublicKey("pk_test_df9a593b549d31cc4e575c2e"); //公開鍵直書き
    let btn = document.getElementById("token_submit"); //IDがtoken_submitの場合に取得されます
    btn.addEventListener("click", e => { //ボタンが押されたときに作動します
      e.preventDefault();//ボタンを一旦無効化します
      let card = {
        number: document.getElementById("card_number").value,
        cvc: document.getElementById("cvc").value,
        exp_month: document.getElementById("exp_month").value,
        exp_year: document.getElementById("exp_year").value
      };//入力されたデータを取得する。
      Payjp.createToken(card, (status,response) => {
        if (status === 200) { //成功した場合
          $("#card_number").removeAttr("name");
          $("#cvc").removeAttr("name");
          $("#exp_month").removeAttr("name");
          $("#exp_year").removeAttr("name"); //データを自サーバにpostしないように削除
          $("#card_token").append(
            $('<input type="hidden" name="payjp-token">').val(response.id),
            $('<input type="hidden" name="card-token">').val(response.card.id)
          ); //取得したトークンを送信できる状態にします
          document.inputForm.submit();
          alert("登録が完了しました"); //確認用
        } else {
          alert("カード情報が正しくありません。"); //確認用
        }
      });
    });
  }
},
false
);
