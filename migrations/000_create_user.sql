-- Create database user if not exists
-- This runs automatically on container startup via docker-entrypoint-initdb.d

CREATE USER IF NOT EXISTS 'amnezia'@'%' IDENTIFIED BY 'amnezia';
CREATE USER IF NOT EXISTS 'amnezia'@'localhost' IDENTIFIED BY 'amnezia';
GRANT ALL PRIVILEGES ON amnezia_panel.* TO 'amnezia'@'%';
GRANT ALL PRIVILEGES ON amnezia_panel.* TO 'amnezia'@'localhost';
FLUSH PRIVILEGES;
