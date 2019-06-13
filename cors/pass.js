function main() 
{
    console.log("main function");
    console.log("ajax request to the resource which does not require cors enabled");
    $.ajax
    ({
        dataType: "json",
        url: "https://us-central1-mabl-dev.cloudfunctions.net/corsTestAnyOrigin",
        success: function(data) 
        {
            console.log("log response on success");
            console.log(data);
        }
    });
}
