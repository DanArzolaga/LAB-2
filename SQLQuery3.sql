CREATE TABLE EMPLEADO
(
idEmp INT NOT NULL,
nombre varchar(50) not null,
telefono CHAR(10) NOT NULL,
edad INT NULL,

CONSTRAINT PK_EMPLEADO_IDEMP PRIMARY KEY(idEmp)
);

CREATE TABLE VIDEO
(
idVideo INT NOT NULL,
titulo VARCHAR(100) NOT NULL,
repro INT NOT NULL,
url VARCHAR(100) NOT NULL,

CONSTRAINT PK_VIDEO_IDVIDEO PRIMARY KEY(idVideo)
);



--strore procedure insertar
--eliminar  DROP PROCEDURE

CREATE PROCEDURE sp_video_insertar		
	@idVideo INT,
	@titulo VARCHAR(100),
	@repro INT,
	@url VARCHAR(100)
AS
BEGIN
	INSERT INTO VIDEO
	VALUES(@idVideo, @titulo, @repro, @url)
END

EXEC sp_video_insertar 1, 'Amour Plastic', 270000, 'https://www.youtube.com/embed/5NjJLFI_oYs'



--stored procedure para actualizar los datos de la tabla video
CREATE PROCEDURE sp_video_editar
	@idVideo INT,
	@titulo VARCHAR(100),
	@repro INT,
	@url VARCHAR(100)
AS
BEGIN
	UPDATE VIDEO
	SET @titulo=titulo, @repro=repro, @url=url
	WHERE @idVideo=idVideo
END

--stored procedure para eliminar los datos de la tabla video
CREATE PROCEDURE sp_video_eliminar
	@idVideo INT
AS
BEGIN
	DELETE FROM VIDEO
	WHERE @idVideo=idVideo
END


select * from video;


