<!DOCTYPE html>
<html dir="ltr" lang="en">
  <head>
    <?php $this->load->view('admin/_partials/header.php'); ?>
  </head>

  <body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
      <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
      </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div
      id="main-wrapper"
      data-layout="vertical"
      data-navbarbg="skin5"
      data-sidebartype="full"
      data-sidebar-position="absolute"
      data-header-position="absolute"
      data-boxed-layout="full"
    >
      <!-- ============================================================== -->
      <!-- Topbar header - style you can find in pages.scss -->
      <!-- ============================================================== -->
      <header class="topbar" data-navbarbg="skin5">
      <?php $this->load->view('admin/_partials/navbar.php'); ?>
      </header>
      <!-- ============================================================== -->
      <!-- End Topbar header -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
          <!-- Sidebar navigation-->
          <?php $this->load->view('admin/_partials/sidebar.php'); ?>
          
          <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
      </aside>
      <!-- ============================================================== -->
      <!-- End Left Sidebar - style you can find in sidebar.scss  -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper  -->
      <!-- ============================================================== -->
      <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
          <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
              <h4 class="page-title">Dashboard</h4>
              <div class="ms-auto text-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                      Library
                    </li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
          <!-- ============================================================== -->
          <!-- Sales Cards  -->
          <!-- ============================================================== -->
          
          <!-- ============================================================== -->
          <!-- Sales chart -->
          <!-- ============================================================== -->
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <div class="d-md-flex align-items-center">
                    <div>
                      <h4 class="card-title">Pilih Paket</h4>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                      


                    
                        <form class="form-horizontal" action="" method="post">
                            <div class="card-body">
                                
                                <div class="form-group row">
                                    <label
                                        for="fname"
                                        class="col-sm-3 text-end control-label col-form-label"
                                        ></label>
                                    <div class="col-sm-9">
                                        
                                    </div>    
                                </div>
                                                    
                            </div>
                    




                            <div class="card-body">
                            <div class="table-responsive">
                                <table
                                id="zero_config"
                                class="table table-striped table-bordered"
                                >
                                <thead>
                                    <tr>
                                    <th>No. Paket</th>
                                    <th>Destinasi</th>
                                    <th>Kisaran Biaya</th>     
                                    <th>pilihan</th>                               
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr>
                                        <td>1</td>
                                        <td>Penangkaran Rusa Maliran, Candi Penataran, Kebun Kopi Karanganyar, Gunung Kelud</td>
                                        <td>Rp. 300.000/orang</td>
                                        <td><a href="<?= site_url('knn/pilihan_paket/1') ?>"><button class="btn btn-success">Pilih</button></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Kampung Coklat, 
Pantai Tambakrejo, Pantai Pangi,
Goa Embultuk,
</td>
                                        <td>Rp. 375.000/orang
</td>
<td><a href="<?= site_url('knn/pilihan_paket/2') ?>"><button class="btn btn-success">Pilih</button></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Rambut Monte, 
Kebun Teh Sirah Kencong, Candi Sirah Kencong, Air Terjun Sirah Kencong,
Wisata Hutan Pinus Gogoniti 
</td>
                                        <td>Rp. 250.000/orang
</td>
<td><a href="<?= site_url('knn/pilihan_paket/3') ?>"><button class="btn btn-success">Pilih</button></a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Istana Sakura, 
Wahana Blitar Park
</td>
                                        <td>Rp. 200.000/orang
</td>
<td><a href="<?= site_url('knn/pilihan_paket/4') ?>"><button class="btn btn-success">Pilih</button></a></td>
                                    </tr>
                                    
                                </tbody>
                                <tfoot>
                                    <tr>
                                    <th>No. Paket</th>
                                    <th>Destinasi</th>
                                    <th>Kisaran Biaya</th>
                                    <th>pilihan</th>
                                    </tr>
                                </tfoot>
                                </table>
                            </div>
                        </div>
                    </form>




                    <!-- your data -->
                    </div>
                    
                    <!-- column -->
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ============================================================== -->
          <!-- Sales chart -->
          <!-- ============================================================== -->
          <!-- ============================================================== -->
          <!-- Recent comment and chats -->
          <!-- ============================================================== -->
          
          <!-- ============================================================== -->
          <!-- Recent comment and chats -->
          <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <?php $this->load->view('admin/_partials/copyright.php'); ?>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
      </div>
      <!-- ============================================================== -->
      <!-- End Page wrapper  -->
      <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <?php $this->load->view('admin/_partials/footer.php'); ?>
  </body>
</html>
