var main = function(){
    // alert("hello body! nice to meeting you!");
    // alert("it is the first time you run this, I hope you enjoy it!");

    // init caculator
    $("#cac-input").keypress(function(e){
        if (e && e.keyCode == 13){
            count();
        }
    });

    $("#cac-submit").click(count);

    var count = function(){
        console.log("fuck");
        value = $('#cac-input').value();
        result = eval(value);
        $('#result').text(result);
    }

    $("#scan_btn").click( function(){
        window.plugins.barcodeScanner.scan( function(result) {
            alert("We got a barcode\n" +
                  "Result: " + result.text + "\n" +
                  "Format: " + result.format + "\n" +
                  "Cancelled: " + result.cancelled);
        }, function(error) {
            alert("Scanning failed: " + error);
        }
        );
    });
}

main();