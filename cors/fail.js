function main() 
{
    console.log("main function");
    console.log("ajax request to the resource which will require cors enabled");
    $.ajax
    ({
        dataType: "html",
        url: "http://google.com",
        success: function(data) 
        {
            console.log("log response on success");
            console.log(data);
        }
    });
}
