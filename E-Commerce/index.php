<?php 
    include('header.php'); 

    // if(!isset($_SESSION['is_loggedin'])) {
    //     header("Location: 401.php");
    // }

    $db = new CRUD;
    $products = $db->read('products');

    if(isset($_GET['action']) && isset($_GET['id'])) {
        if($_GET['action'] == 'delete') {
            $db->delete('products', ['id' => $_GET['id']]);
            header("Location: dashboard.php");
        }
    }
?>

 <div class="d-flex">
    <?php if(count($products)) { ?>
        <?php foreach($products as $product) { ?>
        <div class="card w-25 m-2">
            <div class="card-body">
                <h3><?= $product['name'] ?></h3>
                <p><?= $product['name'] ?></p>
            </div>
            <div class="card-footer">
                <a href="">Add to cart</a>
            </div>
        </div>
        <?php } ?>
    <?php } else { ?>
        <p>0 Products</p>
    <?php } ?>
</div>



<?php include('footer.php'); ?>