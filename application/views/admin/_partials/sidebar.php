<nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="<?= site_url('admin/') ?>"
                  aria-expanded="false"
                  ><i class="mdi mdi-view-dashboard"></i
                  ><span class="hide-menu">Dashboard</span></a
                >
              </li>
              <li class="sidebar-item">
                <a
                  class="sidebar-link has-arrow waves-effect waves-dark"
                  href="javascript:void(0)"
                  aria-expanded="false"
                  ><i class="mdi mdi-receipt"></i
                  ><span class="hide-menu">Master Data </span></a
                >
                <ul aria-expanded="false" class="collapse first-level">
                  <li class="sidebar-item">
                    <a href="<?= site_url('admin/master_kategori') ?>" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Kategori </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="<?= site_url('admin/master_objek_wisata') ?>" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Objek Wisata </span></a
                    >
                  </li>

                  <li class="sidebar-item">
                    <a href="<?= site_url('admin/master_prioritas') ?>" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Prioritas </span></a
                    >
                  </li>

                  <li class="sidebar-item">
                    <a href="<?= site_url('knn/') ?>" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> KNN </span></a
                    >
                  </li>
                  <li class="sidebar-item">
                    <a href="<?= site_url('paket/') ?>" class="sidebar-link"
                      ><i class="mdi mdi-note-outline"></i
                      ><span class="hide-menu"> Paket Wisata </span></a
                    >
                  </li>


                  
                </ul>
              </li>
            </ul>
          </nav>