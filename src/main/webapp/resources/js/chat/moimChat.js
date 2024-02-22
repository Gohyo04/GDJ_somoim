console.log("moimChat");

let navChat = document.querySelector('.nav > li:last-child');

let a = navChat.lastChild.getAttribute('data-moimChat');
console.log(a);

navChat.addEventListener('click',()=>{
    console.log(a);
})