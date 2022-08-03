<!DOCTYPE html>
<html dir="ltr" lang="en">
  <head>
    <?php $this->load->view('admin/_partials/header.php'); ?>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbwHOQS-Ji9pEUt_O7EH6PiOrBFTsXYj8"></script>
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
                      <h4 class="card-title"><?= $paket_wisata->nama_paket ?></h4>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                      <!-- ID terakhir dari objek lokasi -->
                      <!-- <?php echo $last_id->id; ?> -->
                              <div class="card">
                                
                                <table class="table">
                                  <thead>
                                    <tr>
                                      <th scope="col">No</th>
                                      <th scope="col">Nama Tempat</th>
                                      <th scope="col">Alamat</th>
                                      <th scope="col">Koordinat</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <?php 
                                    $no = 1;
                                    $result = '';
                                    foreach ($data_objek_wisata as $data_objek) {?>  
                                    <tr>
                                      <th scope="row"><?= $no;?></th>
                                      <td><?= $data_objek->nama_tempat;?></td>
                                      <td><?= $data_objek->alamat;?></td>
                                      <td><?= $data_objek->koordinat;?></td>
                                    </tr>
                                    <?php 
                                            if($no == 1){
                                              $result .= str_replace(' ', '+', $data_objek->nama_tempat);
                                            }else{
                                              $result .= '+to:'.str_replace(' ', '+', $data_objek->nama_tempat);
                                            }
                                          
                                          $no++;
                                  } ?>
                                    <?php //echo $result; ?>
                                    <tr>
                                      <td>Estimasi Harga</td>
                                      <td colspan="3">Rp <?= $paket_wisata->harga ?>,00 per orang</td>
                                    </tr>
                                    <tr>
                                      <td>Deskripsi</td>
                                      <td colspan="3" ><?= $paket_wisata->deskripsi ?></td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                              
                              <div class="form-group row">
                              <div class="col-sm-6">
                                  <div class="float-start">
                                    <div class="card-body">
                                    <a href="<?= site_url('paket') ?>" class="btn btn-lg btn-light">
                                        Kembali
                                    </a>
                                    </div>
                                    
                                  </div> 
                                </div> 
                                <div class="col-sm-6">
                                  <div class="float-end">
                                    <div class="card-body">
                                    <a href="https://www.google.com/maps?saddr=My+Location&daddr=<?= $result;?>" target="_blank"  class="btn btn-lg btn-success">
                                        Direction
                                    </a>
                                    </div>
                                    
                                  </div> 
                                </div>  
                              </div>   
                              </div>  
                          </div>
                                       
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

    <script>
        var mapProp= {
            center:new google.maps.LatLng(-7.946741, 112.615973),
            zoom:14,
        };
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
        var mark = new google.maps.Marker({
            position: { lat: -7.946741, lng: -112.615973 },
            map,
            title: "Hello World!",
        });
        google.maps.event.addListener(map, 'click', function(event){
            let loc = event.latLng.lat()+","+event.latLng.lng();    
            mark.setPosition({lat: event.latLng.lat(), lng: event.latLng.lng()}) ; 
            $('#inKoordinat').val(loc);
            console.log(loc);
        });
    </script>
  </body>

</html>
