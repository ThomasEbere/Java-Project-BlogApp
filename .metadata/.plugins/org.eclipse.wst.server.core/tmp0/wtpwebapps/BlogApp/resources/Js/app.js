
window.onload=function(){
const createdata=document.querySelector('.create');
const blogdiv=document.querySelector('.blogdiv');
const success=document.querySelector('.success');

const togglePassword=document.querySelector('#togglePassword');
const password=document.querySelector('#id_password');

const blogbox=document.querySelector('.blogitem');
const liked=document.querySelector('.mylike');
const button=document.querySelector('button');



/*createdata.addEventListener('submit', e =>{
blogdiv.style.setProperty('display','none');
success.style.setProperty('display','block');
});*/


if(togglePassword)
{
    togglePassword.addEventListener('click', e =>{
        const type= password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
    
        togglePassword.classList.toggle('fa-eye-slash');
    });
}


let count=0;
if(liked)
{
    console.log(liked.innerText);
}
// if(blogbox){
//     blogbox.addEventListener('click', d => {
//         if(d.target.classList.contains('added')){
//             d.preventDefault();
//             getElementByI
//             count++;
//             blogbox.querySelector('span').textContent=`${count}`;
//          liked.style.setProperty('display', 'block','important');
//          button.disabled=true;
//         }
    
//     })
// }

}
