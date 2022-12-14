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
                      <h4 class="card-title">Form Objek Wisata Baru</h4>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                    <form class="form-horizontal" action="<?= site_url('admin/update_objek_wisata/').$id ?>" method="post">
                        <div class="card-body">
                            <div class="form-group row">
                            <label
                                for="fname"
                                class="col-sm-3 text-end control-label col-form-label"
                                >Nama Tempat</label
                            >
                            <div class="col-sm-9">
                                <input
                                value="<?= $objek_wisata->nama_tempat ?>"
                                name="nama_tempat"
                                type="text"
                                class="form-control"
                                id="fname"
                                />
                            </div>
                            </div>
                            <div class="form-group row">
                            <label
                                for="lname"
                                class="col-sm-3 text-end control-label col-form-label"
                                >Alamat</label
                            >
                            <div class="col-sm-9">
                                <input
                                value="<?= $objek_wisata->alamat ?>"
                                name="alamat"
                                type="text"
                                class="form-control"
                                id="lname"
                                />
                            </div>
                            </div>
                            <div class="form-group row">
                            <label
                                for="lname"
                                class="col-sm-3 text-end control-label col-form-label"
                                >Koordinat</label
                            >
                            <div class="col-sm-9">
                                <input
                                value="<?= $objek_wisata->koordinat ?>"
                                name="koordinat"
                                type="text"
                                class="form-control"
                                id="inKoordinat"
                                readonly
                                />
                            </div>
                            <div class="form-group row">
                            <label
                                for="lname"
                                class="col-sm-3 text-end control-label col-form-label"
                                ></label
                            >
                            <div class="col-sm-9">
                              <div class="form-control" id="googleMap" style="height:500px;"></div>
                            </div>


                            
                            </div>
                            </div>
                            <div class="form-group row">
                            <label
                                for="email1"
                                class="col-sm-3 text-end control-label col-form-label"
                                >Deskripsi</label
                            >
                            <div class="col-sm-9">
                                <input
                                value="<?= $objek_wisata->deskripsi ?>"
                                name="deskripsi"
                                type="text"
                                class="form-control"
                                id="email1"

                                />
                            </div>
                            </div>


                            <div class="form-group row">
                            <label
                                for="email1"
                                class="col-sm-3 text-end control-label col-form-label"
                                >Kategori</label
                            >
                            <div class="col-sm-9">
                                <select class="form-control" name="id_kategori">
                                  <?php foreach($kategori as $kat){ ?>
                                    <option value="<?= $kat->id ?>" <?= $kat->id==$objek_wisata->id_kategori?'selected="selected"':'' ?>><?= $kat->nama_kategori ?></option>
                                  <?php } ?>
                                </select>
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
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <div class="d-md-flex align-items-center">
                    <div>
                      <h4 class="card-title">Form Pembobotan</h4>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">
                    <?php
                        $col = array();
                        $col['penginapan'] = array('tidak ada', 'tersedia');
                        $col['biaya'] = array('murah', 'sedang', 'mahal');
                        $col['tempat_ibadah'] = array('tidak ada', 'tersedia');
                        $col['warung'] = array('tidak ada', 'tersedia');
                        $col['souvenir'] = array('tidak ada', 'tersedia');
                        $col['toilet'] = array('tidak ada', 'tersedia');
                        $col['permainan'] = array('tidak ada', 'tersedia');
                        $col['tempat_makan'] = array('tidak ada', 'tersedia');
                        $col['tempat_parkir'] = array('tidak ada', 'tersedia');
                    ?>
                        <form class="form-horizontal" action="<?= site_url('admin/update_detail/') ?>" method="post">
                            <input type="text" name="id_objek_wisata" value="" hidden="hidden">
                            <input type="text" name="id" value="" hidden="hidden">
                            <div class="card-body">
                                <?php foreach($col as $key => $value){ ?>
                                <div class="form-group row">
                                    <label
                                        for="fname"
                                        class="col-sm-3 text-end control-label col-form-label"
                                        ><?= $key ?></label>
                                    <div class="col-sm-9">
                                        <select class="form-control" name="<?= $key ?>">
                                            <?php for($i=0;$i<count($value);$i++){ ?>
                                                <option value="<?= $i ?>" <?= $detail->$key==$i?'selected="selected"':'' ?>><?= $value[$i] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>    
                                </div>
                                <?php } ?>                        
                            </div>
                        <div class="float-end">
                            <div class="card-body">
                            <button type="submit" name="submit" value="submit" class="btn btn-lg btn-primary">
                                <?= $detail==null?'Tambahkan':'Rubah' ?>
                            </button>
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
    <?php
        $parts = explode(',',$objek_wisata->koordinat);
        $lat = $parts[0];
        $lon = $parts[1];
    ?>
    <script>
        var mapProp= {
            center:new google.maps.LatLng(<?= $lat.','.$lon ?>),
            zoom:14,
        };
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
        var mark = new google.maps.Marker({
            position: { lat: <?= $lat ?>, lng: <?= $lon ?> },
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
