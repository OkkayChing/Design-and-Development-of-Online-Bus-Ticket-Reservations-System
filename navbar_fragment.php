<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
    <a class="brand" href="#">
  
</a>
      

<div class="btn-group pull-right">
  <button class="btn btn-success">
    <?php if(isset($_SESSION['user'])) { ?>
<p>Welcome <?php echo $_SESSION['user']; ?></p>
<? } 
else
{
?>
<a href="login.php">Login</a>
<ul class="dropdown-menu">
    <!-- dropdown menu links -->
    <li><a href="#k-modal" role="button" data-toggle="modal">Launch demo modal</a></li>
              <li class="divider"></li>
              <li><a href="#">Sign Out</a></li>
  </ul>
<? }?>
</button>
</div>

<div class="nav-collapse">
            <ul class="nav">
            <li class="divider-vertical"></li>
              <li><a href="home.php"><i class="icon-home icon-white" id="k-menu-icon"></i> Home</a></li>
              <li class="divider-vertical"></li>
              <li><a href="qsearch.php"><i class="icon-wrench icon-white" id="k-menu-icon"></i>Search</a></li>
              <li class="divider-vertical"></li>
			  <li><a href="book_ticket.php"><i class="icon-wrench icon-white" id="k-menu-icon"></i> Book Ticket</a></li>
              <li class="divider-vertical"></li>
			   <li><a href="<?php echo 'show_booked1.php';?>"><i class="icon-wrench icon-white" id="k-menu-icon"></i>See Booked Seat</a></li>
              <li class="divider-vertical"></li>
			   <li><a href="sign_up.php"><i class="icon-user icon-white" id="k-menu-icon"></i> Register</a></li>
              <li class="divider-vertical"></li>
			  
			   <li><a href="term_and_condition.php"><i class="icon-user icon-white" id="k-menu-icon"></i> Term and Condition</a></li>
              <li class="divider-vertical"></li>
              
			   <li><a href="about_us.php"><i class="icon-user icon-white" id="k-menu-icon"></i>About us</a></li>
              <li class="divider-vertical"></li>
              <?php if(isset($_SESSION['user'])) { ?>
              <li><a href="logout.php"><i class="icon-user icon-white" id="k-menu-icon"></i> Log out</a></li>
              <li class="divider-vertical"></li>
              <? } ?>
            </ul>
          </div><!--/.nav-collapse --> 

    </div>
  </div>
</div>