				<!-- END: Left Aside -->
				<div class="m-grid__item m-grid__item--fluid m-wrapper">

					<div class="m-content">
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Data Order Produk
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									<ul class="m-portlet__nav">
										<li class="m-portlet__nav-item">
											<a href="<?= base_url() ?>Produk/tambah" class="btn btn-success m-btn m-btn--custom m-btn--icon m-btn--air">
												<span>
													<i class="la la-plus"></i>
													<span>Tambah Data</span>
												</span>
											</a>
										</li>
										<li class="m-portlet__nav-item"></li>
										<li class="m-portlet__nav-item">											
										</li>
									</ul>
								</div>
							</div>
							<div class="m-portlet__body">
							 	<?= $this->session->flashdata('message') ?>
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
								<thead>
                                        <tr>
                                            <td>No</td>
                                            <td>Reseller Name</td>
											<td>Address</td>
                                            <td>Product Description</td>
											<td>Version</td>
                                            <td>Order ID</td>
                                            <td>Quantity</td>
                                            <!-- <td>Host Name</td> -->
                                            <td>Serial Number</td>
                                            <td>Detail</td>
                                            <!-- <td>Aksi</td> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($produk as $pd) : ?>
                                            <tr>
                                                <td><?= $i; ?>.</td>
                                                <td><?= $pd['reseller_name']; ?></td>
												<td><?= $pd['address']; ?></td>										
                                                <td><?= $pd['product_desc']; ?></td>										
												<td><?= $pd['version']; ?></td>
                                                <td><?= $pd['order_id']; ?></td>
                                                <td><?= $pd['quantity']; ?></td>
                                                <td><?= $pd['serial_number']; ?></td>
												<td><a href="assets/img/berkas/<?php echo $pd['detail']; ?>" class="badge badge-primary">View</a></td>
                                                <!-- <td><a href="<?= base_url('Produk/detail/') . $pd['id']; ?>" class="badge badge-primary">View</a></td>									 -->
                                                <!-- <td>
                                                    <a href="<?= base_url('Produk/hapus/') . $pd['id']; ?>" class="badge badge-danger">Hapus</a>
                                                    <a href="<?= base_url('Produk/edit/') . $pd['id']; ?>" class="badge badge-warning">Edit</a>
													<a href="<?= base_url('Produk/detail/') . $pd['id']; ?>" class="badge badge-primary">Detail</a>
                                                </td> -->
                                            </tr>
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
								</table>
							</div>
						</div>

						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>
			</div>

			