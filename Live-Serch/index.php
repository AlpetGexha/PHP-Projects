<?php
include 'server.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <title>Live Search using AJAX</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

</head>

<body>
    <!-- Search box. -->
    <input type="text" id="search" placeholder="Search" />
    <br>
    <br />
    <!-- Suggestions will be displayed in below div. -->
    <div id="display"></div>


    <style>
        a:hover {
            cursor: pointer;
            background-color: yellow;
        }
    </style>
    <script>
        //Getting value from "ajax.php".
        function fill(Value) {
            //Assigning value to "search" div in "search.php" file.
            $('#search').val(Value);
            //Hiding "display" div in "search.php" file.
            $('#display').hide();
        }
        $(document).ready(function() {
            //On pressing a key on "Search box" in "search.php" file. This function will be called.
            $("#search").keyup(function() {
                //Assigning search box value to javascript variable named as "name".
                var name = $('#search').val();
                //Validating, if "name" is empty.
                if (name == "") {
                    //Assigning empty value to "display" div in "search.php" file.
                    $("#display").html("");
                }
                //If name is not empty.
                else {
                    //AJAX is called.
                    $.ajax({
                        //AJAX type is "Post".
                        type: "POST",
                        //Data will be sent to "ajax.php".
                        url: "server.php",
                        //Data, that will be sent to "ajax.php".
                        data: {
                            //Assigning value of "name" into "search" variable.
                            search: name
                        },
                        //If result found, this funtion will be called.
                        success: function(html) {
                            //Assigning result to "display" div in "search.php" file.
                            $("#display").html(html).show();
                        }
                    });
                }
            });
        });
    </script>
</body>

</html>