$(document).ready(function(){
    var val = 1
    $('#appbtn1').on('click',function(){
        val = val + 1
        $("form").append('<div class="form-outline mb-4 col-md-5 text-center"><label class="form-label">File Name</label><input type="text" name="filename" class="form-control" placeholder="Enter file name"/></div><div class="form-outline mb-4 col-md-5 text-center"><label class="form-label">Attach File</label><input type="file" name="attachment" class="form-control" /></div><div class="form-outline mb-4 col-md-2 text-center"><label for="" style="color: transparent;">add new</label><i class="btn btn-primary " id="appbtn1">add new file</i></div>');
    });

    $('div[name="attach1"]').hide();
    $('div[name="attach2"]').hide();
    $('div[name="attach3"]').hide();
    $('div[name="attach4"]').hide();

    $('#btn1').on('click',function(){
        $('#attach1').show()
    })

    $('#btn2').on('click',function(){
        $('#attach2').show()
    })

    $('#btn3').on('click',function(){
        $('#attach3').show()
    })

    $('#btn4').on('click',function(){
        $('#attach4').show()
    })
})