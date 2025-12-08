 INSERT INTO asistente(`nombre`,`apellidos`,`tipo_documento`,`num_documento`,`direccion`,`genero`,`celular`,`email`,`usuario`,`contrasena`,`estado`)
VALUES
  ("Shoshana","Riddle","TI","35865231.0950406566","Ap #368-5189 Lorem Road","F","+575413588459","donec@hotmail.org","sem","MZQ54HKH2SQ","activo"),
  ("Darrel","Cross","Permiso","35865230.9587861896","483-6744 Dictum Avenue","M","+576527388416","lorem@outlook.com","convallis","PCU76CGM7JC","inactivo"),
  ("Travis","Conley","Pasaporte","35865231.2725011930","Ap #237-8538 Sollicitudin Ave","F","+579822296875","tellus.imperdiet@yahoo.com","Duis","OGW02NJC6TK","inactivo"),
  ("Carlos","Berry","TI","35865230.5705732480","Ap #665-7739 Nec Street","M","+577471846877","quisque.imperdiet.erat@gmail.com","Class","JPH85CBI5TI","inactivo"),
  ("Kenyon","Bruce","CC","35865231.2143614963","P.O. Box 755, 9128 Dolor. Rd.","F","+577159426775","duis.at.lacus@hotmail.com","scelerisque","PLE59KXI4KE","inactivo"),
  ("Simon","Mckinney","TI","35865231.2332971543","370-1759 Enim, Ave","F","+573686711324","scelerisque@sena.com","dignissim","OUM30SAO2TJ","activo"),
  ("Xenos","Villarreal","CC","35865230.7601645738","P.O. Box 978, 8931 Suspendisse Ave","F","+576566292237","fringilla.mi.lacinia@gmail.com","Proin","EMU77HDZ2XB","activo"),
  ("Ciara","Yates","Permiso","35865231.3506333306","772-8792 Adipiscing Rd.","F","+574484854358","euismod@hotmail.es","lorem","RMR63SFQ3RN","activo");
  
  UPDATE asistente SET nombre ="Pepito" WHERE id_asistente =4;
   DELETE FROM asistente Where id_asistente = 6; 
 
 
 
UPDATE citas SET estado=pendiente WHERE id_cita=9;
DELETE FROM citas Where notas = "Se realiza proceso de mantenimeinto realizando, lavado,alisado,y keratina";

INSERT INTO cliente (`id_cliente`,`nombre`,`celular`,`email`,`direccion`)
VALUES
(7,"Baker Guy","(258) 812-1616","at@hotmail.com","409-7298 Volutpat. St."),
(5,"Medge Richmond","(646) 625-1426","ut.tincidunt@yahoo.edu","Ap #969-3313 Orci Road"),
(2,"Alma Scott","(172) 604-8681","sed.et.libero@protonmail.ca","P.O. Box 224, 3959 Nunc Avenue"),
(8,"Keefe Wiggins","(654) 497-9512","egestas.hendrerit.neque@yahoo.org","Ap #951-4745 Lobortis Road"),
(10,"Felix Fitzgerald","(647) 913-8437","consectetuer.rhoncus.nullam@protonmail.com","P.O. Box 131, 3625 Eleifend. Avenue"),
(3,"Stephanie Higgins","(669) 588-6651","odio.a.purus@outlook.ca","374-6271 Sed St."),
(1,"Ina Byers","(464) 802-8479","dolor.tempus@icloud.couk","Ap #264-5369 A, St."),
(6,"Allistair Riddle","1-381-323-6517","leo.in@yahoo.edu","187-8992 Non, Street");

INSERT INTO historial_visitas (`id_historial`,`fecha_visita`,`motivo_visita`,`tratamiento`,`observaciones`,`estado_cita`)
VALUES
(7,"2025-02-16","Primera vez","En proceso","Se envía compra de cremas depiladoras,","Reprogramada"),
(4,"2025-06-05","Tratamiento","En proceso","El cliente muestra respuesta al tratamiento","Completada"),
(1,"2024-11-25","Primera vez","Completado","Cita cancelada por motivos persoanles","cancelada"),
(3,"2025-06-05","Tratamiento","Completado","Se envía tratamiento para hidratación de piel de axilas y piernas","Completada"),
(8,"2025-08-01","Tratamiento","Completado","Cita reprogramada para el día siguiente","Reprogramada"),
(2,"2025-08-10","Primera vez","Completado","commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,","cancelada"),
(6,"2024-11-25","Tratamiento","Completado","ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat","Reprogramada"),
(9,"2024-01-30","Tratamiento","Completado","tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.","Reprogramada");

INSERT INTO profesional (`id_profesional`,`nombre`,`apellido`,`email`,`celular`,`direccion`,`especialidad`,`genero`,`estado`)
VALUES
(7,"Erica","Cote","a.mi@yahoo.net","(942) 537-3468","Ap #290-3258 Libero. Road","cejas hilo y cera","F","Inactivo"),
(2,"Carter","Blackwell","eu.tellus.eu@outlook.ca","1-896-938-2441","Ap #633-6250 Aliquam Ave","Depilaciones","F","Inactivo"),
(8,"Kelly","Dalton","consectetuer.adipiscing.elit@hotmail.org","(177) 651-0241","253-4294 Lorem, Rd.","depilacion bigote","M","Activo"),
(6,"Daquan","Brooks","cursus.in@outlook.couk","(363) 522-8215","P.O. Box 620, 9747 Non Ave","pestañas 3d(duplicate)","F","Inactivo"),
(10,"Veronica","Bush","mauris.aliquam.eu@protonmail.couk","(586) 481-5312","653-9969 Nascetur Avenue","cepillados","F","Inactivo"),
(9,"Kennan","Ingram","quis@aol.edu","(861) 525-6851","222-8831 Phasellus Ave","micropigmentacion labios primera seccion","M","Inactivo"),
(4,"Isaiah","Rush","turpis.nec.mauris@hotmail.com","(881) 625-3956","140-4387 Primis Av.","lifting pestaña","F","Activo"),
(3,"Raja","Campos","aenean.eget@icloud.couk","1-333-813-7560","Ap #311-8145 Neque St.","retoque pestañas","F","Inactivo");


INSERT INTO propietario (`id_propietario`,`nombre`,`apellidos`,`tipo_documento`,`num_documento`,`direccion`,`genero`,`celular`,`email`,`usuario`,`contrasena`,`estado`)
VALUES
(1,"Laura","Fuentes","CC","1118960524","Ap #368-5189 Lorem Road","F","+575413588459","laurafh7@gmail.com","lau","MZQ54HKH2SQ","activo");


INSERT INTO recomendaciones (`id_recomendaciones`,`tipo_recomendacion`,`descripcion`,`producto`,`frecuencia_uso`,`tiempo_sugerido`,`prioridad`,`estado`,`observaciones`)
VALUES
(4,"Tratamiento","Se recomienda seguir paso a paso el tratamiento para el cuidado de las cejas","sombras para cejas ","Alto","31-12-25","Media","Pendiente","Suspención de producto post depilatorio"),
(6,"Tratamiento","Se recomienda seguir paso a paso el tratamiento para el retoque micropigmentacion labios","Pigmentos profesionales","Medio","31-12-25","Media","Realizada","Envío de nuevo tratamiento capilar"),
(2,"Tratamiento","Se recomienda  cuidados especificos en salón y en casa","pestañas 3d 5d","Bajo","31-12-25","Baja","Omitida","Suspención de producto post depilatorio"),
(3,"Producto","El cliente manifiesta mejoria y finaliza el tratamiento","depilacion pierna completa","Medio","31-12-25","Baja","Pendiente","Suspención de producto post depilatorio"),
(9,"Tratamiento","Se recomienda evitar calor y humedad","Cuidado post depilatorio","Bajo","31-12-25","Media","Realizada","Suspención de producto facial"),
(7,"Tratamiento","El cliente manifiesta mejoria y finaliza el tratamiento","Cuidado facial","Medio","31-12-25","Alta","Omitida","Continuidad del tratamiento"),
(1,"Producto","El cliente manifiesta mejoria y finaliza el tratamiento","Cuidado cabello","Alto","31-12-25","Baja","Pendiente","Suspención de producto post depilatorio"),
(5,"Tratamiento","Se recomienda para el cuidado del cepillo usar cepillos de cerdas mixtas","usar productos protectores ","Medio","31-12-25","Baja","Pendiente","Envío de nuevo tratamiento capilar");


INSERT INTO salon_atencion (`id_salonatencion`,`nombre`,`hora_atencion`,`especialidades`,`capacidad`,`estado`)
VALUES
(9,"Salon 1","9:12 am","lifting pestañas",2,"Activo"),
(3,"Salon 1","5:49 pm","depilacion bikini completo",2,"Activo"),
(2,"Salon 1","12:51 pm","cejas hilo y cera",2,"Inactivo"),
(8,"Salon 1","6:46 pm","depilacion cara",1,"Activo"),
(1,"Salon 1","10:48 am","pestañas 3d(duplicate",1,"Inactivo"),
(7,"Salon 1","1:27 pm","pestañas clasicas",2,"Activo"),
(6,"Salon 1","2:05 pm","depilacion bikini completo",2,"Inactivo"),
(4,"Salon 1","3:10 pm","cepillados",1,"activo");

SELECT * FROM citas;
TRUNCATE TABLE citas;
SELECT * FROM citas;
INSERT INTO citas (`estado`,`fecha_hora`,`id_asistente`,`id_cliente`,`id_historial`,`id_profesional`,`id_propietario`,`id_recomendaciones`,`id_salonatencion`,`motivo`,`notas`)
VALUES
  ("cancelada","2025-06-09 07:27:32",4,1,4,8,1,1,3,"Primera vez","Se inicia proceso de tratamiento cepillados"),
  ("pendiente","2026-06-19 03:03:40",1,2,3,2,1,2,6,"Tratamiento","Se formula tratamiento pestañas 3d(duplicate"),
  ("cancelada","2024-12-16 23:04:38",2,3,4,7,1,3,8,"Primera vez","Se inicia proceso de tratamiento micropigmentacion labios primera seccion,"),
  ("pendiente","2025-08-09 23:04:50",3,5,6,2,1,4,4,"Tratamiento","Se formula tratamiento micropigmentacion cejas primera seccion"),
  ("completada","2025-05-23 15:12:29",5,6,4,6,1,5,9,"Primera vez","Se inicia proceso de tratamiento cejas_henna,"),
  ("cancelada","2025-09-05 02:27:45",5,7,3,7,1,6,7,"Tratamiento,","Se formula tratamiento para cabello"),
  ("pendiente","2026-02-22 13:32:46",2,8,6,2,1,7,2,"Primera vez","Se inicia proceso de tratamiento capilarc"),
  ("completada","2025-01-16 03:11:00",1,10,8,7,1,9,1,"Tratamiento","Se formula tratamiento depilacion con cera");

UPDATE citas SET id_cliente=1  where id_cita =9; 