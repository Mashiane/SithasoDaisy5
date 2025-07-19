<?php header("Access-Control-Allow-Origin: *");$rest_json = file_get_contents("php://input");$_POST = json_decode($rest_json, true);$request='';if(isset($_POST['request'])){$request = $_POST['request'];$params = $_POST['params'];}if (!function_exists($request)) die("invalid request: '" . $request . "'"); 
 
function PasswordVerify($currentPwd, $hashPwd) { 
	$res = password_verify($currentPwd, $hashPwd); 
	echo ($res); 
} 
 
function get_result(\mysqli_stmt $statement) 
{ 
$result = array(); 
$statement->store_result(); 
for ($i = 0; $i < $statement->num_rows; $i++) 
    { 
    $metadata = $statement->result_metadata(); 
    $params = array(); 
    while ($field = $metadata->fetch_field()) 
        { 
        $params[] = &$result[$i][$field->name]; 
        } 
        call_user_func_array(array($statement, 'bind_result'), $params); 
        $statement->fetch(); 
        } 
        return $result; 
        } 
        function prepareMySQL($conn, $query, $types, $args) { 
        //paramater types to execute 
        /* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */ 
        $stmt = $conn->prepare($query); 
        if(is_array($types)){ 
        $a_params = array(); 
        $param_type = ''; 
        $n = count($types); 
        for($i = 0; $i < $n; $i++) { 
        $param_type .= $types[$i]; 
        } 
        $a_params[] = & $param_type; 
        //values to execute 
        for($i = 0; $i < $n; $i++) { 
		$args[$i] = mysqli_real_escape_string($conn, $args[$i]); 
        $a_params[] = & $args[$i]; 
        } 
        call_user_func_array(array($stmt, 'bind_param'), $a_params); 
        } 
        return $stmt; 
        } 
        function BANanoMySQL($command, $query, $args, $types) { 
        $resp = array(); 
        header('Access-Control-Allow-Origin: *'); 
        header('content-type: application/json; charset=utf-8'); 
        header("Access-Control-Allow-Credentials: true"); 
        header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
        header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
        require_once './assets/mysqlconfig.php'; 
        //connect To MySQL 
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 
        //we cannot connect Return an error 
        if ($conn->connect_error) { 
        $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        mysqli_set_charset($conn, 'utf8'); 
        //$query = mysqli_real_escape_string($conn, $query); 
        $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
        if (in_array($command, $commands)) { 
        $command = 'changes'; 
        } 
        switch ($command) { 
		case "updatepwd": 
			//first arguement is the password 
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT); 
			$stmt = prepareMySQL($conn, $query, $types, $args); 
        	if (! $stmt -> execute()) { 
        		$response = $stmt->error; 
        		$resp['response'] = "Error"; 
        		$resp['error'] = $response; 
        		$resp['result'] = array(); 
				$resp['token'] = ''; 
				$output = json_encode($resp); 
				die($output); 
        	} 
        	$affRows = $conn->affected_rows; 
        	$resp['response'] = "Success"; 
        	$resp['error'] = ''; 
        	$resp['result'] = array(); 
        	$resp['affectedRows'] = $affRows; 
			$resp['token'] = $args[0]; 
        	$output = json_encode($resp); 
    		break; 
		case "assigntoken": 
		//assign a 36 length token to the second argument 
		//first arguement is the username 
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36)); 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = $args[0]; 
        $output = json_encode($resp); 
    	break; 
    case "changes": 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        $response = $stmt->error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        break; 
        default: 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (!($result = $stmt->execute())) { 
        $response = $stmt->error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        $rows = get_result($stmt); 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = $rows; 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        break; 
        } 
        echo ($output); 
        $stmt->close(); 
        $conn->close(); 
        } 
        function BANanoMySQL1($command, $query, $args, $types) { 
        $resp = array(); 
        header('Access-Control-Allow-Origin: *'); 
        header('content-type: application/json; charset=utf-8'); 
        header("Access-Control-Allow-Credentials: true"); 
        header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
        header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
        require_once './assets/mysqlconfig.php'; 
        //connect To MySQL 
        mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 
        //we cannot connect Return an error 
        if ($conn->connect_error) { 
        $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        mysqli_set_charset($conn, 'utf8'); 
        //$query = mysqli_real_escape_string($conn, $query); 
        $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
        if (in_array($command, $commands)) { 
        $command = 'changes'; 
        } 
        switch ($command) { 
		case "updatepwd": 
			//first arguement is the password 
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT); 
			$stmt = prepareMySQL($conn, $query, $types, $args); 
        	if (! $stmt -> execute()) { 
        		$response = $stmt->error; 
        		$resp['response'] = "Error"; 
        		$resp['error'] = $response; 
        		$resp['result'] = array(); 
				$resp['token'] = ''; 
        		$output = json_encode($resp); 
				die($output); 
        	} 
        	$affRows = $conn->affected_rows; 
        	$resp['response'] = "Success"; 
        	$resp['error'] = ''; 
        	$resp['result'] = array(); 
        	$resp['affectedRows'] = $affRows; 
			$resp['token'] = $args[0]; 
        	$output = json_encode($resp); 
    		break; 
		case "assigntoken": 
		//assign a 36 length token to the second argument 
		//first arguement is the username 
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36)); 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = $args[0]; 
        $output = json_encode($resp); 
    	break; 
    case "changes": 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        $response = $stmt->error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        break; 
        default: 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        //$result = $stmt->execute(); 
        //$result = $stmt->get_result(); 
        if (!($result = $stmt->execute())) { 
        $response = $stmt->error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        if (!($result = $stmt->get_result())) { 
        $response = $stmt->error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $rows = array(); 
        while ($row = $result->fetch_assoc()) { 
            $rows[] = $row; 
            } 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = $rows; 
            $resp['affectedRows'] = $affRows; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
            } 
            echo ($output); 
            $stmt->close(); 
            $conn->close(); 
            } 
            function BANanoMySQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname) { 
            $resp = array(); 
            header('Access-Control-Allow-Origin: *'); 
            header('content-type: application/json; charset=utf-8'); 
            header("Access-Control-Allow-Credentials: true"); 
            header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
            header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
            //connect To MySQL 
            $conn = new mysqli($host, $username, $password); 
            //we cannot connect Return an error 
            if ($conn->connect_error) { 
            $response = $conn->connect_error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            //select the database 
            mysqli_set_charset($conn, 'utf8'); 
            $commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable'); 
            if (in_array($command, $commands)) { 
            $command = 'changes'; 
            } 
            switch ($command) { 
			case "updatepwd": 
			//first arguement is the password 
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT); 
			$stmt = prepareMySQL($conn, $query, $types, $args); 
        	if (! $stmt -> execute()) { 
        		$response = $stmt->error; 
        		$resp['response'] = "Error"; 
        		$resp['error'] = $response; 
        		$resp['result'] = array(); 
				$resp['token'] = ''; 
        		$output = json_encode($resp); 
				die($output); 
        	} 
        	$affRows = $conn->affected_rows; 
        	$resp['response'] = "Success"; 
        	$resp['error'] = ''; 
        	$resp['result'] = array(); 
        	$resp['affectedRows'] = $affRows; 
			$resp['token'] = $args[0]; 
        	$output = json_encode($resp); 
    		break; 
			case "assigntoken": 
		//assign a 36 length token to the second argument 
		//first arguement is the username 
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36)); 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			die($output); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = $args[0]; 
        $output = json_encode($resp); 
    	break; 
        case "connection": 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = array(); 
            $resp['affectedRows'] = 0; 
			$resp['token'] = '';			 
            $output = json_encode($resp); 
            die($output); 
        case "createdb": 
            $stmt = prepareMySQL($conn, $query, $types, $args); 
            if (! $stmt -> execute()) { 
            $response = $stmt->error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = array(); 
            $resp['affectedRows'] = 0; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
        case "dropdb": 
            $stmt = prepareMySQL($conn, $query, $types, $args); 
            if (! $stmt -> execute()) { 
            $response = $stmt->error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = array(); 
            $resp['affectedRows'] = 0; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
        case "databases": 
            $stmt = prepareMySQL($conn, $query, $types, $args); 
            if (!($result = $stmt->execute())) { 
            $response = $stmt->error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $rows = get_result($stmt); 
            $affRows = $conn->affected_rows; 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = $rows; 
            $resp['affectedRows'] = $affRows; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
        case "changes": 
            //select the db before processing 
            $selected = mysqli_select_db($conn, $dbname); 
            if (!$selected) { 
            $response = $conn->connect_error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $stmt = prepareMySQL($conn, $query, $types, $args); 
            if (! $stmt -> execute()) { 
            $response = $stmt->error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $affRows = $conn->affected_rows; 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = array(); 
            $resp['affectedRows'] = $affRows; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
            default: 
            //select the db before processing 
            $dbname = mysqli_real_escape_string($conn, $dbname); 
            $selected = mysqli_select_db($conn, $dbname); 
            if (!$selected) { 
            $response = $conn->connect_error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $stmt = prepareMySQL($conn, $query, $types, $args); 
            if (!($result = $stmt->execute())) { 
            $response = $stmt->error; 
            $resp['response'] = "Error"; 
            $resp['error'] = $response; 
            $resp['result'] = array(); 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            die($output); 
            } 
            $rows = get_result($stmt); 
            $affRows = $conn->affected_rows; 
            $resp['response'] = "Success"; 
            $resp['error'] = ''; 
            $resp['result'] = $rows; 
            $resp['affectedRows'] = $affRows; 
			$resp['token'] = ''; 
            $output = json_encode($resp); 
            break; 
            } 
            echo ($output); 
            $stmt->close(); 
            $conn->close(); 
            } 
         
function BANanoMySQLED($data) { 
    //receive content to decrypt 
	//include the decryption class 
	require_once './assets/encryption.php'; 
    require_once './assets/mysqlconfig.php'; 
    header('Access-Control-Allow-Origin: *'); 
    header('content-type: application/json; charset=utf-8'); 
	header("Access-Control-Allow-Credentials: true"); 
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS'); 
    header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization'); 
    //decrypt the content 
	$Encryption = new Encryption(); 
	$decrypted = $Encryption->decrypt($data, DB_KEY); 
	//this should be json, convert to map - associative array 
	$obj = json_decode($decrypted, true); 
	$command = $obj['command']; 
	$query = $obj['query']; 
	$args = $obj['args']; 
	$types = $obj['types']; 
	//whether from the server we want to encrypt 
	$resout = $obj['resout']; 
	// 
	$resp = array(); 
    //connect To MySQL 
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); 
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 
    //we cannot connect Return an error 
    if ($conn->connect_error) { 
	    $response = $conn->connect_error; 
        $resp['response'] = "Error"; 
        $resp['error'] = $response; 
        $resp['result'] = array(); 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
		$encrypted = $Encryption->encrypt($output, $key); 
        die($encrypted); 
    } 
    mysqli_set_charset($conn, 'utf8'); 
    //$query = mysqli_real_escape_string($conn, $query); 
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable'); 
    if (in_array($command, $commands)) { 
        $command = 'changes'; 
    } 
    switch ($command) { 
	case "updatepwd": 
			//first arguement is the password 
			$args[0] = password_hash($args[0], PASSWORD_BCRYPT); 
			$stmt = prepareMySQL($conn, $query, $types, $args); 
        	if (! $stmt -> execute()) { 
        		$response = $stmt->error; 
        		$resp['response'] = "Error"; 
        		$resp['error'] = $response; 
        		$resp['result'] = array(); 
				$resp['token'] = ''; 
        		$output = json_encode($resp); 
				die($output); 
        	} 
        	$affRows = $conn->affected_rows; 
        	$resp['response'] = "Success"; 
        	$resp['error'] = ''; 
        	$resp['result'] = array(); 
        	$resp['affectedRows'] = $affRows; 
			$resp['token'] = $args[0]; 
        	$output = json_encode($resp); 
    		break; 
    case "assigntoken": 
		//assign a 36 length token to the second argument 
		//first arguement is the username 
		$args[0] = bin2hex(openssl_random_pseudo_bytes(36)); 
		$stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			$encrypted = $Encryption->encrypt($output, DB_KEY); 
    	    die($encrypted); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = $args[0]; 
        $output = json_encode($resp); 
    	break; 
	case "changes": 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (! $stmt -> execute()) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			$encrypted = $Encryption->encrypt($output, DB_KEY); 
    	    die($encrypted); 
        } 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = array(); 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
    	break; 
    default: 
        $stmt = prepareMySQL($conn, $query, $types, $args); 
        if (!($result = $stmt->execute())) { 
        	$response = $stmt->error; 
        	$resp['response'] = "Error"; 
        	$resp['error'] = $response; 
        	$resp['result'] = array(); 
			$resp['token'] = ''; 
        	$output = json_encode($resp); 
			$encrypted = $Encryption->encrypt($output, DB_KEY); 
    	    die($encrypted); 
        } 
        $rows = get_result($stmt); 
        $affRows = $conn->affected_rows; 
        $resp['response'] = "Success"; 
        $resp['error'] = ''; 
        $resp['result'] = $rows; 
        $resp['affectedRows'] = $affRows; 
		$resp['token'] = ''; 
        $output = json_encode($resp); 
        break; 
    } 
    $stmt->close(); 
    $conn->close(); 
	//do we encrypt or not 
	switch ($resout) { 
	case "y": 
		$output = $Encryption->encrypt($output, DB_KEY); 
    default: 
	} 
	echo ($output); 
} 
 
function SendEmail($from,$to,$cc,$subject,$msg) { 
    $msg = str_replace("|", "\r\n", $msg); 
    $msg = str_replace("\n.", "\n..", $msg); 
    // use wordwrap() if lines are longer than 70 characters 
    $msg = wordwrap($msg,70,"\r\n"); 
    //define from header 
    $headers = "From:" . $from . "\r\n"; 
    $headers .= "Cc: " . $cc . "\r\n"; 
    $headers .= "X-Mailer:PHP/" . phpversion(); 
    $headers .= "MIME-Version: 1.0\r\n"; 
    $headers .= "Content-type: text/html\r\n"; 
    // send email 
    $response = (mail($to,$subject,$msg,$headers)) ? "success" : "failure"; 
    $output = json_encode(array("response" => $response)); 
    header('content-type: application/json; charset=utf-8'); 
    die($output); 
} 
$values = array_values($params);call_user_func_array($request, $values);?>