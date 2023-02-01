/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      Soft
 * Project :      Modelo_Sistema_Sucursales.DM1
 * Author :       Leandro
 *
 * Date Created : Sunday, January 29, 2023 18:26:54
 * Target DBMS : Microsoft SQL Server 7.x
 */

/* 
 * TABLE: Cliente 
 */

CREATE TABLE Cliente(
    id_cliente           int            NOT NULL,
    nombre_cliente       varchar(80)    NULL,
    apellido_cliente     varchar(80)    NULL,
    direccion_cliente    varchar(80)    NULL,
    telefono_cliente     varchar(80)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (id_cliente)
)
go



IF OBJECT_ID('Cliente') IS NOT NULL
    PRINT '<<< CREATED TABLE Cliente >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Cliente >>>'
go

/* 
 * TABLE: Compra 
 */

CREATE TABLE Compra(
    id_compra           int               NOT NULL,
    fecha_compra        datetime          NULL,
    monto_compra        decimal(80, 0)    NULL,
    id_proveedor        int               NOT NULL,
    id_usuario          int               NOT NULL,
    id_estado_compra    int               NOT NULL,
    id_tipo_pago        int               NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (id_compra)
)
go



IF OBJECT_ID('Compra') IS NOT NULL
    PRINT '<<< CREATED TABLE Compra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Compra >>>'
go

/* 
 * TABLE: Detalle_Compra 
 */

CREATE TABLE Detalle_Compra(
    id_detalleCompra    int    NOT NULL,
    id_compra           int    NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (id_detalleCompra)
)
go



IF OBJECT_ID('Detalle_Compra') IS NOT NULL
    PRINT '<<< CREATED TABLE Detalle_Compra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Detalle_Compra >>>'
go

/* 
 * TABLE: Detalle_Presupuesto 
 */

CREATE TABLE Detalle_Presupuesto(
    id_detallePresupuesto    int               NOT NULL,
    id_presupuesto           int               NOT NULL,
    codigo                   varchar(80)       NULL,
    descripcion              varchar(80)       NULL,
    cantidad                 int               NULL,
    unitario                 decimal(80, 0)    NULL,
    subtotal                 decimal(80, 0)    NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (id_detallePresupuesto)
)
go



IF OBJECT_ID('Detalle_Presupuesto') IS NOT NULL
    PRINT '<<< CREATED TABLE Detalle_Presupuesto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Detalle_Presupuesto >>>'
go

/* 
 * TABLE: Detalle_Venta 
 */

CREATE TABLE Detalle_Venta(
    id_detalleventa    int               NOT NULL,
    id_venta           int               NOT NULL,
    codigo             varchar(80)       NULL,
    descripcion        varchar(80)       NULL,
    cantidad           varchar(80)       NULL,
    unitario           decimal(80, 0)    NULL,
    subtotal           decimal(80, 0)    NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (id_detalleventa)
)
go



IF OBJECT_ID('Detalle_Venta') IS NOT NULL
    PRINT '<<< CREATED TABLE Detalle_Venta >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Detalle_Venta >>>'
go

/* 
 * TABLE: Estado_Compra 
 */

CREATE TABLE Estado_Compra(
    id_estado_compra             int            NOT NULL,
    descripcion_estado_compra    varchar(80)    NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (id_estado_compra)
)
go



IF OBJECT_ID('Estado_Compra') IS NOT NULL
    PRINT '<<< CREATED TABLE Estado_Compra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Estado_Compra >>>'
go

/* 
 * TABLE: Estado_Producto 
 */

CREATE TABLE Estado_Producto(
    id_estado         int            NOT NULL,
    detalle_estado    varchar(80)    NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (id_estado)
)
go



IF OBJECT_ID('Estado_Producto') IS NOT NULL
    PRINT '<<< CREATED TABLE Estado_Producto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Estado_Producto >>>'
go

/* 
 * TABLE: Estado_Transferencia 
 */

CREATE TABLE Estado_Transferencia(
    id_estado_transferencia    int            NOT NULL,
    nombre_estado              varchar(80)    NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (id_estado_transferencia)
)
go



IF OBJECT_ID('Estado_Transferencia') IS NOT NULL
    PRINT '<<< CREATED TABLE Estado_Transferencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Estado_Transferencia >>>'
go

/* 
 * TABLE: Permiso 
 */

CREATE TABLE Permiso(
    id_permiso        int            NOT NULL,
    nombre_permiso    varchar(80)    NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (id_permiso)
)
go



IF OBJECT_ID('Permiso') IS NOT NULL
    PRINT '<<< CREATED TABLE Permiso >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Permiso >>>'
go

/* 
 * TABLE: Presupusto 
 */

CREATE TABLE Presupusto(
    id_presupuesto       int               NOT NULL,
    fecha_presupuesto    datetime          NULL,
    monto_presupuesto    decimal(80, 0)    NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (id_presupuesto)
)
go



IF OBJECT_ID('Presupusto') IS NOT NULL
    PRINT '<<< CREATED TABLE Presupusto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Presupusto >>>'
go

/* 
 * TABLE: Producto 
 */

CREATE TABLE Producto(
    id_producto                   int               NOT NULL,
    cod_barras_primario           varchar(80)       NULL,
    cod_barras_secundario         varchar(80)       NULL,
    descripcion_producto          varchar(80)       NULL,
    precio_costo                  decimal(80, 0)    NULL,
    precio_venta                  decimal(80, 0)    NULL,
    ultima_fecha_actualizacion    datetime          NULL,
    stock                         int               NULL,
    id_sucursal                   int               NOT NULL,
    id_estado                     int               NOT NULL,
    id_rubro                      int               NOT NULL,
    id_proveedor                  int               NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (id_producto)
)
go



IF OBJECT_ID('Producto') IS NOT NULL
    PRINT '<<< CREATED TABLE Producto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Producto >>>'
go

/* 
 * TABLE: Proveedor 
 */

CREATE TABLE Proveedor(
    id_proveedor           int            NOT NULL,
    nombre_proveedor       varchar(80)    NULL,
    direccion_proveedor    varchar(80)    NULL,
    telefono_proveedor     varchar(80)    NULL,
    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (id_proveedor)
)
go



IF OBJECT_ID('Proveedor') IS NOT NULL
    PRINT '<<< CREATED TABLE Proveedor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Proveedor >>>'
go

/* 
 * TABLE: Rubro 
 */

CREATE TABLE Rubro(
    id_rubro             int            NOT NULL,
    id_proveedor         int            NOT NULL,
    descripcion_rubro    varchar(80)    NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (id_rubro, id_proveedor)
)
go



IF OBJECT_ID('Rubro') IS NOT NULL
    PRINT '<<< CREATED TABLE Rubro >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Rubro >>>'
go

/* 
 * TABLE: Sucursal 
 */

CREATE TABLE Sucursal(
    id_sucursal           int            NOT NULL,
    nombre_sucursal       varchar(80)    NULL,
    ubicacion_sucursal    varchar(80)    NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (id_sucursal)
)
go



IF OBJECT_ID('Sucursal') IS NOT NULL
    PRINT '<<< CREATED TABLE Sucursal >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Sucursal >>>'
go

/* 
 * TABLE: Tipo_Pago 
 */

CREATE TABLE Tipo_Pago(
    id_tipo_pago        int            NOT NULL,
    descripcion_pago    varchar(80)    NULL,
    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (id_tipo_pago)
)
go



IF OBJECT_ID('Tipo_Pago') IS NOT NULL
    PRINT '<<< CREATED TABLE Tipo_Pago >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Tipo_Pago >>>'
go

/* 
 * TABLE: Tranferencia 
 */

CREATE TABLE Tranferencia(
    id_transferencia           int            NOT NULL,
    fecha_transferencia        datetime       NULL,
    transferencia_desde        varchar(80)    NULL,
    transferencia_hasta        varchar(80)    NULL,
    id_sucursal                int            NOT NULL,
    id_usuario                 int            NOT NULL,
    id_estado_transferencia    int            NOT NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (id_transferencia)
)
go



IF OBJECT_ID('Tranferencia') IS NOT NULL
    PRINT '<<< CREATED TABLE Tranferencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Tranferencia >>>'
go

/* 
 * TABLE: Usuario 
 */

CREATE TABLE Usuario(
    id_usuario             int            NOT NULL,
    id_permiso             int            NOT NULL,
    nombre_usuario         varchar(80)    NULL,
    contrasenha_usuario    varchar(80)    NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (id_usuario)
)
go



IF OBJECT_ID('Usuario') IS NOT NULL
    PRINT '<<< CREATED TABLE Usuario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Usuario >>>'
go

/* 
 * TABLE: Venta 
 */

CREATE TABLE Venta(
    id_venta        int               NOT NULL,
    id_cliente      int               NOT NULL,
    fecha_venta     datetime          NULL,
    monto_venta     decimal(80, 0)    NULL,
    id_usuario      int               NOT NULL,
    id_tipo_pago    int               NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (id_venta)
)
go



IF OBJECT_ID('Venta') IS NOT NULL
    PRINT '<<< CREATED TABLE Venta >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Venta >>>'
go

/* 
 * TABLE: Compra 
 */

ALTER TABLE Compra ADD CONSTRAINT RefProveedor13 
    FOREIGN KEY (id_proveedor)
    REFERENCES Proveedor(id_proveedor)
go

ALTER TABLE Compra ADD CONSTRAINT RefUsuario16 
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
go

ALTER TABLE Compra ADD CONSTRAINT RefEstado_Compra17 
    FOREIGN KEY (id_estado_compra)
    REFERENCES Estado_Compra(id_estado_compra)
go

ALTER TABLE Compra ADD CONSTRAINT RefTipo_Pago19 
    FOREIGN KEY (id_tipo_pago)
    REFERENCES Tipo_Pago(id_tipo_pago)
go


/* 
 * TABLE: Detalle_Compra 
 */

ALTER TABLE Detalle_Compra ADD CONSTRAINT RefCompra14 
    FOREIGN KEY (id_compra)
    REFERENCES Compra(id_compra)
go


/* 
 * TABLE: Detalle_Presupuesto 
 */

ALTER TABLE Detalle_Presupuesto ADD CONSTRAINT RefPresupusto3 
    FOREIGN KEY (id_presupuesto)
    REFERENCES Presupusto(id_presupuesto)
go


/* 
 * TABLE: Detalle_Venta 
 */

ALTER TABLE Detalle_Venta ADD CONSTRAINT RefVenta2 
    FOREIGN KEY (id_venta)
    REFERENCES Venta(id_venta)
go


/* 
 * TABLE: Producto 
 */

ALTER TABLE Producto ADD CONSTRAINT RefSucursal6 
    FOREIGN KEY (id_sucursal)
    REFERENCES Sucursal(id_sucursal)
go

ALTER TABLE Producto ADD CONSTRAINT RefEstado_Producto10 
    FOREIGN KEY (id_estado)
    REFERENCES Estado_Producto(id_estado)
go

ALTER TABLE Producto ADD CONSTRAINT RefRubro12 
    FOREIGN KEY (id_rubro, id_proveedor)
    REFERENCES Rubro(id_rubro, id_proveedor)
go


/* 
 * TABLE: Rubro 
 */

ALTER TABLE Rubro ADD CONSTRAINT RefProveedor15 
    FOREIGN KEY (id_proveedor)
    REFERENCES Proveedor(id_proveedor)
go


/* 
 * TABLE: Tranferencia 
 */

ALTER TABLE Tranferencia ADD CONSTRAINT RefSucursal7 
    FOREIGN KEY (id_sucursal)
    REFERENCES Sucursal(id_sucursal)
go

ALTER TABLE Tranferencia ADD CONSTRAINT RefUsuario9 
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
go

ALTER TABLE Tranferencia ADD CONSTRAINT RefEstado_Transferencia11 
    FOREIGN KEY (id_estado_transferencia)
    REFERENCES Estado_Transferencia(id_estado_transferencia)
go


/* 
 * TABLE: Usuario 
 */

ALTER TABLE Usuario ADD CONSTRAINT RefPermiso4 
    FOREIGN KEY (id_permiso)
    REFERENCES Permiso(id_permiso)
go


/* 
 * TABLE: Venta 
 */

ALTER TABLE Venta ADD CONSTRAINT RefCliente1 
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente(id_cliente)
go

ALTER TABLE Venta ADD CONSTRAINT RefUsuario8 
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
go

ALTER TABLE Venta ADD CONSTRAINT RefTipo_Pago18 
    FOREIGN KEY (id_tipo_pago)
    REFERENCES Tipo_Pago(id_tipo_pago)
go


