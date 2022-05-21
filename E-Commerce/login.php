<?php 
    include('header.php'); 
    
    if(isset($_SESSION['is_loggedin'])) {
        header("Location: dashboard.php");
    }
    
    $errors = [];

    if(isset($_POST['login_btn'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        if(!empty($username) && !empty($password)) {
            $db = new CRUD;
            $results = $db->read('users', ['username' => $username]);
            foreach($results as $user) {
                if(password_verify($password, $user['password'])) {
                    $_SESSION['is_loggedin'] = true;
                    $_SESSION['username'] = $username;
                    header("Location: dashboard.php");
                }
            }

            $errors[] = "Username or/and password is incorrect!";
        } else {
            $errors[] = "Please fill all fields!";
        }
    }
?>

    <?php 
        if(isset($_GET['action']) && isset($_GET['status'])) {
            if($_GET['action'] == 'register' && $_GET['status'] == 1) {
                echo "You have been registered successfully :)";
                echo "<br />";
                echo "Please login in:";

                $username = $_SESSION['username'];
            }
        }
    ?>
    
    <?php if(count($errors)): ?>
    <div class="alert alert-danger" role="alert">
        <?= implode("<br />", $errors) ?>
    </div>
    <?php endif; ?>

    <h4>Login</h4>
    <form method="POST" action="<?= $_SERVER['PHP_SELF'] ?>" class="mt-4">
    <div class="row mb-3">
        <label for="username" class="col-sm-2 col-form-label">Username</label>
        <div class="col-sm-10">
        <input type="text" name="username" class="form-control" id="username" <?php if(!empty($username)): ?> value="<?= $username ?>" <?php endif; ?>>
        </div>
    </div>
    <div class="row mb-3">
        <label for="password" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
        <input type="password" name="password" class="form-control" id="password">
        </div>
    </div>
    <button type="submit" name="login_btn" class="btn btn-primary">Sign in</button>
    </form>
    


<?php include('footer.php'); ?>