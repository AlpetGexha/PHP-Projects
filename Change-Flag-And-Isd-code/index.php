<?php

require 'config.php';
$sql = "SELECT `countries_id`, `countries_name`, `countries_iso_code`, `countries_isd_code` "
    . " FROM `countries` WHERE 1 "
    . " ORDER BY countries_name ASC";
try {
    $stmt = $DB->prepare($sql);
    $stmt->execute();
    $results = $stmt->fetchAll();
} catch (Exception $ex) {
    echo ($ex->getMessage());
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="http://www.thesoftwareguy.in/favicon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Shahrukh Khan">
    <title>Change country flags and Isd code - AlpetG</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <style>
        #country,
        #isd_code {
            height: 32px;
            border: 1px solid #000;
        }
    </style>
</head>

<body>
    <div id="container">
        <div id="body">
            <div class="mainTitle">Change country flags and Isd code</div>
            <article>
                <div class="height10"></div>
                <table>
                    <tr>
                        <td><img style="width:33px" id="cflag" src="" alt="" /></td>
                        <td style="width: 50%;">
                            <select name="country" id="country" style="max-width: 300px;" onchange="displayRecords(this.value);">
                                <option value="">Select</option>
                                <?php foreach ($results as $rs) { ?>
                                    <option value="<?php echo trim($rs["countries_iso_code"]); ?>"><?php echo trim($rs["countries_name"]); ?></option>
                                <?php } ?>
                            </select>
                        </td>
                        <td>
                            <div class="loader" style="width: 33px"></div>
                        </td>
                        <td><input type="text" id="isd_code" placeholder="ISD CODE" name="isd_code" value="" readonly=""></td>
                        <td style="width: 40%;">
                            <div id="cname"></div>
                        </td>
                    </tr>
                </table>
            </article>
            <div class="height30"></div>
        </div>
    </div>
    <script src="jquery-1.9.0.min.js"></script>
    <script type="text/javascript">
        // fetching records
        function displayRecords(country_iso_code) {
            var country_iso_code = $.trim(country_iso_code);
            if (country_iso_code.length > 0) {
                $.ajax({
                    type: "GET",
                    url: "getvalue.php",
                    data: "isocode=" + country_iso_code,
                    cache: false,
                    beforeSend: function() {
                        $('.loader').html('<img src="loader.gif" alt="" width="24" height="24"" >');
                    },
                    success: function(html) {
                        $("#results").html(html);
                        // parsing the json results
                        var parsedData = jQuery.parseJSON(html);
                        // resetting the values
                        $('#isd_code').val('');
                        $('#cflag').attr("src", "");
                        $('#cname').html('');
                        // checking if there are results or not
                        if (Object.keys(parsedData).length > 0) {
                            $('#isd_code').val($.trim(parsedData.c_isd));
                            $('#cflag').attr("src", "flags/" + $.trim(parsedData.c_iso) + ".png");
                            $('#cname').html($.trim(parsedData.c_name));
                        }
                        $('.loader').html('');

                    }
                });
            } else {
                // setting the default values
                $('#isd_code').val('');
                $('#cflag').attr("src", "");
                $('#cname').html('');
            }
        }
    </script>
</body>

</html>