<?php
session_start();
if (isset($_SESSION['user'])) {
    ?>
    <?php
    require_once ("header.php");
    require_once ("dao.php");
    require_once ("utility.php");
    ?>
    <?php
    if (isset($_GET['saved'])) {
        ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php
    } else if (isset($_GET['failed'])) {
        ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Error</strong> 
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php
    }





    ?>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>profile</th>
                    <th>admission_id</th>
                   
                    <th>city</th>
                    <th>aadhaarfront</th>
                    <th>aadhaarback</th>
                    <th>view</th>
                    <th>edit</th>
                    <th>delete</th>
                
                  
              
                </tr>
            </thead>
            <tbody>
                <?php
                $table = "trainer";
             
                $rows=fetchAll(runAnyQuery("select * from $table "));

                for ($i = 0; $i < count($rows); $i++) {
                    // print_r($rows[$i]['name']);
                    ?>
                    <tr>
                        <td>  <?php echo $rows[$i]['id']; ?></td>
                        <td>

                            <h5><?php echo $rows[$i]['name']; ?></h5>
                            <img src="uploads/<?php echo $rows[$i]['profile']; ?>" alt="" width="70">
                        </td>
                      
                        <td>
                            <?php echo $rows[$i]['mobile']; ?>
                        </td>
                     
                        <td>
                            <?php echo $rows[$i]['city']; ?>
                        </td>
                        <td>
                            <img src="uploads/<?php echo $rows[$i]['aadharfront']; ?>" alt="" width="70">
                        </td>
                        <td>
                            <img src="uploads/<?php echo $rows[$i]['aadharback']; ?>" alt="" width="70">

                        </td>
                        <td><a href="viewtrainerprofile.php?view=<?php echo $rows[$i]['id']; ?>"
                                class="btn btn-primary">View</a></td>
                        <td><a href="edit_trainer_details.php?edit=<?php echo $rows[$i]['id']; ?>"
                                class="btn btn-warning">Edit</a></td>
                        <td><a href="trainer_controller.php?del=<?php echo $rows[$i]['id']; ?>"
                                class="btn btn-danger">Delete</a></td>
                       


                    </tr>
                    <?php
                }
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <th>id</th>
                    <th>profile</th>
                    <th>admission_id</th>
                 
                    <th>city</th>
                    <th>aadhaarfront</th>
                    <th>aadhaarback</th>
                    <th>view</th>
                    <th>edit</th>
                    <th>delete</th>
               
                   
                </tr>
            </tfoot>
        </table>
    </div>


    <?php require_once ("footer.php"); ?>
<?php
} else {
    header('location:login.php?error=please login in first');
}
?>