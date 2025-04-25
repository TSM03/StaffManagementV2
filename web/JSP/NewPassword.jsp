<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reset Password</title>
    <link href="../CSS/register.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
    
    <div id="signup">
        <br />
        <h1>Reset Password</h1>
        <p style="font-size:20px; text-align: center; margin-top: 5px; margin-bottom:5px;">Please fill in the fields below</p>
        <hr>
        
        <form action="/NewPassword" method="post">
            <fieldset>
                <div class="label">
                    <label for="passwordInput">Password:</label>
                </div>
                <div class="input">
                    <input type="password" id="passwordInput" name="password" placeholder="Password" 
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br/>    
                    <div id="passwordMessage" style="display: none;">
                        <h3 style="font-size: 15px;">Password must contain the following:</h3>
                        <p id="letter" class="invalid" style="font-size: 13px;">&#10006; A <b>lowercase</b> letter</p>
                        <p id="capital" class="invalid" style="font-size: 13px;">&#10006; A <b>capital (uppercase)</b> letter</p>
                        <p id="number" class="invalid" style="font-size: 13px;">&#10006; A <b>number</b></p>
                        <p id="length" class="invalid" style="font-size: 13px;">&#10006; Minimum <b>8 characters</b></p>
                    </div>
                </div>
                
                <div class="label">
                    <label for="CpasswordInput">Confirm Password:</label>
                </div>
                <div class="input">
                    <input type="password" id="CpasswordInput" name="Cpassword" placeholder="Confirm Password" 
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br/>    
                    <div id="CpasswordMessage" style="display: none;">
                        <span class="CpasswordMessage"></span>
                    </div>
                    <br />
                    <br />
                </div>
                
                <button type="reset" 
                    style="border-radius:10px; background-color: rgb(253, 253, 214); color: black;
                    font-size: 15px; padding: 12px 20px; border: none; float:left;"
                    onmouseover="this.style.backgroundColor='black'; this.style.color='rgb(253, 253, 214)';"
                    onmouseout="this.style.backgroundColor='rgb(253, 253, 214)'; this.style.color='black';">
                    Reset
                </button>
                
                <button type="submit" style="border-radius:10px;">Submit</button>
            </fieldset>
        </form>
    </div>
    
    <!-- Password validation (Meet with requirement)-->
    <script>
        $(document).ready(function(){
            $('#passwordInput').on('keyup', function(){
                var password = $(this).val();

                var hasLowerCase = /[a-z]/.test(password);
                var hasUpperCase = /[A-Z]/.test(password);
                var hasNumber = /[0-9]/.test(password);
                var hasMinLength = password.length >= 8;

                function updateValidation(element, isValid) {
                    if (isValid) {
                        $(element).removeClass("invalid").addClass("valid").text("\u2714 " + $(element).text().substring(2));
                    } else {
                        $(element).removeClass("valid").addClass("invalid").text("\u2716 " + $(element).text().substring(2));
                    }
                }

                updateValidation('#letter', hasLowerCase);
                updateValidation('#capital', hasUpperCase);
                updateValidation('#number', hasNumber);
                updateValidation('#length', hasMinLength);

                // Check server-side validation only if all conditions pass
                if (hasLowerCase && hasUpperCase && hasNumber && hasMinLength) {
                    $.ajax({
                        type: 'POST',
                        url: '/CheckPassword',
                        data: { password: password },
                        success: function(response){
                            $('#passwordMessage span').remove(); // Remove previous messages
                            if (response.trim() !== "Valid") {
                                $('#passwordMessage').append('<span style="color:red;">? ' + response + '</span>');
                            }
                        },
                        error: function(){
                            $('#passwordMessage span').remove();
                            $('#passwordMessage').append('<span style="color:red;">Error validating password.</span>');
                        }
                    });
                }
            });

            // Show message box when focused
            $('#passwordInput').focus(function() {
                $('#passwordMessage').show();
            });

            // Hide message box when input is empty
            $('#passwordInput').blur(function() {
                if ($('#passwordInput').val() === '') {
                    $('#passwordMessage').hide();
                }
            });
        });
    </script>
    <!-- End of Password validation (Meet with requirement)-->

    <!-- Confirm Password validation (Must same with Password text field)-->
    <script>
        $(document).ready(function(){
            function validatePassword() {
                var password = $('#passwordInput').val();
                var confirmPassword = $('#CpasswordInput').val();

                if (confirmPassword.length > 0) { 
                    $('#CpasswordMessage').show(); // Ensure the message box is visible

                    if (confirmPassword !== password) {
                        $('#CpasswordMessage').html('<span style="color:red; font-size:13px;">Please reenter the same password to confirm password!</span>');
                        $('button[type="submit"]').prop('disabled', true);
                    } else {
                        $('#CpasswordMessage').html('<span style="color:green; font-size:13px;">Passwords match.</span>');
                        $('button[type="submit"]').prop('disabled', false);
                    }
                } else {
                    $('#CpasswordMessage').hide(); // Hide message if field is empty
                }
            }

            // Run validation when either field changes
            $('#passwordInput, #CpasswordInput').on('keyup', validatePassword);
        });
    </script>
    <!-- End of Confirm Password validation (Must same with Password text field)-->
    
</body>
</html>