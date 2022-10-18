{include file="header.tpl"}


<form action="editSeccion" method="POST">
        Nombre<input class="form-control" type="text" name="nombre">
        <input name="id" value="{$seccion->id}" style=display:none>
        <button type="submit">Editar nueva seccion</button>
</form>


{include file="footer.tpl"}