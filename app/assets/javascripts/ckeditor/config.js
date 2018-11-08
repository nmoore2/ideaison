CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_Full =
  [
  	['Bold', 'Italic', 'HorizontalRule', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink','Source', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'RemoveFormat' ],
    { name: 'styles', items: [ 'Format', 'FontSize' ] },
  ];

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline",  "Strike",  "-",  "Subscript",  "Superscript"],
  ];
  config.toolbar = "Full";
  config.height = 400;


  // ... rest of the original config.js  ...
}
