<?php

class Users_model extends CI_Model {
	 public function __construct()
    {
        parent::__construct();
        $this->load->model('Data_pribadi');
        $this->load->model('Data_sekolah');
         $this->load->model('Data_nilai_raport');
          $this->load->model('Data_organisasi');
          $this->load->model('Data_prestasi');
           $this->load->model('Data_essai');
           $this->load->model('Data_ayah_kandung');
           $this->load->model('Data_ibu_kandung');
           $this->load->model('Data_tanggungan_orang_tua');
           $this->load->model('Data_riwayat_kesehataan');
         
        
    }
    /**
    * Validate the login's data with the database
    * @param string $user_name
    * @param string $password
    * @return void
    */
	function validate($user_name, $password)
	{
		$this->db->where('email', $user_name);
		$this->db->where('password', $password);
		$query = $this->db->get('membership')->num_rows();
		
		if($query == 1)
		{
			return true;
		}		
	}

	function set_status($email, $status)
	{
		$this->db->where('email', $email);
		$this->db->update('membership', array('status' => $status));
	}

	function set_foto_pribadi_path($email, $foto_pribadi)
	{
		$this->db->set('foto_pribadi', $foto_pribadi);
		$this->db->where('email', $email);
		$this->db->update('membership');
	}

 	public function get_data_user($email)
    {
		$this->db->select('*');
		$this->db->from('membership');
		$this->db->where('email', $email);
		$query = $this->db->get();
		return $query->result_array(); 
    }

    public function get_status($email)
    {
		$this->db->select('status');
		$this->db->from('membership');
		$this->db->where('email', $email);
		$query = $this->db->get();
		return $query->result_array(); 
    }

     public function get_path_foto_pribadi($email)
    {
		$this->db->select('foto_pribadi');
		$this->db->from('membership');
		$this->db->where('email', $email);
		$query = $this->db->get();
		return $query->result_array(); 
    }

    /**
    * Serialize the session data stored in the database, 
    * store it in a new array and return it to the controller 
    * @return array
    */
	function get_db_session_data()
	{
		$query = $this->db->select('user_data')->get('ci_sessions');
		$user = array(); /* array to store the user data we fetch */
		foreach ($query->result() as $row)
		{
		    $udata = unserialize($row->user_data);
		    /* put data in array using username as key */
		    $user['user_name'] = $udata['email']; 
		    $user['is_logged_in'] = $udata['is_logged_in']; 
		}
		return $user;
	}
	
    /**
    * Store the new user's data into the database
    * @return boolean - check the insert
    */	
	function create_member($foto_pribadi)
	{

		$this->db->where('email', $this->input->post('email'));
		$query = $this->db->get('membership');

        if($query->num_rows > 0){
        	echo '<div class="alert alert-error"><a class="close" data-dismiss="alert">×</a><strong>';
			  echo "Email Telah Terdaftar";	
			echo '</strong></div>';
		}else{
			$jumlah_id=$this->db->count_all_results('membership');
			$jumlah_id =$jumlah_id+1;
			$jumlah_id = str_pad($jumlah_id, 3, '0', STR_PAD_LEFT);
			$asal_daerah=$this->input->post('asal_daerah');
			$id_user=$jumlah_id.$asal_daerah."2018";
			$new_member_insert_data = array(
				'id'=> $id_user,
				'nama' => $this->input->post('nama'),
				'asal_daerah' => $this->input->post('asal_daerah'),
				'email' => $this->input->post('email'),	
				'foto_pribadi' => $foto_pribadi,		
				'password' => md5($this->input->post('password'))						
			);
			$email=$this->input->post('email');
			

			$insert = $this->db->insert('membership', $new_member_insert_data);
			
		    return $insert;
		}
	      
	}//create_member
}

