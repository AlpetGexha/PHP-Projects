<?php 
    include('header.php'); 

    if(!isset($_SESSION['is_loggedin'])) {
        header("Location: 401.php");
    }

    $db = new CRUD;
    $products = $db->read('products');

    if(isset($_GET['action']) && isset($_GET['id'])) {
        if($_GET['action'] == 'delete') {
            $db->delete('products', ['id' => $_GET['id']]);
            header("Location: dashboard.php");
        }
    }
?>

    <h3>Dashboard</h3>
    <?php if(count($products)) { ?>
        <table class="table table-bordered">
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Price</th>
            <th>Qty</th>
            <th>Sale</th>
            <th></th>
        </tr>
        <?php foreach($products as $product) { ?>
        <tr>
            <th><?= $product['id'] ?></th>
            <th><?= $product['name'] ?></th>
            <th><?= $product['price'] ?></th>
            <th><?= $product['qty'] ?></th>
            <th><?= $product['sale'] ?>%</th>
            <th>
                <a href="?action=delete&id=<?= $product['id'] ?>" 
                   class="btn btn-sm btn-danger" 
                   onclick="return confirm('Are you sure?')"
                >
                    Delete
                </a>
            </th>
        </tr>
        <?php } ?>
        </table>
    <?php } else { ?>
        <p>0 Products</p>
    <?php } ?>


<?php include('footer.php'); ?>