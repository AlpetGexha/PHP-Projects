<?php  

require "PHPMailer/PHPMailerAutoload.php";

function smtpmailer($to, $from, $from_name, $subject, $body)
    {
        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->SMTPAuth = true; 
 
        $mail->SMTPSecure = 'ssl'; 
        $mail->Host = 'mail.alpetg.com';
        $mail->Port = 465;  
        $mail->Username = 'support@alpetg.com';
        $mail->Password = 'SUPERPASSWORD+++';   
   
   //   $path = 'reseller.pdf';
   //   $mail->AddAttachment($path);
   
        $mail->IsHTML(true);
        $mail->From="support@alpetg.com";
        $mail->FromName=$from_name;
        $mail->Sender=$from;
        $mail->AddReplyTo($from, $from_name);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->AddAddress($to);
        if(!$mail->Send())
        {
$result = "<div class='alert alert-danger alert-dismissible'>
   <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a> Please try again, an error occured, contact the admin</div>";            
   return $result; 
        }
        else 
        {
           $result = "<div class='alert alert-success alert-dismissible'>
   <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>Please Check Your Email Inbox or Spam folder!</div>";
            return $result;
        }
    }
    
    $to   = $email;
    $from = 'support@alpetg.com';
    $name = 'ViralSkill247';
    $subj = 'Reset Password';
    $msg = '
                   Hi,<br><br>
              
              In order to reset your password, please click on the link below:<br><br>
        <a href="http://localhost/registration/resetPassword.php?code='.$code.'"> Reset</a><br><br>
        or copy and paste the link below in a new tab <br><br>
            
              http://localhost/registration/resetPassword.php?code='.$code.' <br><br>

              Kind Regards,<br><br>
              ViralSkill247



    ';
    
    $result=smtpmailer($to,$from, $name ,$subj, $msg);
        
  ///https://github.com/iseenlab/PHPMailer/blob/master/mail.php
    //https://github.com/PHPMailer/PHPMailer/tree/5.2-stable

?>
