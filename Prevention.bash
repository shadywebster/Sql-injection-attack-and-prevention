$stmt = $conn->prepare(
  "SELECT id FROM users WHERE username = ? AND password = ?"
);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$result = $stmt->get_result();


$stmt = $pdo->prepare(
  "SELECT id FROM users WHERE username = :user AND password = :pass"
);
$stmt->execute([
  ':user' => $username,
  ':pass' => $password
]);



cursor.execute(
  "SELECT * FROM users WHERE username = %s AND password = %s",
  (username, password)
)


query = f"SELECT * FROM users WHERE username='{u}'"

PreparedStatement ps = conn.prepareStatement(
  "SELECT * FROM users WHERE username = ? AND password = ?"
);
ps.setString(1, username);
ps.setString(2, password);
ResultSet rs = ps.executeQuery();


const query = "SELECT * FROM users WHERE username = ? AND password = ?";
db.execute(query, [username, password]);

if (!preg_match('/^[a-zA-Z0-9_]{3,20}$/', $username)) {
  die("Invalid username");
}

• SQL Injection occurs due to dynamic query construction.
• Prepared statements prevent SQL structure manipulation.
• Input validation supports logic security but is not sufficient alone.
• Least privilege limits post-exploitation impact.
• Password hashing reduces data breach severity.
• Error suppression prevents information disclosure.
• WAF provides an additional protective layer.

GRANT ALL PRIVILEGES ON *.* TO 'webuser'@'localhost';


GRANT SELECT, INSERT, UPDATE 
ON app_db.* 
TO 'webuser'@'localhost';

password = 'admin123'

$hash = password_hash($password, PASSWORD_BCRYPT);

if (password_verify($input, $hash)) {
   // login success
}

die(mysqli_error($conn));
ini_set('display_errors', 0);
error_log(mysqli_error($conn));
echo "Something went wrong";

CREATE PROCEDURE getUser(IN uname VARCHAR(50))
BEGIN
  SELECT * FROM users WHERE username = uname;
END;




