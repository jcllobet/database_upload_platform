console.log('BASIC HOLIS')
document.addEventListener('turbolinks:load', () => {
    console.log('holis 1')
    window.setTimeout(()=>{
      console.log('holis 2')
      document.getElementById('main').classList.remove('is-loading');
    }, 100);
  })
//   $(document).ready(function() {
//   setTimeout(function() {
//     $("#main").removeClass("is-loading");
//   }, 100)
// });
