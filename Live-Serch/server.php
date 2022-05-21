<?php
include('database/config.php');


if (isset($_POST['search'])) {

    $Name = $_POST['search'];
    $Query = "SELECT postTitle FROM post WHERE postTitle LIKE '%$Name%' LIMIT 5";
    $ExecQuery = MySQLi_query($con, $Query);
    //Creating unordered list to display result.
    echo '
<ul>
   ';
    //Fetching result from database.
    while ($Result = MySQLi_fetch_array($ExecQuery)) {
?>
        <!-- Creating unordered list items.
        Calling javascript function named as "fill" found in "script.js" file.
        By passing fetched result as parameter. -->
        <li onclick='fill("<?php echo $Result['Name']; ?>")'>
            <a>
                <!-- Assigning searched result in "Search box" in "search.php" file. -->
                <?php echo $Result['postTitle']; ?>
        </li></a>
        <!-- Below php code is just for closing parenthesis. Don't be confused. -->
<?php
    }
}
