import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },
  
  received(data) {
    const team = `<div><a href="/users/${data.comment.user_id}" style="margin:20px 0 20px 20px;">${data.team}</a>： <span>${data.comment.text}</span></div>`;
    const comments = document.getElementById('comments');
    const newComment = document.getElementById('comment_text');
    comments.insertAdjacentHTML('afterbegin',team);
    newComment.value ='';
  }
});

