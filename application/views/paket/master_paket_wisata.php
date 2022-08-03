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
                <?php if ($this->session->userdata('role') == 1) {?>
                <a href="<?= site_url('paket/insert_paket_wisata') ?>" class="btn btn-primary float-end">+ Tambah Paket Wisata</a>
                <?php } ?>
                  <div class="d-md-flex align-items-center">
                    <div class="col-12">
                      <h4 class="card-title">Paket Wisata</h4>
                      <h5 class="card-subtitle">Tabel Paket Wisata</h5>
                    </div>
                  </div>
                  <div class="row">
                    <!-- column -->
                    <div class="col-lg-12">


                      <div class="table-responsive">
                        <table
                          id="zero_config"
                          class="table table-striped table-bordered"
                        >
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nama Paket</th>
                              <th>List Destinasi</th>
                              <th>Deskripsi</th>
                              <th>Harga</th>
                              <th>Created_at</th>
                              <th>Last Modified</th>
                              <th>Tindakan</th>

                            </tr>
                          </thead>
                          <tbody>
                            <?php 
                            $no = 1;
                            foreach($paket_wisata as $paket){ ?>
                              <tr>
                                <td><?= $no ?></td>
                                <td><?= $paket->nama_paket ?></td>
                                <td><?= $paket->nama_tempat 
                                ?></td>
                                <td><?= $paket->deskripsi ?></td>
                                <td><?= $paket->harga ?></td>
                                <td><?= $paket->created_at ?></td>
                                <td><?= $paket->last_modified ?></td>
                                <td>
                                                          <a href="<?= site_url("paket/detail_paket_wisata").'/'.$paket->id ?>" class="btn btn-info">Detail</a>
                                                          <?php if ($this->session->userdata('role') == 1) {?>
                                                          <a href="<?= site_url("paket/update_paket_wisata").'/'.$paket->id ?>" class="btn btn-success">Update</a>
                                                          <a href="#" 
                                                              data-delete-url="<?= site_url('paket/delete_paket_wisata/'.$paket->id) ?>" 
                                                              class="btn btn-danger" 
                                                              role="button"
                                                              onclick="deleteConfirm(this)">Delete</a>
                                <?php $no++;} ?>
                                </td>
                              </tr>
                            <?php } ?>
                          </tbody>
                          
                        </table>
                      </div>                    
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
    <script src="<?= base_url('assets/assets/extra-libs/multicheck/datatable-checkbox-init.js') ?>"></script>
    <script src="<?= base_url('assets/assets/extra-libs/multicheck/jquery.multicheck.js') ?>"></script>
    <script src="<?= base_url('assets/assets/extra-libs/DataTables/datatables.min.js') ?>"></script>
    <script>
      /****************************************
       *       Basic Table                   *
       ****************************************/
      $("#zero_config").DataTable();
    </script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		function deleteConfirm(event){
			Swal.fire({
				title: 'Konfirmasi Penghapusan Data',
				text: 'Apakah Anda Yakin Menghapus Data Ini?',
				icon: 'warning',
				showCancelButton: true,
				cancelButtonText: 'Tidak',
				confirmButtonText: 'Ya Hapus',
				confirmButtonColor: 'red'
			}).then(dialog => {
				if(dialog.isConfirmed){
					window.location.assign(event.dataset.deleteUrl);
				}
			});
		}
	</script>

	<?php if($this->session->flashdata('message')): ?>
		<script>
			const Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000,
				timerProgressBar: true,
				didOpen: (toast) => {
					toast.addEventListener('mouseenter', Swal.stopTimer)
					toast.addEventListener('mouseleave', Swal.resumeTimer)
				}
			})

			Toast.fire({
				icon: 'success',
				title: '<?= $this->session->flashdata('message') ?>'
			})
		</script>
	<?php endif ?>
  </body>
</html>
