# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
window.init_scanner = (btn)->
    btn = $(btn)
    btn.click (e)->
        e.preventDefault()
        console.log window.plugins.barcodeScanner

        window.plugins.barcodeScanner.scan (result)->
            console.log("We got a barcode\n" +
                  "Result: " + result.text + "\n" +
                  "Format: " + result.format + "\n" +
                  "Cancelled: " + result.cancelled)
            $('input#code').text(result.text)
            $('form#use_ticket').submit()
        , (error)->
            alert("Scanning failed: " + error)
