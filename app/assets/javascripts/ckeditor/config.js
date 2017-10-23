CKEDITOR.editorConfig = function(config) {
   // .....
   // .....
  // an array of fonts from "google fonts", I listed 3 fonts here
  myFonts = ['Lato', 'Open Sans'];

  config.font_names = 'sans serif';

  for(var i = 0; i<myFonts.length; i++){
     config.font_names = config.font_names+';'+myFonts[i];
     myFonts[i] = 'http://fonts.googleapis.com/css?family='+myFonts[i].replace(' ','+');

     //assuming you use jquery
     $("head").append("<link rel='stylesheet' href='"+ myFonts[i] +"'>");
  }
}
