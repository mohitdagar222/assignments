// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



document.addEventListener('submit', function (event) {
  const form = event.target;

  function getField(formData, pattern) {
    var field = {};
    formData.forEach(function(value, key) {
      if (key.toLowerCase().includes(pattern)) {
        field[pattern] = value;
      }
    });
    return field;
  }

  if (form) {
    const formData = new FormData(form);
    var name_data = getField(formData, 'name');
    var email_data = getField(formData, 'email');

    var data = {
      name: name_data.name,
      email: email_data.email
    }
    //alert(data.name + ', ' + data.email)

    if(RH && data){
      RH.form.submit(data);
    }
  }
});
