<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Produk extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Produk_model');
    }

    public function index()
    {
        $data['judul'] = "Halaman Produk";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['produk'] = $this->Produk_model->get();        
        $this->load->view("layout/header", $data);
        $this->load->view("produk/vw_produk", $data);
        $this->load->view("layout/footer", $data);
    }

    function tambah()
    {
        $data['judul'] = "Halaman Tambah Data Order Produk";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->form_validation->set_rules('reseller_name', 'Reseller Name', 'required', [
            'required' => 'Reseller Name Wajib di isi'
        ]);
        $this->form_validation->set_rules('address', 'address', 'required', [
            'required' => 'Address Wajib di isi'
        ]);
        $this->form_validation->set_rules('product_desc', 'product_desc', 'required', [
            'required' => 'Deskripsi Produk Wajib di isi'
        ]);
        $this->form_validation->set_rules('order_id', 'order_id', 'required', [
            'required' => 'Id Order Wajib di isi'
        ]);        
        $this->form_validation->set_rules('quantity', 'quantity', 'required', [
            'required' => 'Quantity Wajib di isi'
        ]);        
        $this->form_validation->set_rules('host_name', 'host_name', 'required', [
            'required' => 'Host Name Wajib di isi'
        ]);        
        $this->form_validation->set_rules('serial_number', 'serial_number', 'required', [
            'required' => 'Serial Number Wajib di isi'
        ]);        
        if ($this->form_validation->run() == false) {
            $this->load->view("layout/header", $data);
            $this->load->view("produk/vw_tambah_produk", $data);
            $this->load->view("layout/footer");
        } else {
            $data = [
                'reseller_name' => $this->input->post('reseller_name'),
                'address' => $this->input->post('address'),
                'product_desc' => $this->input->post('product_desc'),
                'version' => $this->input->post('version'),
                'order_id' => $this->input->post('order_id'),
                'quantity' => $this->input->post('quantity'),
                'host_name' => $this->input->post('host_name'),
                'serial_number' => $this->input->post('serial_number'),
                'detail' => $this->input->post('detail'),
            ];
            $upload_image = $_FILES['detail']['name'];
            if ($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size'] = '2048';
                $config['upload_path'] = './assets/img/berkas/';
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('detail')) {
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('detail', $new_image);
                } else {
                    echo $this->upload->display_errors();
                }
            }
            $this->Produk_model->insert($data);
            $this->session->set_flashdata('message', '<div class="m-alert m-alert--outline m-alert--outline-2x alert alert-success alert-dismissible fade show" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            </button>
            <strong>Yeay!!!</strong> Data Order Produk berhasil ditambahkan.
        </div>');
            redirect('Produk');
        }
    }

    public function detail($id)
    {
        $data['judul'] = "Halaman Detail Produk";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['produk'] = $this->Produk_model->getById($id);
        $this->load->view("layout/header", $data);
        $this->load->view("produk/vw_detail_produk", $data);
        $this->load->view("layout/footer", $data);
    }

    // public function hapus($id)
    // {
    //     $this->produk_model->delete($id);
    //     $this->session->set_flashdata('message', '<div class="m-alert m-alert--outline m-alert--outline-2x alert alert-success alert-dismissible fade show" role="alert">
    //         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    //         </button> Data produk berhasil di Hapus
    //     </div>');
    //     redirect('produk');
    // }

    // public function edit($id)
    // {
    //     $data['judul'] = "Halaman Edit produk";
    //     $data['user'] = $this->db->get_where('user', ['order_id' => $this->session->userdata('order_id')])->row_array();
    //     $data['univ'] = $this->produk_model->get();
    //     $data['produk'] = $this->produk_model->getById($id);
    //     $this->form_validation->set_rules('reseller_name_mhs', 'reseller_name produk', 'required', [
    //         'required' => 'reseller_name produk Wajib di isi'
    //     ]);
    //     $this->form_validation->set_rules('jk', 'Jenis Kelamin', 'required', [
    //         'required' => 'Jenis Kelamin Wajib di isi'
    //     ]);
    //     $this->form_validation->set_rules('no_hp', 'Nomor Hp', 'required|integer', [
    //         'required' => 'Nomor Hp produk Wajib di isi',
    //         'integer' => 'NO HP harus Angka'
    //     ]);
    //     $this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required', [
    //         'required' => 'Kecamatan Wajib di isi'
    //     ]);
    //     $this->form_validation->set_rules('bank', 'reseller_name Bank', 'required', [
    //         'required' => 'reseller_name Bank Wajib di isi'
    //     ]);
    //     $this->form_validation->set_rules('no_rek', 'Nomor Rekening', 'required', [
    //         'required' => 'Nomor Rekening Wajib di isi'
    //     ]);
    //     $this->form_validation->set_rules('prodi', 'Program Studi', 'required', [
    //         'required' => 'Program Studi Wajib di isi',
    //     ]);
    //     $this->form_validation->set_rules('semester', 'Semester', 'required', [
    //         'required' => 'Semester produk Wajib di isi',
    //     ]);
    //     $this->form_validation->set_rules('id_univ', 'produk', 'required', [
    //         'required' => 'produk Wajib di isi',
    //     ]);
    //     $this->form_validation->set_rules('tahun_akademik', 'Tahun Akademik', 'required', [
    //         'required' => 'Tahun Akademik Wajib di isi',
    //     ]);
    //     if ($this->form_validation->run() == false) {
    //         $this->load->view("layout/header", $data);
    //         $this->load->view("produk/vw_ubah_produk", $data);
    //         $this->load->view("layout/footer", $data);
    //     } else {
    //         $data = [
    //             'reseller_name_mhs' => $this->input->post('reseller_name_mhs'),
    //             'jk' => $this->input->post('jk'),
    //             'no_hp' => $this->input->post('no_hp'),
    //             'kecamatan' => $this->input->post('kecamatan'),
    //             'bank' => $this->input->post('bank'),
    //             'no_rek' => $this->input->post('no_rek'),
    //             'prodi' => $this->input->post('prodi'),
    //             'semester' => $this->input->post('semester'),
    //             'id_univ' => $this->input->post('id_univ'),
    //             'tahun_akademik' => $this->input->post('tahun_akademik'),
    //         ];
    //         $id = $this->input->post('id');
    //         $this->produk_model->update(['id' => $id], $data);
    //         $this->session->set_flashdata('message', '<div class="m-alert m-alert--outline m-alert--outline-2x alert alert-success alert-dismissible fade show" role="alert">
    //         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    //         </button>
    //         <strong>Yeay!!!</strong> Data produk berhasil di Ubah
    //     </div>');
    //         redirect('produk');
    //     }
    // }
}
