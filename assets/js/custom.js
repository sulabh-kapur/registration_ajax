$(document).ready(function () {
getUserList();



   
    let id ='';
    let f_name = '';
    let l_name = '';
    let email = '';
    let pwd = '';
    let postal = '';
    let address = '';
    let error_count = 0;

    $(document).on('click','.view-more-button',function(){
        let id = $(this).data('id');
        jQuery('#myViewModal').modal('show');

        $('#registrationform1').submit (function(e){


        $.ajax({

            type : 'POST',
            url : 'http://localhost/app_registration_ajax/server/editserver.php',
            data:{'user_id':id},
            success:function(data){
                let response = jQuery.parseJSON(data);
                if(response.is_success){

                    $('.f_name').val(response.data.f_name);           

                }



            }
           
           
        });

        });

    });


    $('.f_name').change(function () {
        f_name = $(this).val();


    });

    $('.l_name').change(function () {
        l_name = $(this).val();

    });

    $('.email').change(function () {
        email = $(this).val();

    });


    $('.pwd').change(function () {
        pwd = $(this).val();

    });

    $('.postal').change(function () {
        postal = $(this).val();

    });

    $('.address').change(function () {
        address = $(this).val();


    });


    $("#registrationform").submit(function (e) {
        e.preventDefault();
       
        

        $('.success').html('');
        $('.success').hide();

        $('.error').html('');
        $('.error').hide();
        
        // if (f_name == '') {
        //     $('.error-f_name').html('First name is required');
        //     $('.error-f_name').show();
        //     error_count = error_count+1;
        // } 

        // if (l_name == '') {
        //     $('.error-l_name').html('Last name is required');
        //     $('.error-l_name').show();
        //     error_count = error_count+1;
            
        // } 

        // if (email == '') {
        //     $('.error-email').html('Email is required');
        //     $('.error-email').show();
        //     error_count = error_count+1;
            
        // } 

        // if (pwd == '') {
        //     $('.error-pwd').html('Password is required');
        //     $('.error-pwd').show();
        //     error_count = error_count+1;
            
        // } 

        // if (postal == '') {
        //     $('.error-postal').html('Postal Code is required');
        //     $('.error-postal').show();
        //     error_count = error_count+1;
        // } 

        // if (address == '') {
        //     $('.error-address').html('Address is required');
        //     $('.error-address').show();
        //     error_count = error_count+1;
            
        // } 

        // if(error_count>0){
        //     return false;  
        // } 
        // console.log(error_count>0);

        $.ajax({

            type:'POST',
            url : 'http://localhost/app_registration_ajax/server/server.php',
            data:{'f_name':f_name,'l_name':l_name,'email':email,'pwd':pwd,'postal':postal,'address':address},
            success:function(data){
                let response = jQuery.parseJSON(data);

                if(response.is_success){
                    $('.success').html(response.message);
                    $('.success').show();
                    getUserList();
                $('#registrationform').trigger("reset");
                   
                }else{
                jQuery.each(response.error, function (key, value) {

                    if(key == 'f_name'){
                        $('.error-f_name').html(value);
                        $('.error-f_name').show();

                    }

                    if(key == 'l_name'){
                        $('.error-l_name').html(value);
                        $('.error-l_name').show();

                    }

                    if(key == 'email'){
                        $('.error-email').html(value);
                        $('.error-email').show();

                    }

                    if(key == 'pwd'){
                        $('.error-pwd').html(value);
                        $('.error-pwd').show();

                    }

                    if(key == 'postal'){
                        $('.error-postal').html(value);
                        $('.error-postal').show();

                    }

                    if(key == 'address'){
                        $('.error-address').html(value);
                        $('.error-address').show();

                    }
                    
                });

                $('.error-email').html(response.msg);
                $('.error-email').show();
                
                  
                }
                
            }


        });
       

    });
    
    function getUserList(){
        let id ='';
    let f_name = '';
    let l_name = '';
    let email = '';
    let pwd = '';
    let postal = '';
    let address = '';
       $.ajax({

            type : 'GET',
            url : 'http://localhost/app_registration_ajax/server/userlist.php',
            data:{'id':id,'f_name':f_name,'l_name':l_name,'email':email,'postal':postal,'address':address},
            success:function(data){
                let response = jQuery.parseJSON(data);
                if(response.is_success){
                    let html = '';
                    jQuery.each(response.list, function (key, value) {
                        html = html + '<tr><td>'+value.f_name+'</td><td>'+value.l_name+'</td><td>'+value.email+'</td><td>'+value.postal+'</td><td>'+value.address+'</td><td>'+'<button class="view-more-button" data-id='+value.id+'>View More</button>'+'</td></tr>'
                    });

                    
                    
                    jQuery('#tableRecord').html(html);

                }
            }
           
       });

      
    }

            

});
        








