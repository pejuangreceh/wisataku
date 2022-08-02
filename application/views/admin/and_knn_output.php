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
              <h4 class="page-title"></h4>
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
                      <h4 class="card-title">Pilih Destinasi</h4>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                      


                    
                    <div class="row">
                      <ol>
                    <?php $no = 0; ?>
                    <?php foreach($knn as $k){?>
                      <li>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body"><?= $k['nama_tempat'] ?>  <span id="jarak<?= $no ?>">(0 Km)</span></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="<?= site_url("KNN/destinasi/").$k['id'] ?>">Pilih</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                    </li>
                    <?php $no+= 1; } ?>
                    </ol>
                    </div>

                    <script>
                      function haversineDistance(coords1, coords2) {
                        function toRad(x) {
                          return x * Math.PI / 180;
                        }

                        var lon1 = coords1[1];
                        var lat1 = coords1[0];

                        var lon2 = coords2[1];
                        var lat2 = coords2[0];

                        var R = 6371; // km

                        var x1 = lat2 - lat1;
                        var dLat = toRad(x1);
                        var x2 = lon2 - lon1;
                        var dLon = toRad(x2)
                        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                          Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) *
                          Math.sin(dLon / 2) * Math.sin(dLon / 2);
                        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
                        var d = R * c;

                        return parseInt(d);
                      }
                      for(let i=0;i< <?= $kval?>;i++){
                        $('#jarak'+i).text('hehe'+i);
                      }

                      navigator.geolocation.getCurrentPosition(function(location) {
                        let lat = location.coords.latitude;
                        let lon = location.coords.longitude;
                        let jarak = '(';

                        <?php 
                            $i=0;
                            foreach($knn as $k){
                              $parts = explode(',', $k['koordinat']);
                          ?>
                          $('#jarak<?= $i ?>').text(jarak + haversineDistance([lat, lon],[<?= $parts[0] ?>, <?= $parts[1] ?>]) + ' Km)');                        
                        
                        <?php $i++; } ?>
                        
                      });

                      let id;
                      let target;
                      let options;

                      function success(pos) {
                        const crd = pos.coords;
                        let lat = crd.latitude;
                        let lon = crd.longitude;
                        <?php 
                            $i=0;
                            foreach($knn as $k){
                              $parts = explode(',', $k['koordinat']);
                          ?>
                            $('#jarak<?= $i ?>').text(jarak + haversineDistance([lat, lon],[<?= $parts[0] ?>, <?= $parts[1] ?>]) + ' Km)');                        
                        
                        <?php $i++; } ?>
                      }

                      function error(err) {
                        console.warn('ERROR(' + err.code + '): ' + err.message);
                      }

                      options = {
                        enableHighAccuracy: false,
                        timeout: 5000,
                        maximumAge: 0
                      };
                      navigator.geolocation.watchPosition(success, error, options);
                    </script>



                        




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
