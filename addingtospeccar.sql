


CREATE TABLE speccar (
	speccar_id INT AUTO_INCREMENT,
	speccar_title VARCHAR(50) NOT NULL,
	spec_name VARCHAR(50) NOT NULL,
	spec_des VARCHAR(2000),
	spec_unit VARCHAR(2000) ,
	detail VARCHAR(2000),
	car_id INT NOT NULL,
	PRIMARY KEY (speccar_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);

INSERT INTO `speccar` (`speccar_title`, `spec_name`, `spec_des`,`spec_unit`,`detail`,`car_id`) VALUES
	( 'Kích thước', 'Kích thước tổng thể',	'Dài x Rộng x Cao',	'mm'	,'4410 x 1700 x 1475',2),
	('Kích thước','Kích thước nội thất','Dài x Rộng x Cao',	'mm','1915 x 1425 x 1205',2),
	('Kích thước','Chiều dài cơ sở','',	'mm','2550',2),
	('Kích thước','Chiều rộng cơ sở','Trước/Sau',	'mm','1470/1460',2),
	('Kích thước','Khoảng sáng gầm xe','',	'mm','145',2),
	('Kích thước','Bán kín quay vòng tối thiểu','',	'm','5.1',2),
	('Kích thước','Trọng lượng không tải','',	'kg','1050 – 1065',2),
	('Kích thước','Trọng lượng toàn tải','',	'kg','1500',2),
	('Kích thước','Dung tích bình nhiên liệu','',	'l','42',2),
	('Động cơ – Vận hành','Mã động cơ','',	'','1NZ – FE',2),
	('Động cơ – Vận hành','Loại','',	'','4 xy lanh thẳng hàng,16 van DOHC, VVT – i',2),
	('Động cơ – Vận hành','Dung tích công tác','',	'cc','1497',2),
	('Động cơ – Vận hành','Công suất tối đa','kW ( HP ) / rpm',	'','80 ( 107 ) / 6000',2),
	('Động cơ – Vận hành','Momen xoắn tối đa','Nm / rpm',	'','141 / 4200',2),
	('Động cơ – Vận hành','Hệ số cản không khí','',	'','0.28',2);
	