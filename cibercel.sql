create database cibercel;

create table Users (
id int not null AUTO_INCREMENT,
nickname varchar(255) not null,
password varchar(255) not null,
primary key(id)
);

INSERT INTO `Users` (`id`, `nickname`, `password`) VALUES
(1, 'admin', 'admin');

create table Tags (
	id int not null AUTO_INCREMENT,
	title varchar(255) not null,
	primary key(id)
);

	INSERT INTO `Tags` (`id`, `title`) VALUES
(1, 'carrusel'),
(2, 'redes_sociales_facebook'),
(3, 'redes_sociales_youtube'),
(4, 'redes_sociales_instagram'),
(5, 'logo'),
(6, 'imagen_contenido'),
(7, 'cursos'),
(8, 'video'),
(9, 'Contacto_whatsappp'),
(10, 'Contacto_telefono_fijo'),
(11, 'Contacto_email'),
(12, 'Contacto_direccion'),
(13, 'Contacto_mapa'),
(14, 'nosotos_sobre_nosotros'),
(15, 'nosotros_mision'),
(16, 'nosotros_vision'),
(17, 'nosotros_ofrecemos'),
(18, 'nosotros_valores'),
(19, 'nosotros_img'),
(20, 'ventajas_beneficios'),
(21, 'empresa_contenido'),
(22, 'empresa_instituciones_educativas '),
(23, 'empresa_talleres_tecnicos'),
(24, 'empresa_img'),
(25, 'lema');

create table Properties (
	id int not null AUTO_INCREMENT,
	title varchar(255),
	ico varchar(255),
	content MEDIUMTEXT,
	img varchar(255),
	tag_id int not null,
	primary key(id),
	foreign key (tag_id) references Tags (id)
);

INSERT INTO `Properties` (`id`, `title`, `ico`, `content`, `img`, `tag_id`) VALUES
(1, 'Sobre Nosotros', '', 'Somos una empresa dedicada a brindar capacitaciones profesionales y asesoramiento técnico especializado a emprendedores que deseen implementar su negocio de servicio técnico profesional de Celulares y Tablets o para aquellos que buscan trabajar en alguna empresa de telefonía celular. Para ellos le ofrecemos curso técnicos profesionales en las áreas de Hardware y Software, con clases modernamente implementadas y acceso a máquinas y herramientas de última generación. Contamos con una moderna metodología de enseñanza donde predomina la constante práctica.', NULL, 14),
(2, 'Misión', '', 'Formar profesionales técnicos especializados en el sector de la Reparación Profesional de Celulares y Tablets en las áreas de Hardware y Software, ofreciéndole una adecuada enseñanza práctica y exigente de buen nivel académico, en un ambiente cómodo y óptimo para realizar todo tipo de reparaciones.', NULL, 15),
(3, 'Visión', '', 'Deseamos ser reconocidos como el mejor centro de capacitación profesional técnico especializado del país, en el sector del servicio técnicos profesionales de Celulares y Tablets, además tenemos la intención de expandirnos como institución educativa en la enseñanza de nuevas tecnologías móviles.', NULL, 16),
(4, 'Ofrecemos ', '', 'Formación profesional técnica especializada. Docentes con 10 años de experiencia comprobada en el sector. Enseñanza personalizada, grupos reducidos. Seminarios de actualización y especialización. Herramientas y equipos para cada alumno. Metodología audiovisual y demostrativa. Full Practicas. Certificación a nombre de nuestra empresa y otras consolidas en el sector. Horarios flexibles, inicio todo los meses, incluido los fines de semana. Accesoria para formar su propio negocio, bolsa de trabajo. Prácticas en empresa consolidadas del sector.', NULL, 17),
(5, 'Valores', '', 'Innovación constante.  Responsabilidad y ética profesional. Excelencia y eficiencia. Honestidad y transparencia.', NULL, 18),
(6, 'Empresas', '', 'Empresa en crecimiento, ofrecemos capacitaciones profesionales a personal de empresa que prestan servicio técnico en reparación de celulares que están en crecimiento que deseen innovar u ofrecer nuevos servicios especializados.', NULL, 21),
(7, 'Instituciones Educativas', '', 'Ofrecemos  capacitaciones profesionales a academias, institutos, e universidades a nivel nacional  que se dedican a impartir cursos de reparación de celulares logrando así potenciar más su institución.', NULL, 22),
(8, 'Talleres Técnicos', '', 'Ofrecemos capacitaciones profesionales para empresa que con responsabilidad social, organizan eventos de talleres técnicos en zonas urbanas, populares y marginales; ofreciendo al público un ambiente adecuado e implementado para el merecido aprendizaje de los participantes ', NULL, 23),
(9, '', '', '', 'Empresas.jpg', 24),
(10, '', '', '', 'Nosotros.jpg', 19),
(11, 'innovando con maquinas de ultima generacion segun lo que el mercado actual exige', '', 'innovando con maquinas de ultima generacion segun lo que el mercado actual exige', 'Nosotros.jpg', 25),
(12, 'Titulo de la imagen', '', '', '1_Hardware.jpg', 1),
(13, '', '', '', '3_Hardware.jpg', 1),
(14, '', '', '', '3.jpg', 1),
(15, '', '', '', '4.jpg', 1),
(16, '', '', '', '2_Software.jpg', 1),
(17, '', '', '', '4_Software.jpg', 1),
(18, 'Cibercel', '', '', 'Logo_Cibercel_Cuadrado.svg', 6),
(19, '', '', '5_-NKRVn7IQ', 'Logo_Cibercel_Cuadrado.svg', 8),
(20, 'Curso Taller 100% practico', '', 'Curso Taller 100% practico', '1_Hardware.jpg', 20),
(21, 'Clases Personalizadas', '', 'Clases Personalizadas', '2_Software.jpg', 20),
(22, 'Egresados en poco tiempo', '', 'Egresados en poco tiempo', '3_Hardware.jpg', 20),
(23, 'Rapidez, inspiración laboral', '', 'Rapidez, inspiración laboral', '4_Software.jpg', 20),
(24, 'Convivimos con empresas para practicas de egresados', '', 'Convivimos con empresas para practicas de egresados', '4.jpg', 20),
(25, 'Email', '', 'info@cibercel.com', '3_Hardware.jpg', 11),
(26, 'Telefono fijo', '', '545882555', '3_Hardware.jpg', 10),
(27, '+514855655', '', '', '3_Hardware.jpg', 9),
(28, 'Facebook', '', '', '3_Hardware.jpg', 2),
(29, 'Youtube', '', '', '3_Hardware.jpg', 3),
(30, 'Instagram', '', '', '3_Hardware.jpg', 4),
(31, 'Direccion', '', 'calle otero 256', '3_Hardware.jpg', 12),
(32, 'Encuentranos', '', 'https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d657.3327828530869!2d-71.53128793309871!3d-16.404793929746237!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d-16.4049583!2d-71.531393!5e0!3m2!1ses!2spe!4v1532991123232', '3_Hardware.jpg', 13);

create table Courses (
	id int not null AUTO_INCREMENT,
	title varchar(255),
	subtitle varchar(255),
	content MEDIUMTEXT,
	img varchar(255),
	ico varchar(255),
	tag_id int not null,
	primary key (id),
	foreign key (tag_id) references Tags (id)
);

INSERT INTO `Courses` (`id`, `title`, `subtitle`, `content`, `img`, `ico`, `tag_id`) VALUES
(1, 'Reparación profesional de Celulares y Tablet', 'Hardware', 'Al culminar los módulos de Hardware, usted estará capacitado profesionalmente para reconocer una gran variedad de fallas en Hardware, diagnosticará sus causas y logrará darles una solución óptima y apropiada a cada falla, garantizando así su éxito inmediato en el servicio técnico profesional de Celulares y Tablets en el nivel Hardware.', 'Hardware.jpg', '', 7),
(2, 'Reparación profesional de Celulares y Tablet', 'Software', 'Al culminar los módulos de Software, usted estará capacitado profesionalmente para reconocer una gran variedad de fallas en Software, diagnosticará sus causas y logrará darles una solución óptima y apropiada a cada falla, garantizando así su éxito inmediato en el servicio técnico profesional de Celulares y Tablets en el nivel Software.', 'Software.jpg', '', 7);

create table Modules (
	id int not null AUTO_INCREMENT,
	title varchar(255),
	date_one varchar(255),
	date_two varchar(255),
	img varchar(255),
	course_id int not null,
	primary key (id),
	foreign key (course_id) references Courses (id)
);

INSERT INTO `Modules` (`id`, `title`, `date_one`, `date_two`, `img`, `course_id`) VALUES
(1, 'HARDWARE I', '3:00pm a 5:00pm', '9:00am a 3:00 pm', 'Modulo_1.jpg', 1),
(2, 'HARDWARE II', NULL, NULL, 'Modulo_2.jpg', 1),
(3, 'SOFTWARE I', NULL, NULL, 'Modulo_3.jpg', 2),
(4, 'SOFTWARE II', NULL, NULL, 'Modulo_4.jpg', 2);

create table Class (
	id int not null AUTO_INCREMENT,
	title varchar(255),
	subtitle MEDIUMTEXT,
	quantity varchar(255),
	img varchar(255),
	date_one varchar(255),
	date_two varchar(255),
	module_id int not null,
	primary key (id),
	foreign key (module_id) references Modules (id)
);

INSERT INTO `Class` (`id`, `title`, `subtitle`, `quantity`, `img`, `date_one`, `date_two`, `module_id`) VALUES
(1, 'Herramientas del servicio técnico profesional Revisión y diagnostico', 'Llenado de ficha de servicio técnico profesional', '1,2,3,4', NULL, NULL, NULL, 1),
(2, 'Elementos del celular y Tablets', 'Técnicas profesionales de desarme y ensamble de celulares y Tablets', '5,6,7,8', NULL, NULL, NULL, 1),
(3, 'Uso profesional del multímetro', 'Medición de voltajes (baterías y consumos)\r\nMedición de continuidad en placa (cortos)\r\nAdaptación de baterías disponibles\r\nSolución de error de batería con signo de admiración (!)', '3', NULL, 'null', 'null', 1),
(4, 'Uso profesional de fuente de alimentación', 'Rehabilitación de baterías\r\nSolución de bloqueo de voltaje en baterías\r\nMonitoreo de placas (detección de cortos)\r\n', '4', NULL, NULL, NULL, 1),
(5, 'Reparación de carga', 'Mediciones, seguimientos y detección de cortos\r\nReemplazos, adaptaciones, micro-soldadura y puentes (jumper)\r\n', '5', NULL, NULL, NULL, 1),
(6, 'Uso profesional de ultrasonido', 'Limpieza de profesional de placas con agua, humedad o sulfato\r\nDescarte de placas en corto o cruzadas\r\nReballing de algunos IC sulfatados\r\n', '6', NULL, NULL, NULL, 1),
(7, 'Reparación de audios, timbres y vibradores', 'Mediciones y diagnósticos de audios y vibradores\r\nReemplazos, adaptaciones, micro-soldadura y puentes (jumper)\r\n', '7', NULL, NULL, NULL, 1),
(8, 'Reparación de micrófonos', 'Mediciones y diagnósticos de micrófonos\r\nReemplazos, adaptaciones, micro-soldadura y puentes (jumper)\r\nInstalación de micrófonos universales\r\n', '9', NULL, NULL, NULL, 1),
(9, 'Reparación de pantallas: Táctil (Touch) Vidrio (Glass) LCD (Display)', 'Técnicas de separación de pantallas\r\nMétodo de desmontaje normal\r\nMétodo de plancha de calor y alambre\r\nMétodo de soldadura chinos\r\nMétodo criogénico\r\nTécnicas de instalación de pantallas\r\nMétodo de montaje normal\r\nMétodo de Gel y ultravioleta\r\nMétodo de soldadura chinos\r\nMétodo de Laminados OCA\r\n', '11', NULL, NULL, NULL, 1),
(10, 'Reparación de cámaras', 'Técnicas de desmontaje y montaje de cámaras\r\nMétodos de soldadura chinos\r\n', '12', NULL, NULL, NULL, 1),
(11, 'Reparación de conectores FPC y BTB', 'Técnicas de desmontaje y montaje\r\nDiagnóstico, reemplazo, micro-soldadura y puentes (jumper)\r\n', '13', NULL, NULL, NULL, 1),
(12, 'Reparación de conectores SIM y SD', 'Técnicas de desmontaje y montaje\r\nDiagnóstico, reemplazo, micro-soldadura y puentes (jumper)\r\n', '13', NULL, NULL, NULL, 1),
(13, 'Reparación de pulsadores: Volumen, cámara, inicio Botones táctiles', 'Técnicas de desmontaje y montaje\r\nDiagnóstico, reemplazo, micro-soldadura y puentes (jumper)\r\n', '14', NULL, NULL, NULL, 1),
(14, 'Manejo de clientes, proveedores, negocio Y calidad de servicio', 'Revisión y diagnósticos', '15', NULL, NULL, NULL, 1),
(15, 'Tecnología SMD', 'Técnicas de micro-soldadura cautín en componentes SMD', '16', NULL, NULL, NULL, 2),
(16, 'Micro-electrónica', 'Técnicas de micro-soldadura calor en componentes SMD', '18', NULL, NULL, NULL, 2),
(17, 'Resistores SMD', 'Simbología, mediciones, seguimientos, cortos y micro-soldadura', '1', NULL, NULL, NULL, 2),
(18, 'Condensadores SMD', 'Simbología, mediciones, seguimientos, cortos y micro-soldadura', '1', NULL, NULL, NULL, 2),
(19, 'Bobinas SMD', 'Simbología, mediciones, seguimientos, cortos y micro-soldadura', '1', NULL, NULL, NULL, 2),
(20, 'Diodos SMD', 'Simbología, mediciones, seguimientos, cortos y micro-soldadura', '1', NULL, NULL, NULL, 2),
(21, 'Transistores SMD', 'Simbología, mediciones, seguimientos, cortos y micro-soldadura', '1', NULL, NULL, NULL, 2),
(22, 'Manuales de servicio Diagramas de bloques Flujo y electrónico', 'Simbología, reconocimiento, descarga y análisis', '1', NULL, NULL, NULL, 2),
(23, 'Módulos de la tarjeta lógica (Board) Modulo: Power Suministro de energía (cargadores) IC Power Circuitos internos de carga de protección y regulación', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(24, 'Modulo: Procesamiento y memoria Microprocesadores CPU ALU, CLU, GPU y RAM Memorias Flash y ROM', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(25, 'Modulo: Radiofrecuencia RF, antena, Switch, filtros  trasmisión, amplificadores, Banda base RF, filtros EMI y SIM', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\nRetirar blindados con Motortool y Cautines personalizados\r\n', '1', NULL, NULL, NULL, 2),
(26, 'Modulo: Conectividad USB, Wifi, Bluetooh y GPS', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(27, 'Modulo: Audio Códec IC, filtros de audio, manos libres (Hands free), vibra', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(28, 'Modulo: Pantalla GPU, filtros de imagen, conectores FPC y BTB, Flex', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(29, 'Modulo: Sensores Cámara (lente y Sensor), acelerómetro IC, giroscopio IC, sensores de luz y proximidad. Sensores nuevos: temperatura, humedad, magnéticos y barómetro', 'Reconocimiento, diagnóstico y reparación \r\n(Reflow, Jumper, Reballing)\r\n', '1', NULL, NULL, NULL, 2),
(30, 'Actualización y tendencias: Procesadores, memorias, baterías, dimensiones, software', '', '1', NULL, NULL, NULL, 2),
(31, 'Métodos free (software gratuito) Métodos Profesional (software pagado)', '', '1', NULL, NULL, NULL, 3),
(32, 'Reparación nivel operador 1 Flexeos-liberaciones', 'Liberación método free (webs de operadoras)\r\nInstalación de software profesional Z3x y Octoplus-Pro para liberación de equipos Samsung y Lg\r\nInstalación de software profesional Sigma para la liberación de equipos Huawei y Motorola\r\n', '1', NULL, NULL, NULL, 3),
(33, 'Reparación nivel operador 2 Reparación de IMEI cumpliendo las normas legales', 'Verificación web de IMEI de OSIPTEL\r\nUso de software profesional Z3x y Octoplus-Pro para reparación de IMEI de equipos Samsung y Lg\r\nUso de software profesional Sigma para reparación de IMEI de equipos Huawei y Motorola\r\n', '1', NULL, NULL, NULL, 3),
(34, 'Reparación nivel Android Reparación de Patron y contraseña', 'Aplicar métodos free: Hard Reset, Recovery en equipos Samsung, Lg, Huawei y Motorola\r\nChinos y clones, boxes crackeadas \r\nUso de software profesional Z3x y Octoplus-Pro para reparación de patron y contraseña de equipos Samsung y Lg\r\nUso de software profesional Sigma para reparación de patron y contraseña de equipos Huawei y Motorola\r\n', '1', NULL, NULL, NULL, 3),
(35, 'Reparación de cuentas Google-FRP', 'Aplicar métodos free: OTG, USB, APK y trucos en equipos Samsung, Lg, Huawei y Motorola\r\nChinos y clones, boxes crackeadas \r\nUso de software profesional Z3x y Octoplus-Pro para reparación de cuentas Google-FRP de equipos Samsung y Lg\r\nUso de software profesional Sigma para reparación de cuentas Google-FRP de equipos Huawei y Motorola\r\n', '1', NULL, NULL, NULL, 3),
(36, 'Reparación de OEM-Bootloader Rooteo', 'Aplicar métodos free para el Rooteo en equipos Samsung, Lg, Huawei y Motorola\r\nSoftware, APK y Zip\r\nChinos y clones, boxes crackeadas \r\nUso de software profesional Z3x y Octoplus-Pro para reparación de OEM-Bootloader de equipos Samsung y Lg\r\nUso de software profesional Sigma para reparación de OEM-Bootloader de equipos Huawei y Motorola\r\n', '1', NULL, NULL, NULL, 3),
(37, 'Reparación nivel iOS Apple-iPhone', 'Eliminar iCloud desde el menú\r\niTunes\r\n', '1', NULL, NULL, NULL, 3),
(38, 'Diagnóstico del Flasheo Reparación de sistemas operativos', '', '1', NULL, NULL, NULL, 4),
(39, 'Flasheo nivel Android Reparación de sistemas operativos en Samsung y Lg con métodos free (gratuitos) y profesionales (pagados)', 'Instalación de software free ODIN y Lg Flash Tool e instalación de Drivers Android de Samsung y Lg\r\nDescarga de Firmwares-ROM de la web para equipos Samsung y Lg\r\nProcedimiento de Flasheo con software free ODIN y Lg Flash Tool en equipos Samsung y Lg (incluido Tablets)\r\nInstalación de software profesional Z3x y Octoplus-Pro e instalación de Drivers Android de Samsung y Lg\r\nDescarga de Firmwares-ROM con software profesional Z3x y Octoplus-Pro para equipos Samsung y Lg\r\nProcedimiento de Flasheo con software profesional Z3x y Octoplus-Pro en equipos Samsung y Lg (incluido Tablets)\r\n', '1', NULL, NULL, NULL, 4),
(40, 'Flasheo en Huawei y Motorola', 'Instalación de software free Sp Flash Tool e instalación de Drivers Android de Huawei y Motorola\r\nDescarga de Firmwares-ROM de la web para equipos Huawei y Motorola\r\nProcedimiento de Flasheo con software free Sp Flash Tool en equipos Huawei y Motorola (incluido Tablets)\r\nInstalación de software profesional Sigma e instalación de Drivers Android de Huawei y Motorola\r\nDescarga de Firmwares-ROM con software profesional Sigma para equipos Huawei y Motorola\r\nProcedimiento de Flasheo con software profesional Sigma en equipos Huawei y Motorola (incluido Tablets)\r\n', '1', NULL, NULL, NULL, 4),
(41, 'Flasheos en Chinos y Coreanos Tipos de Microprocesadores MTK, Allwinner y Spectrum', 'Instalación de software free para MTK, Allwinner y Spectrum y Drivers \r\nDescarga de Firmwares-ROM de la web para equipos MTK, Allwinner y Spectrum\r\nProcedimiento de Flasheo con software free en equipos MTK, Allwinner y Spectrum\r\nInstalación de software profesional Sigma e instalación de Drivers Android para equipos MTK, Allwinner y Spectrum\r\nDescarga de Firmwares-ROM con software profesional Sigma para equipos MTK, Allwinner y Spectrum \r\nProcedimiento de Flasheo con software profesional Sigma en equipos MTK, Allwinner y Spectrum\r\nProcedimiento de Flasheo con software profesional crackeado: Miracle, Furius, Chimera y otros\r\n', '1', NULL, NULL, NULL, 4),
(42, 'Flasheos y actualización nivel iOS Apple y iPhone', 'Instalación de software free iTunes y e instalación de Drivers iPhone\r\nDescarga de Firmwares de la web para iPhone, iPod y iPad\r\nProcedimiento de Restauración o actualización con software free iTunes en equipos iPhone, iPod y iPad\r\n', '1', NULL, NULL, NULL, 4);

-- insert into Tags ( title ) values 
-- 	('carrusel'),
-- 	('redes_sociales_facebook'),
-- 	('redes_sociales_youtube'),
-- 	('redes_sociales_instagram'),
-- 	('logo'),
-- 	('imagen_contenido'),
-- 	('cursos'),
-- 	('video'),
-- 	('Contacto_whatsappp'),/*nosotros*/
-- 	('Contacto_telefono_fijo'),/*nosotros*/
-- 	('Contacto_email'),/*nosotros*/
-- 	('Contacto_direccion'),/*nosotros*/
-- 	('Contacto_mapa'),/*nosotros*/
-- 	('nosotos_sobre_nosotros'),/*nosotros*/
-- 	('nosotros_mision'),/*nosotros*/
-- 	('nosotros_vision'),/*nosotros*/
-- 	('nosotros_ofrecemos'),/*nosotros*/
-- 	('nosotros_valores'),/*nosotros*/
-- 	('nosotros_img'),/*nosotros*/
-- 	('ventajas_beneficios'),
-- 	('empresa_contenido'),/*empresa*/
-- 	('empresa_instituciones_educativas '),/*empresa*/
-- 	('empresa_talleres_tecnicos'),/*empresa*/
-- 	('empresa_img'),/*empresa*/
-- 	('lema');




