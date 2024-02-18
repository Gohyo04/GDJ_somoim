/**
 * 
 */
// msg input

console.log('js');

const sendMsg = document.getElementById('sendMsg');

const chat_record = document.getElementById('chat_record');
const userIdCh = document.getElementById('userCh');
const msgForm = document.getElementById('msgForm');

let scrollToBottom = chatHistory.scrollHeight - chatHistory.scrollTop === chatHistory.clientHeight;

let sock = new SockJS("http://localhost:80/chat");

const messageNum = "${chatMessageNum}";
const chatRoomNum = "${chatRoomNum}";
const userName = "${userName}";
const chatText = "${chatText}";
const chatMessageStamp = "${chatMessageStamp}";



sendMsg.addEventListener('keyup',(e) => {
	if(sendMsg.value != ""){
        if(e.key == 'Enter' || e.keyCode == '13'){

            const chatMessage = {
                "userName" : userName,
                "chatText" : chatText,
                "chatRoomNum" : 1
            };
            chatMessage.userName = userIdCh.value;
            console.log(chatMessage.userName);
            chatMessage.chatText = sendMsg.value;

            

            // sock.send(userIdCh.value+":"+sendMsg.value);
            sock.send(JSON.stringify(chatMessage));
            
            // fetch
			
            // mySend(userIdCh.value +" : "+sendMsg.value);
            scroller();
        	sendMsg.value = '';
        }
	}
});

sock.onopen = function(){
    console.log('연결');
}

sock.onmessage =  function (e){
    const week = new Array('SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT');
    let today = new Date(e.timeStamp);

    const dayName = week[today.getDay()];
    const hours = today.getHours() % 12 ? today.getHours() % 12 : 12;
    const minutes = today.getMinutes() < 10 ? '0' + today.getMinutes() : today.getMinutes();
    const ampm = today.getHours() >= 12 ? 'PM' : 'AM';
    const date = `${hours}:${minutes} ${ampm}, ${dayName}`;

    let data = e.data;
    console.log(data);
    let ar = data.split(",");
    // {"userName":"user2"
    let user = ar[0].trim().substring(13,ar[0].length-1);
    let str = ar[1].trim().substring(12,ar[1].length-1);

    console.log(user);
    console.log(userIdCh.value);
    if(user === userIdCh.value){
        mySend(str, date);
    }else{
        otherSend(str, date);
    }
    
    scroller();

    console.log("onMessage : "+data);
}

sock.onerror = function(){
    console.log('error');
}

// sock.onclose = function(){
//     console.log('onClose');
    
// }

{/* 
<div class="message-data">
    <span class="message-data-time">10:12 AM, Today</span>
</div> 
*/}

function mySend(msg, date){
    // 채팅형태로 Element 추가
    // chat-record add
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement("div");
    div.classList.add('message-data')
    let span = document.createElement("span");
    span.classList.add('message-data-time');
    span.innerText = date;

    // 날짜와 프로필사진 (my 는 profile 사진이 위에 있음)
    chat_record.append(li);
    li.append(div);
    div.append(span);

    // msg 를 담을 div
    div = document.createElement('div');
    
    li.append(div);
    div.classList.add('message');
    div.classList.add('my-message');
    div.innerText = msg;
}

function otherSend(msg, date){
    let li = document.createElement("li");
    li.classList.add('clearfix');
    let div = document.createElement('div');
    div.classList.add('message-data');
    div.classList.add('text-right');
    let span = document.createElement('span');
    span.classList.add('message-data-time');
    
    span.innerText = date;
    
    // 날짜, 프로필사진 
    chat_record.append(li);
    li.append(div);
    div.append(span);

    div = document.createElement('div');
    
    li.append(div);
    div.classList.add('message');
    div.classList.add('other-message');
    div.classList.add('float-right');
    div.innerText = msg;
}

let chatHistory = document.getElementById('chat-history');
let newMsgCount = 0;
const newCntBtn = document.querySelector('#bBtn > div');


// scroll 밑에 고정
function scroller(){
    if(scrollToBottom){
        chatHistory.scrollTo(0, chatHistory.scrollHeight);
    }
}
