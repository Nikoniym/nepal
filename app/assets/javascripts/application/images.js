Dropzone.autoDiscover = false;

$(document).ready(function(){
    // disable auto discover


    if ($('.dropzone').length) {
        $("div.dropzone").dropzone({url: "/file/post"});
        // other code here




        var dropzone = new Dropzone(".dropzone", {
            maxFilesize: 256, // set the maximum file size to 256 MB
            paramName: "image[image]", // Rails expects the file upload to be something like model[field_name]
            addRemoveLinks: false // don't show remove links on dropzone itself.
        });

        dropzone.on("success", function (file) {
            this.removeFile(file);
            $.getScript("");
        });
    }



});
