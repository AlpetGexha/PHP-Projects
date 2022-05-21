<?php
error_reporting(E_ALL & ~E_NOTICE);
ini_set('post_max_size', '64M');
ini_set('upload_max_filesize', '64M');

require_once 'common_functions.php';

if (isset($_POST["sub"])) {
    $msg = "";
    if (count($_FILES["user_files"]) > 0) {
        $folderName = "uploads/";
        $counter = 0;

        for ($i = 0; $i < count($_FILES["user_files"]["name"]); $i++) {

            if ($_FILES["user_files"]["name"][$i] <> "") {

                $ext = strtolower(end(explode(".", $_FILES["user_files"]["name"][$i])));
                $filePath = $folderName . rand(10000, 990000) . '_' . time() . '.' . $ext;

                if (!move_uploaded_file($_FILES["user_files"]["tmp_name"][$i], $filePath)) {
                    $msg .= "Failed to upload" . $_FILES["user_files"]["name"][$i] . ". <br>";
                    $counter++;
                }
            }
        }

        $msg = ($counter == 0) ? successMessage("Files uploaded Successfully") : errorMessage($msg);
    } else {
        $msg = errorMessage("You must upload atleast one file");
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--iOS/android/handheld specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="description" content="Upload multiple files with php">
    <meta name="keywords" content="Upload multiple files with php">
    <meta name="author" content="Shahrukh Khan">
    <title>Upload multiple files with php </title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <style>
        .files {
            height: 30px;
            margin: 10px 10px 0 0;
            width: 250px;
        }

        .add {
            font-size: 14px;
            color: #EB028F;
            border: none;
        }

        .rem a {
            font-size: 14px;
            color: #f00;
            border: none;
        }

        .submit {
            width: 100px;
            height: 30px;
            background: #000;
            color: #fff;
        }
    </style>
    <script src="jquery-1.9.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".add").click(function() {
                $('<div><input class="files" name="user_files[]" type="file" ><span class="rem" ><a href="javascript:void(0);" >Remove</span></div>').appendTo(".contents");
            });
            $('.contents').on('click', '.rem', function() {
                $(this).parent("div").remove();
            });

        });
    </script>
</head>

<body>
    <div id="container">
        <div id="body">
            <div class="mainTitle">Upload multiple files with php</div>
            <div class="height20"></div>
            <article>
                <?php echo $msg; ?>
                <div class="height20"></div>
                <form name="f" action="index.php" method="post" enctype="multipart/form-data">
                    <div style="width: 380px; margin: 0 auto;">
                        <fieldset>
                            <legend>Demo1</legend>
                            Attach multiple Files:
                            <input class="files" name="user_files[]" type="file" multiple="multiple">
                            <div class="height10"></div>
                            <div><input type="submit" class="submit" name="sub" /> </div>
                        </fieldset>
                </form>
                <div class="height10"></div>
                <div style="width: 380px; margin: 0 auto;">
                    <form name="f" action="index.php" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <legend>Demo2</legend>

                            <input class="files" name="user_files[]" type="file"><span><a href="javascript:void(0);" class="add">Add More</a></span>
                            <div class="contents"></div>
                            <div class="height10"></div>
                            <div><input type="submit" class="submit" name="sub" /> </div>
                        </fieldset>
                    </form>
                </div>
            </article>
        </div>

</body>

</html>