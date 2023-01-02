$(document).ready(function(){
    var val = 1
    $('#appbtn1').on('click',function(){
        val = val + 1
        $("#here").append('<div class="form-outline mb-4 col-md-11 text-center"><label class="form-label">Attach File</label><input type="file" name="attachmentf" class="form-control" /></div><div class="form-outline mb-4 col-md-1 text-center"><label for=""></label><i class="btn btn-primary mt-2" id="appbtn1">add</i></div>');
    });
})