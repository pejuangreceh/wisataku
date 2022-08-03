<?php
    class Auth_model extends CI_Model
    {
        const SESSION_KEY = 'user_id';
        private $table = 'tbadmin';
        public function rules()
        {
            return [
                [
                    'field' => 'username',
                    'label' => 'Username or Email',
                    'rules' => 'required'
                ],
                [
                    'field' => 'password',
                    'label' => 'Password',
                    'rules' => 'required|max_length[255]'
                ]
            ];
        }
    
        public function login($username, $password)
        {
            $this->db->where('username', $username);
            $query = $this->db->get($this->table);
            $user = $query->row();
    
            if (!$user) {
                return FALSE;
            }

            if (!($password==$user->password)) {
                return FALSE;
            }
    
            $this->session->set_userdata([self::SESSION_KEY => $user->id]);
    
            return $this->session->has_userdata(self::SESSION_KEY);
        }
        public function login_user($username, $password){
            $this->db->where('username', $username);
            $this->db->where('password', $password);
            $query = $this->db->get('tbadmin');
            return $query->result_array();
        }

        public function loginUser()
        {
            $this->session->set_userdata([self::SESSION_KEY => 'user']);
            return $this->session->has_userdata(self::SESSION_KEY);
        }
    
        public function current_user()
        {
            if (!$this->session->has_userdata(self::SESSION_KEY)) {
                return null;
            }
            if($this->session->userdata(self::SESSION_KEY)=='user'){
                return true;
            }
    
            $user_id = $this->session->userdata(self::SESSION_KEY);
            $query = $this->db->get_where($this->table, ['id' => $user_id]);
            return $query->row();
        }
        
    
        public function logout()
        {
            $this->session->unset_userdata(self::SESSION_KEY);
            return !$this->session->has_userdata(self::SESSION_KEY);
        }
        public function insert($data)
        {
            return $this->db->insert('tbadmin', $data);
        }
    }
?>