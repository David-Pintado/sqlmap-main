CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `users` (username, password, email, created_at, updated_at) VALUES 
('aitor', 'cat9818gshaju', 'aitor@example.com', '2024-01-12 20:59:47', '2024-01-12 20:59:47'),
('miren', 'bhsbhhdfhsjaklmn', 'miren@example.com', '2024-01-12 21:00:09', '2024-01-12 21:00:09');

GRANT ALL PRIVILEGES ON users.* TO 'sgssi-23'@'%' IDENTIFIED BY 'p4ssw0rd2023';
FLUSH PRIVILEGES;

