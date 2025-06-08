--membuat database dan menggunakannya
CREATE DATABASE express_db;
USE express_db;

--membuat tabel kategori
CREATE TABLE kategori (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nama VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

--membuat tabel objek
CREATE TABLE objek (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nama VARCHAR(100) NOT NULL,
    image VARCHAR(255),
    audio VARCHAR(255),
    kategori_id INT(11),
    PRIMARY KEY (id),
    FOREIGN KEY (kategori_id) REFERENCES kategori(id)
);

--membuat tabel user
CREATE TABLE user (
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

--menginputkan nama nama kategori
INSERT INTO kategori (nama) VALUES
('hewan'),
('buah'),
('kendaraan');

--menginputkan user untuk login
INSERT INTO user (username, password) VALUES
('Kelompok4', '123');

--menginputkan data objek yang akan ditampilkan
INSERT INTO objek (nama, image, audio, kategori_id) VALUES
('Kucing', '1747550809385.jpg', '17475508478361.mp3', 1),
('Serigala', '1747558381173.jpg', '1747558381173.mp3', 1),
('Ayam', '1747550979335.jpg', '1747550979337.mp3', 1),
('Babi', '1747554285722.jpg', '1747554285723.mp3', 1),
('Anjing', '1747552173203.jpg', '17475540910792.mp3', 1),
('Tikus', '1747559716472.jpg', '1747559716474.mp3', 1),
('Singa', '1747540897606.jpg', '1747540897606.mp3', 1),
('Harimau', '1747550027143.webp', '1747550027144.mp3', 1),
('Sapi', '1747553266704.jpg', '1747553266707.mp3', 1),
('Kambing Irlandia', '1747551327114.jpg', '1747551327116.mp3', 1),
('Katak', '1747551486262.jpg', '1747551486264.mp3', 1),
('Bebek', '1747551629450.jpg', '1747551629452.mp3', 1),
('Elang', '1747555012135.jpg', '1747555012137.mp3', 1),
('Kuda', '1747551908026.jpg', '1747551908029.mp3', 1),
('Lumba lumba', '1747555991012.jpg', '1747555991013.mp3', 1),

('Apel', '1747552398041.jpg', '1747558383064.mp3', 2),
('Anggur', '1747553928160.jpg', '1747553928162.mp3', 2),
('Durian', '1747555995081.jpg', '1747555995084.mp3', 2),
('Rambutan', '1747556321395.jpg', '1747556321397.mp3', 2),
('Pisang', '1747556242323.jpg', '1747556242323.mp3', 2),
('Mangga', '1747556132395.jpg', '1747556132397.mp3', 2),
('Semangka', '1747556473241.jpg', '1747556473244.mp3', 2),
('Melon', '1747556643134.jpg', '1747556643135.mp3', 2),
('Strawberry', '1747556654878.jpg', '1747556654880.mp3', 2),
('Jeruk', '1747557051243.jpg', '1747557051245.mp3', 2),
('Kelengkeng', '1747557207500.jpg', '1747557207501.mp3', 2),
('Salak', '1747557520750.jpg', '1747557520751.mp3', 2),
('Pepaya', '1747557670572.jpg', '1747557670574.mp3', 2),
('Sirsak', '1747557682080.jpg', '1747557682082.mp3', 2),
('Kiwi', '1747557807146.jpg', '1747557807148.mp3', 2),

('Sepeda motor', '1747558035294.jpg', '1747558035296.mp3', 3),
('Pesawat', '1747559194016.jpg', '1747559194018.mp3', 3),
('Mobil', '1747559085189.jpg', '1747559085192.mp3', 3),
('Kereta Api', '1747556461324.jpg', '1747556461326.mp3', 3),
('Kapal laut', '1747559496606.jpg', '1747559496608.mp3', 3),
('Bis', '1747559652245.jpg', '1747559652246.mp3', 3),
('Truk', '1747559626348.jpg', '1747559626350.mp3', 3),
('Sepeda', '1747558306810.jpg', '1747558306813.mp3', 3),
('Bajaj', '174755994931.avif', '174755994931.mp3', 3),
('Delman', '1747559020880.jpg', '1747559020880.mp3', 3),
('Becak', '1747556094890.jpg', '1747556094890.mp3', 3),
('Helikopter', '1747559284984.jpg', '1747559284984.mp3', 3),
('Perahu', '1747560317953.jpg', '1747560317953.mp3', 3),
('Kapal selam', '1747560265061.jpg', '1747560265063.mp3', 3),
('Ambulans', '1747560327081.jpg', '1747560327082.mp3', 3);
