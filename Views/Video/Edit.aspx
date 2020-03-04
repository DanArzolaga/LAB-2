<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <meta charset="UTF-8">
  <meta name="description" content="CRUD Video ASP.NET MVC 2.0">
  <meta name="keywords" content="ASP.NET, MVC, FACPYA">
  <meta name="author" content="Daniela Arzola">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />    
    <title>Editar video</title>
</head>
<body>
        <form action="/Video/Edit" method="post">
    <fieldset>
    <legend>Datos del video</legend>
        <Label for="idVideo">ID Video</Label>
        <input type="text" name="idVideo"  />

           <Label for="titulo">Titulo</Label>
        <input type="text" name="titulo"/>

           <Label for="repro">Reproducciones</Label>
        <input type="text" name="repro"/>

           <Label for="url">URL</Label>
        <input type="text" name="url"/>

        <input type="submit" value="Editar"  />

    </fieldset>
    </form>
</body>
</html>
