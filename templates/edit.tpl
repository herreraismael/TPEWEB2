{include file="header.tpl"}

<form action="edit" method="POST">
    Titulo<input value="{$noticia->titulo}"class="form-control" type="text" name="titulo" required>
    Descripcion<input value="{$noticia->descripcion}"class="form-control" type="text" name="descripcion" required>
    Cuerpo<input value="{$noticia->cuerpo}" class="form-control" type="text"  name="cuerpo" required>
    ID<input name="id" value="{$noticia->id}" class="hidden">
    <select name="seccion">
        {foreach from=$secciones item=$seccion}
            <option value="{$seccion->id}">{$seccion->nombre}</option>
        {/foreach}
    </select>
    <button type="submit" class="success">Editar</button>
</form>

{include file="footer.tpl"}