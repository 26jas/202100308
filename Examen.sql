select 
	a.numeroID, 
    concat(a.nombres,' ' ,a.apellidos) Nombre,
    a.apellidos,
    cantClientes
   
from bd_facts.tbl_asesores a 
left join bd_facts.tbl_clientes b 
on a.idAsesor = b.idAsesor 
where b.idAsesor is null;


select
cl.idcliente,
cl.nombrecompleto,
F.idfactura,
F.fechaemision,
F.fechavencimiento,
F.fechapagada
from tbl_facturas F inner join tbl_clientes cl on F.idCliente = cl.idCliente
where F.fechaVencimiento between '2022-01-01 22:36:30' and '2022-02-10 04:11:10';