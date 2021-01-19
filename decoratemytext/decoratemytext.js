//alert("Hello, world!");
window.onload = () =>{
    let btn = document.getElementById('btn');
    let textarea = document.getElementById('textarea');
    let checkbox = document.getElementById('chkBling');
    btn.onclick = changeTextarea;
    checkbox.onchange = changeCheckbox;
};

function changeTextarea(){
    let fontSize = parseFloat(window.getComputedStyle(textarea).fontSize);
    setInterval(()=>{
        console.log(fontSize);
        fontSize +=2;
        textarea.style.fontSize = fontSize+"pt"
    },500)
    //textarea.style.fontSize = '24pt';
}
function changeCheckbox(){
    if(document.getElementById('chkBling').checked) {
        textarea.style.fontWeight = '900';
        textarea.style.color = 'green';
    } else {
        textarea.style.fontWeight = 'normal';
        textarea.style.color = 'black';
    }
}