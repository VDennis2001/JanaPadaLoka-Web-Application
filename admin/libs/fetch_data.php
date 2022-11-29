<?php
function fetch_user_communities($username){
    require("db_connect.php");
    $sql = " SELECT community_table.community_id, community_table.Community_Name, community_table.address_Area FROM community_table LEFT OUTER JOIN user_community_table ON community_table.community_id = user_community_table.community_id where user_community_table.user_name = '$username' OR community_table.user_name = '$username';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {
            return $result;
        }

    } 
    return 0;  
}




function get_giveback($category)
{
    require("db_connect.php");


    $sql = "SELECT giveback.username, giveback.title, giveback.phone_number, giveback.item_description ,giveback.item_photo, community_table.Community_Name 
    FROM giveback INNER JOIN community_table ON community_table.community_id = giveback.community_id where category = '$category';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {
            $count = 0;
            foreach ($result as $items => $item) {
                if ($count == 0)
                    echo '<div class="active item gives-item">';
                else
                    echo '<div class="item gives-item">';

                echo '<div class="row row-give">
                <div class="col-lg-6 d-flex give-img-div carousel-left" data-aos="fade-right"
                    data-aos-delay="100">
                    <img src="data:image/jpg;base64,' . base64_encode($item['item_photo']) . '"
                        class="img-fluid giveimg" alt="">
                </div>
                <div class="col-lg-46 pt- pt-lg-0 content carousel-right" data-aos="fade-left"
                    data-aos-delay="100">
                    <center>
                        <h2>' . $item['title'] . '</h2>
                    </center>
                    <p>' . $item['item_description'] . '</p>

                    <p class="bottom-left">
                        <label>Posted in </label>: ' . $item['Community_Name'] . '<br>
                        <label>Owned By </label>: ' . $item['username'] . ' <br>
                        <label>Contact No </label>: ' . $item['phone_number'] . '
                    </p>
                </div>
            </div>
        </div>';

                $count = $count + 1;
            }
        }
    }
}
function get_all_interests()
{
    require("db_connect.php");

    $sql = "SELECT * FROM all_interests;";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {

            foreach ($result as $items => $item) {

                echo '<div class="enter" data-aos="zoom-in" data-aos-delay="200">
                <div class="enter-container">
                    <img src="includes/assets/img/Giveback/' . $item['img_href'] . '" alt="' . $item['title'] . '" />
                    <h4 class="title">
                        <a href="" class="title-links">' . $item['title'] . '</a>
                    </h4>
                    <h4 class="title">
                        <a href="add_interest.php?join=' . $item['interest_id'] . '" class="title-links join">JOIN</a>
                    </h4>
                </div>
            </div>';
            }
        }
    }
}
function get_my_interests($username)
{
    require("db_connect.php");

    $sql = "SELECT * FROM user_interests where user_name='$username';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {

            foreach ($result as $items => $item) {

                echo '<div class="enter" data-aos="zoom-in" data-aos-delay="200">
                <div class="enter-container">
                    <img src="includes/assets/img/Giveback/' . $item['img_href'] . '"  alt="' . $item['interest_title'] . '">
                    <h4 class="title">
                        <a href="commonInterest.php?id='. $item['interest_id'] . '&interest=' . $item['interest_title'] . '" class="title-links">' . $item['interest_title'] . '</a>
                    </h4>
                </div>
            </div>';
            }
        } else echo " ";
    }
}

function get_most_popular()
{
    require("db_connect.php");

    $sql = "SELECT * FROM all_interests where joined > 0 order by joined ASC limit 4;";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {

            foreach ($result as $items => $item) {

                echo '<div class="enter" data-aos="zoom-in" data-aos-delay="200">
                <div class="enter-container">
                    <img src="includes/assets/img/Giveback/' . $item['img_href'] . '" alt="' . $item['title'] . '" />
                    <h4 class="title">
                        <a href="" class="title-links">' . $item['title'] . '</a>
                    </h4>
                    <h4 class="title">
                        <a href="add_interest.php?join=' . $item['interest_id'] . '" class="title-links join">JOIN</a>
                    </h4>
                </div>
            </div>';
            }
        }
    }
}

function get_common_people($interest)
{
    require("db_connect.php");

    $sql = "SELECT * FROM user_interests where interest_title='$interest';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {

            foreach ($result as $users => $user) {

                echo '<tr>
                <td>
                    <b>' . $user['fname'] . ' ' . $user['lname'] . '</b>
                </td>
                <td class="tlevel">' . $user['email'] . '</td>
            </tr>';
            }
        }
    }
}


function get_post_comments($post_id){
    require("db_connect.php");

    $sql = "SELECT * FROM post_comments where post_id = ".$post_id.";";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {
            foreach ($result as $cmts => $cmt) {
                $timeStamp = new DateTime($cmt["time_stamp"]);  

                echo '<li class="comment">
                <div class="comment-body">
                    <div class="comment-heading">
                        <span>
                            <h4 class="user">'.$cmt["user_name"].'</h4>
                            <h5 class="time">'.date_format($timeStamp,"M d, Y, h:i a.").'</h5>
                        </span>
                    </div>
                    <p>'.$cmt["comment"].'</p>
                </div>
            </li>';
            }
        }
        else echo " ";
    }
}


function get_posts($id,$category)
{
    require("db_connect.php");

    $sql = "SELECT * FROM posts where category_id='$id' AND category ='$category';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {
            foreach ($result as $posts => $post) {
               $sql = "SELECT profile_image, first_name, last_name from user_details where user_name = '".$post["user_name"]."'";
               $user = mysqli_fetch_assoc(mysqli_query($conn,$sql));

               $sql = "SELECT * FROM post_comments where post_id = ".$post["post_id"].";";
               if ($result1 = mysqli_query($conn, $sql)) 
                   $numOfCmts = mysqli_num_rows($result1);

                $timeStamp = new DateTime($post["time_stamp"]);  
                echo '<li class="activity" data-aos="zoom-in" data-aos-delay="200">
                <div class="activity__list__header">
                    <img src="data:image/jpg;base64,'.base64_encode($user["profile_image"]).'" alt="img" style="background-color: black;" />
                    <a href="#">'.$user["first_name"].' '.$user["last_name"].'</a><br>
                    <a href="#">'.$post["user_name"].'</a><br><br>
                    <a href="#" class="post-title">'.$post["post_title"].'</a>
                </div>
            
                <div class="activity__list__body entry-content">
            
                    <p>
                    '.$post["post_msg"].'<br>
                        <img class="feeds-img" src="data:image/jpg;base64,'.base64_encode($post["post_img"]).'">
                    </p>
            
            
                </div>
            
                <div class="activity__list__footer">
                    <i class="fa fa-comments" style="cursor: pointer;" onclick="showcomment(this.id)">&nbsp
                        '.$numOfCmts.'</i>
                    <span> <i class="fa fa-clock"></i>'.date_format($timeStamp,"M d, Y, h:i a.").'</span>
                </div>
            
                <div class="post-footer" id="comments-section">
                    <div class="input-group">
                        <form method="post" action="">
                            <div class="input-group">
                                <input type="hidden" name="post_id" value="'.$post["post_id"].'">
                                <p><label for="id_body">Comment:</label> <textarea name="comment" cols="40" rows="1" required id="id_body"></textarea><input type="hidden" name="name" id="id_name"><input type="hidden" name="post" id="id_post"></p>
                                <button type="submit" class="btn "><i class="fa fa-edit"></i></button>
            
                            </div>
                        </form>
            
                    </div>
            
                    <ul class="comments-list">';
                    get_post_comments($post["post_id"]);
            
                   echo  '</ul>
            
                </div>
            </li>';
            }
        }
        else echo '<div style="height: 500px !important;">
        <h2> No Post Yet..</h2>
    </div>';
        
    }

}
function get_calendar_posts($id,$category)
{
    require("db_connect.php");

    $sql = "SELECT * FROM calendar_posts where community_id='$id' AND category ='$category';";
    if ($result = mysqli_query($conn, $sql)) {
        $rowcount = mysqli_num_rows($result);
        if ($rowcount != 0) {
            foreach ($result as $posts => $post) {

                echo '<div class="bulletin-modal-content">
                <h2>'.$post['post_title'].'</h2>
                <a style="color:black" href="/cdn-cgi/l/email-protection#f380819696859a809b9d86c6c1c6c1c6b3949e929a9fdd909c9e">
                    <h5>'.$post['user_name'].'</h5>
                </a>
                <p>'.$post['post_msg'].'</p>
                <hr>
            </div>';
            }
        }
        else echo '';
        
    }

}

?>