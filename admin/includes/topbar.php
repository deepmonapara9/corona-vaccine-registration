      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../admin/index.php" style="text-decoration: none;">
              <div class="sidebar-brand-icon rotate-n-15" style="font-size: x-large;">
                  <i class=" fas fa-virus"></i>
              </div>
              <div class="mx-2" style="color: black; font-size: x-large;">COVID REGISTRY</div>
          </a>

          <div class="topbar-divider d-none d-sm-block"></div>

          <!-- dashboard -->
          <a class="nav-link" href="dashboard.php">
              <i class="fas fa-fw fa-tachometer-alt"></i>
              <span>Dashboard</span></a>

          <div class="dropdown">
              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                  <i class="fas fa-fw fa-users"></i>
                  <span>Phlebotomist</span>
              </a>
              <div id="collapseOne" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="bg-white py-2 collapse-inner rounded">
                      <a class="dropdown-item" href="add-phlebotomist.php">Add</a>
                      <a class="dropdown-item" href="manage-phlebotomist.php">Manage</a>
                  </div>
              </div>
          </div>

          <!-- testing -->
          <div class="dropdown">
              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  <i class="fas fa-fw fa-virus"></i>
                  <span>Testing</span>
              </a>
              <div id="collapseTwo" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="bg-white py-2 collapse-inner rounded">
                      <a class="dropdown-item" href="new-test.php">New</a>
                      <a class="dropdown-item" href="assigned-test.php">Assigned</a>
                      <a class="dropdown-item" href="ontheway-samplecollection-test.php">On the Way for<br /> Sample Collection</a>
                      <a class="dropdown-item" href="sample-collected-test.php">Sample Collected</a>
                      <a class="dropdown-item" href="samplesent-lab-test.php">Sent to lab</a>
                      <a class="dropdown-item" href="reportdelivered-test.php">Report Delivered</a>
                      <a class="dropdown-item" href="all-test.php">All Tests</a>
                  </div>
              </div>
          </div>

          <!-- report -->
          <div class="dropdown">
              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                  <i class="fas fa-fw fa-file"></i>
                  <span>Report</span>
              </a>
              <div id="collapseThree" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="bg-white py-2 collapse-inner rounded">
                      <a class="dropdown-item" href="bwdates-report-ds.php">B/w Dates Report</a>
                      <a class="dropdown-item" href="search-report.php">Search Report</a>
                  </div>
              </div>
          </div>

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <?php if ($_SESSION['aid']) : ?>

              <!-- Topbar Navbar -->
              <ul class="navbar-nav ml-auto">

                  <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                  <li class="nav-item dropdown no-arrow d-sm-none">
                      <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-search fa-fw"></i>
                      </a>
                      <!-- Dropdown - Messages -->
                      <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                          <form class="form-inline mr-auto w-100 navbar-search">
                              <div class="input-group">
                                  <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                  <div class="input-group-append">
                                      <button class="btn btn-primary" type="button">
                                          <i class="fas fa-search fa-sm"></i>
                                      </button>
                                  </div>
                              </div>
                          </form>
                      </div>
                  </li>
                  <?php $query = mysqli_query($con, "select * from tbltestrecord where ReportStatus is null");
                    $count = mysqli_num_rows($query);


                    ?>

                  <!-- Nav Item - Alerts -->
                  <li class="nav-item dropdown no-arrow mx-1">
                      <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-bell fa-fw"></i>
                          <!-- Counter - Alerts -->
                          <span class="badge badge-danger badge-counter"><?php echo $count; ?></span>
                      </a>
                      <!-- Dropdown - Alerts -->
                      <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                          <h6 class="dropdown-header">
                              Alerts Center
                          </h6>
                          <?php if ($count > 0) {
                                while ($row = mysqli_fetch_array($query)) {
                            ?>
                                  <a class="dropdown-item d-flex align-items-center" href="test-details.php?tid=<?php echo $row['id']; ?>&&oid=<?php echo $row['OrderNumber']; ?>">
                                      <div class="mr-3">
                                          <div class="icon-circle bg-primary">
                                              <i class="fas fa-file-alt text-white"></i>
                                          </div>
                                      </div>
                                      <div>
                                          <div class="small text-gray-500"><?php echo $row['RegistrationDate']; ?></div>
                                          <span class="font-weight-bold">A new test received # <?php echo $row['OrderNumber']; ?></span>
                                      </div>
                                  </a>
                              <?php }
                            } else { ?>
                              <p style="color:red">No record found</p>
                          <?php } ?>

                          <a class="dropdown-item text-center small text-gray-500" href="new-test.php">Show All Alerts</a>
                      </div>
                  </li>



                  <div class="topbar-divider d-none d-sm-block"></div>

                  <!-- Nav Item - User Information -->
                  <li class="nav-item dropdown no-arrow">

                      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <?php
                            //Fetching admin Name
                            $adid = $_SESSION['aid'];
                            $ret1 = mysqli_query($con, "select AdminName from tbladmin where ID='$adid'");
                            while ($row1 = mysqli_fetch_array($ret1)) {

                            ?>

                              <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $row1['AdminName']; ?></span>
                          <?php } ?>
                          <img class="img-profile rounded-circle" src="img/covid-tms.png">
                      </a>
                      <!-- Dropdown - User Information -->
                      <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                          <a class="dropdown-item" href="profile.php">
                              <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                              Profile
                          </a>
                          <a class="dropdown-item" href="change-password.php">
                              <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                              Change Password
                          </a>

                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                              <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                              Logout
                          </a>
                      </div>
                  </li>

              </ul>
          <?php endif; ?>

      </nav>