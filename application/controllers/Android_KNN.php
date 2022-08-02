<?php
class Android_KNN extends CI_Controller{
    private $kValue = 5;
    public function index()
    {
        
        if($this->input->method()==='post'){
            $this->load->model('detail_lokasi_model');
            $this->load->model('objek_wisata_model');

            $data['detail'] = $this->detail_lokasi_model->getWithWisata();
            $jenis = [
				'penginapan' => $this->input->post('penginapan'),
				'biaya' => $this->input->post('biaya'),
				'tempat_ibadah' => $this->input->post('tempat_ibadah'),
				'warung' => $this->input->post('warung'),
				'souvenir' => $this->input->post('souvenir'),
				'toilet' => $this->input->post('toilet'),
				'permainan' => $this->input->post('permainan'),
				'tempat_makan' => $this->input->post('tempat_makan'),
				'tempat_parkir' => $this->input->post('tempat_parkir'),
                'kategori' => $this->input->input_stream('kategori')+16,
			];
            $data['jenis'] = $jenis;
            $knn = $this->execute($data['detail'], $jenis);
            $knn_prioritas = $this->addPrioritas($knn, 84); //first id of objek_wisata
            $objek_wisata = $this->objek_wisata_model->extractData($knn_prioritas);
            usort($objek_wisata, array($this, "priorsort"));

            $data['kval'] = $this->kValue;
            $data['knn'] = $objek_wisata;
            
            //$data['knn'] = $knn_prioritas;
            //return $this->load->view('admin/debug.php', $data);
            return $this->load->view('admin/and_knn_output.php', $data);
        }
        return $this->load->view('admin/and_knn_input.php');
    }
    public function destinasi($id)
    {
        $this->load->model('objek_wisata_model');
        $data['wisata'] = $this->objek_wisata_model->find($id);
        return $this->load->view('admin/and_knn_destinasi.php', $data);
    }
    public function map($koordinat)
    {
        $data['koordinat'] = $koordinat;
        return $this->load->view('admin/and_knn_map.php', $data);
    }
    private function addPrioritas($input, $offset)
    {
        $this->load->model('prioritas_model');
        $col = array('penginapan','biaya','tempat_ibadah','warung','souvenir','toilet','permainan','tempat_makan','tempat_parkir','kategori','id_objek_wisata','prioritas');
        $data = array();

        //construct data
        foreach($input as $in){
            $row = array();
            $total = 0;
            for($i=0;$i<count($col);$i++){
                if($i==count($col)-2)$row[$col[$i]]=$in[$i]+$offset;
                else if($i==count($col)-1)$row[$col[$i]]=$total;
                else $row[$col[$i]] = $in[$i];
                if($i<count($col)-3){
                    $priorValue = $this->prioritas_model->byKeterangan($col[$i]);
                    $total += ($priorValue>1?1:$priorValue)*$in[$i];
                }
            }
            $data[] = $row;
        }

        //$this->prioritas_model->calculate($data);


        return $data;
        //$total+=$this->prioritas_model->getPrioritas('penginapan', $data);
    }
    private function priorsort($a, $b)
    {
        if ($a['prioritas']==$b['prioritas']) return 0;
        return ($a['prioritas']>$b['prioritas'])?-1:1;
    }
    private function execute($dtTrain, $dtTest)
    {
        $data = array();
        foreach($dtTrain as $det){
            $data[] = array(
                $det->penginapan ,
                $det->biaya ,
                $det->tempat_ibadah ,
                $det->warung ,
                $det->souvenir ,
                $det->toilet ,
                $det->permainan ,
                $det->tempat_makan ,
                $det->tempat_parkir ,
                $det->id_kategori ,
                $det->id);
        }
        $dtset = $this->str_column_to_int($data, count($data[0])-1);
        $num_neighbors = $this->kValue;
        $row = array();
        $row[0] = $dtTest['penginapan'];
        $row[1] = $dtTest['biaya'];
        $row[2] = $dtTest['tempat_ibadah'];
        $row[3] = $dtTest['warung'];
        $row[4] = $dtTest['souvenir'];
        $row[5] = $dtTest['toilet'];
        $row[6] = $dtTest['permainan'];
        $row[7] = $dtTest['tempat_makan'];
        $row[8] = $dtTest['tempat_parkir'];
        $row[9] = $dtTest['kategori'];
        $hasil = $this->predict_classification($dtset[0], $row, $num_neighbors);
        return $hasil;
    }
    private function loadDataset($file)
    {
        $dataset = array();
        $row = 1;
        if (($handle = fopen($file, "r")) !== FALSE) {
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $num = count($data);
                //echo "<p> $num fields in line $row: <br /></p>\n";
                $row++;
                $dataRow = array();
                for ($c=0; $c < $num; $c++) {
                    $dataRow[] = $data[$c];
                    //echo $data[$c] . "<br />\n";
                }
                $dataset[] = $dataRow;
            }
            fclose($handle);
        }
        return $dataset;
    }
    private function str_column_to_int($dataset, $column)
    {
        $dict = array();
        $ind = 0;
        for($i=0;$i<count($dataset);$i++){
            if(!array_key_exists($dataset[$i][$column],$dict)){
                $dict[$dataset[$i][$column]] = $ind++;
            }
            $dataset[$i][$column] = $dict[$dataset[$i][$column]];
        }
        return [$dataset, $dict];
    }
    private function euclidean_distance($row1, $row2)
    {
        $distance = 0.0;
        for($i=0;$i<(count($row1)-1);$i++){
            $distance += ($row1[$i] - $row2[$i])*($row1[$i] - $row2[$i]);
        }
        return sqrt($distance);
    }

    private function distsort($a, $b){
        if ($a[1]==$b[1]) return 0;
        return ($a[1]<$b[1])?-1:1;
    }
    private function get_neighbors($train, $test_row, $num_neighbors)
    {
        $distances = array();
        foreach($train as $train_row){
            $dist = $this->euclidean_distance($test_row, $train_row);
            $distances[] = array($train_row, $dist);
        }
        usort($distances, array($this, "distsort"));
        /*for($i=0;$i<count($distances);$i++){
            print_r($distances[$i]);
            echo '<br>';
        }*/

        $neighbors = array();
        for($i=0;$i<$num_neighbors;$i++){
            $neighbors[] = $distances[$i][0];
        }
        return $neighbors;
    }
    private function predict_classification($train, $test_row, $num_neighbors)
    {
        $neighbors = $this->get_neighbors($train, $test_row, $num_neighbors);
        $output_values = array();
        foreach($neighbors as $row){
            $output_values[] = $row[count($row)-1];
        }
        $prediction = array_count_values($output_values);
        $label = array_key_first($prediction);
        return $neighbors;
        return $label;
    }
}
?>