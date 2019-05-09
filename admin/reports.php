
<?php include 'header.php';?>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
       <?php include 'main_sidebar.php';?>

        <!-- top navigation -->
       <?php include 'top_nav.php';  error_reporting(0); ini_set('display_errors'); ?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main"> 
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">		

					<?php 
					include 'dbcon.php';

						$query1=mysqli_query($con,"select * from branch ORDER BY branch_name")or die(mysqli_error($con));
						while ($row=mysqli_fetch_array($query1)){
						$id=$row['branch_id'];?>
						<a href  = "page_reports.php?id=<?php echo $row['branch_id'];?>">
						<div class = "col-md-6 col-6-12 col-6">
							
							<div class = "panel panel-success">
								<div class = "panel-heading">
									<i class = "center fa fa-building"></i>
								</div>
								<div class = "panel-body"><img src="<?php echo $row['pic'];?>" height="50" width="50" align="right">
										<h1 class = ""><?php echo $row['branch_name'];?> </h1>

            
								</div>
							</div>
							
						</div>
						</a>
						<?php } ?>						
				</div>
				 
        <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Daily Weather Report <small>Sessions</small></h2>
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                          </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="temperature"> 
                          
                           
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-4">
                          <div class="weather-icon">
                            <h5><b> <?php echo date("l, d M, Y h:i a"); ?></b></h5> 
                            <canvas height="84" width="84" id="partly-cloudy-day"></canvas>
                          </div>
                        </div>
                        <div class="col-sm-8">
                          <div class="weather-text">
                             
                            <h3>Ibadan, Oyo State <br><i>Partly Cloudy Day</i></h3>
                          </div>
                        </div>
                      </div>
                      

                      <div class="clearfix"></div>

                      <div class="row weather-days">
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Mon</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b); ?></h3>
                            </div>
                        </div>
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Tue</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b); ?></h3>
                             </div>
                        </div>
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Wed</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b); ?></h3>
                           </div>
                        </div>
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Thu</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b); ?></h3>
                           </div>
                        </div>
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Fri</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b); ?></h3>
                           </div>
                        </div>
                        <div class="col-sm-2">
                          <div class="daily-weather">
                            <h2 class="day">Sat</h2>
                             <h3 class="degrees"> <?php $b = rand(25,35); echo($b);  $month = date('F');$precision = rand(0,4);?></h3>
                           </div>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>

                </div>
                 <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <h2> Prediction Report <small>Sessions</small></h2>
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                          </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="temperature"> 
                           <h4>The Daily Sales Prediction for, <?php echo date("l, d M, Y"); ?></h4> 
                       
                          </div>
                        </div>
                      </div>
                
               <?php 
                         
                          if ((($month == 'January') || ($month == 'February') || ($month == 'December') || ($month == 'March')) && ($precision < 5) ){?>
                            <h4 class="text-danger">There is likelihood of LOW sales turnout, students are on break</h4>
                            <?php
                          }else {
                           echo "<h4 class= 'text-success'>There is likelihood of HIGH sales turnout, students are in campus<h4>";
                              }

               ?>
          <!-- /.form group -->
          <form method="post" >
          <div class="form-group col-md-6">
            <label></label>

            <div class="input-group">
              <div class="input-group-addon">
              <i class="fa fa-calendar"></i>
              </div>
            <select class="form-control select2" name="month" tabindex="1" autofocus required>
              <option>January</option>
              <option>February</option>
              <option>March</option>
              <option>April</option>
              <option>May</option>
              <option>June</option>
              <option>July</option>
              <option>August</option>
              <option>September</option>
              <option>October</option>
              <option>November</option>
              <option>December</option>
                  
            </select>
          </div>
                <!-- /.input group -->
          </div>
          <div class="form-group col-md-5">
            <label></label>

            <div class="input-group">
              <div class="input-group-addon">
              <i class="fa fa-calendar"></i>
              </div>
            <select class="form-control select2" name="year" tabindex="1" required>
              
              <option>2018</option>
              <option>2019</option>
              <option>2020</option>
                  
            </select>
          </div>
                <!-- /.input group -->
          </div>
              <!-- /.form group --><br>
          <button type="submit" class="btn btn-primary" name="submit">Predict</button>
        </form>
        <?php
        if (isset($_POST['submit'])){
        $months=$_POST['month']; $year= $_POST['year'];
         if ((($months == 'January') || ($months == 'February') || ($months == 'December') || ($months == 'March')) && ($precision < 5) ){
            echo "<h4 class= 'text-danger'>The Sales Prediction for the".$months.",".$year."<h4>";
         
                          
          ?>
                            <h4 class="text-danger background-danger">There is likelihood of LOW sales turnout, students are on break</h4>
                            <?php
                          }else {
                            echo "<h4 class= 'text-success'>The Sales Prediction for ".$months.",".$year."<h4>";
                           echo "<h4 class= 'text-success'>There is likelihood of HIGH sales turnout, students are in campus<h4>";
                      
  }
}else{}
        ?>
        

                    </div>
                  </div>

                </div>

			</div>
        </div>		
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            UI Ventures | Sales Prediction System<br> Designed by: Tijani Abdulazeez Titilope (186150) <a href="#"></a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

	<?php include 'script.php'; ?>

	<?php include 'datatable_script.php';?>
           <?php
                          //declare(strict_types=1);
                          require_once '../vendor/autoload.php';

                          use Phpml\Classification\DecisionTree;
                          use Phpml\Classification\Ensemble\RandomForest;
                          use Phpml\Classification\NaiveBayes;
                          use Phpml\CrossValidation\StratifiedRandomSplit;
                          use Phpml\src\Dataset\Demo\SalesDataset;
                          use Phpml\Metric\Accuracy;

                          $dataset = new SalesDataset();
                          $split = new StratifiedRandomSplit($dataset);
                          

                          $classifier = new RandomForest();
                          $classifier->train($split->getTrainSamples(), $split->getTrainLabels());

                          $decision = $classifier->predict($split->getTestSamples());
                          echo($decision);
                        
               ?>
    <!-- /gauge.js -->
  </body>
</html>
