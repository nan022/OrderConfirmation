<!-- begin::Body -->

<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--fixed m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default">

    <!-- begin:: Page -->
    <div class="m-grid m-grid--hor m-grid--root m-page">
        <!--begin::Portlet-->
        <div class="m-portlet">
            <div class="m-portlet__head">
                <div class="m-portlet__head-caption">
                    <div class="m-portlet__head-title">
                        <span class="m-portlet__head-icon m--hide">
                            <i class="la la-gear"></i>
                        </span>
                        <h3 class="m-portlet__head-text">
                            Halaman Tambah Data Order Produk
                        </h3>
                    </div>
                </div>
            </div>

            <!--begin::Form-->
            <form class="m-form m-form--fit m-form--label-align-right m-form--group-seperator" method="POST">
                <div class="m-portlet__body">
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Reseller Name:</label>
                        <div class="col-lg-6">
                            <input type="text" name="reseller_name" value="<?= set_value('reseller_name') ?>" class="form-control" id="reseller_name" placeholder="Masukan Reseller Name">
                            <?= form_error('reseller_name', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <!-- <div class="m-form__group m-form__group--last form-group row">
                        <label class="col-lg-2 col-form-label">Jenis Kelamin:</label>
                        <div class="col-lg-6">
                            <select name="version" value="<?= set_value('version') ?>" id="version" class="form-control">
                                <option value="">Jenis Kelamin</option>
                                <option value="Laki-laki">Laki-laki</option>
                                <option value="Perempuan">Perempuan</option>
                            </select>
                            <?= form_error('version', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div> -->
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Address:</label>
                        <div class="col-lg-4">
                            <input type="text" name="address" value="<?= set_value('address') ?>" class="form-control" id="address" placeholder="Masukan Alamat">
                            <?= form_error('address', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Product Description:</label>
                        <div class="col-lg-6">
                            <textarea type="text" name="product_desc" value="<?= set_value('product_desc') ?>" class="form-control" id="product_desc" placeholder="Masukan Deskripsi"></textarea>
                            <?= form_error('product_desc', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Version:</label>
                        <div class="col-lg-5">
                        <select name="version" value="<?= set_value('version') ?>" id="version" class="form-control">
                                <option value disable select>Select Version</option>
                                <option value="2020">2020</option>
                                <option value="2021">2021</option>
                                <option value="2022">2022</option>
                                <option value="2023">2023</option>
                                <option value="2024">2024</option>
                            </select>
                            <?= form_error('version', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Order Id:</label>
                        <div class="col-lg-5">
                            <input type="text" name="order_id" value="<?= set_value('order_id') ?>" class="form-control" id="order_id" placeholder="Masukan Order Id">
                            <?= form_error('order_id', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Quantity:</label>
                        <div class="col-lg-2">
                            <input type="number" name="quantity" value="<?= set_value('quantity') ?>" class="form-control" id="quantity" placeholder="Masukan Quantity">
                            <?= form_error('quantity', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Host Name:</label>
                        <div class="col-lg-4">
                            <input type="text" name="host_name" value="<?= set_value('host_name') ?>" class="form-control" id="host_name" placeholder="Masukan Host Name">
                            <?= form_error('host_name', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Serial Number:</label>
                        <div class="col-lg-3">
                            <input type="text" name="serial_number" value="<?= set_value('serial_number') ?>" class="form-control" id="serial_number" placeholder="Masukan Serial Number">
                            <?= form_error('serial_number', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="form-group m-form__group row">
                        <label class="col-lg-2 col-form-label">Detail:</label>
                        <div class="col-lg-4">
                            <input type="file" name="detail" class="custom-file-input" id="detail" accept="application/pdf">
                            <label for="detail" class="custom-file-label">Pilih File *pdf</label>
                            <?= form_error('detail', '<small class="text-danger p1-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="m-portlet__foot m-portlet__no-border m-portlet__foot--fit">
                        <div class="m-form__actions m-form__actions--solid">
                            <div class="row">
                                <div class="col-lg-2"></div>
                                <div class="col-lg-6">
                                    <button type="submit" class="btn btn-success">Kirim</button>
                                    <a href="<?= base_url('Produk') ?>" class="btn btn-secondary">Batal</a>
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
            <br>

            <!--end::Form-->
        </div>
    </div>

    <!--end::Portlet-->