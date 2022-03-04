SELECT * FROM bd_factsv2.tbl_asesores;
SELECT * FROM bd_factsv2.tbl_clientes;
SELECT * FROM bd_factsv2.tbl_facturas;
SELECT * FROM bd_factsv2.tbl_productos;
SELECT * FROM bd_factsv2.tbl_productos_facturados;


#eliminar procedimiento
DROP procedure IF EXISTS `registrar_producto`;
delimiter //
CREATE  PROCEDURE bd_factsv2.registrar_producto(
	in p_idfactura int,
    in p_idProductos int,
    in p_Cantidad int,
    in p_saldoUnidades int
    
)
Begin
    declare  v_idfactura int; 
	declare  v_idProductos int; 
	declare  v_Cantidad int;
    declare v_saldoUnidades  int;
	
	set v_idfactura 		    = p_idfactura;
	set v_idProductos	        = p_idProductos; 
    set v_Cantidad				= p_Cantidad;
    set v_saldoUnidades         = p_saldoUnidades;
    
    #crear registro del producto
    insert into bd_factsv2.tbl_productos_facturados(
             idProducto,idFactura,cantidad
	) values ( 
    v_idProductos,v_idfactura, v_Cantidad
    );
      commit;
 END; 
 INSERT INTO bd_factsv2.tbl_productos_facturados (idProducto,idFactura,cantidad) VALUES 
 ('1212', '3737', '333'); 
 
    CALL bd_factsv2.tbl_productos_facturados(
	1000,    			        # p_idProducto
    207,		            # p_idfactura;
    3,	                #p_Cantidad;
);

if saldoUnidades >= 30 then
    update bd_factsv2.tbl_productos  set 
	v_saldoUnidades         = p_saldoUnidades;
	v_idProductos	        = p_idProductos; 
    where saldoUnidades         = p_saldoUnidades;
else 

end if;
END;
/*
    