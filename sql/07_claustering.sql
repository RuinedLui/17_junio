CREATE TABLE retail_dw.ventas_cluster
(
    id_venta INT64,
    fecha_venta DATE,
    id_cliente INT64,
    id_producto INT64,
    sucursal STRING,
    monto NUMERIC
)
PARTITION BY fecha_venta
CLUSTER BY sucursal;