{include file="header.tpl"}



{foreach from=$secciones item=$seccion}  
    <a href="seccion/{$seccion->id}" class="btn btn-primary">{$seccion->nombre}</a>
    {if isset($smarty.session.USER_ID)}
               
        <a href="delete_seccion/{$seccion->id}" class="btn btn-danger">Eliminar</a>
        <a href="editForm_seccion/{$seccion->id}" class="btn btn-success">Editar</a>

    {/if}

{/foreach}

{if isset($smarty.session.USER_ID)}
    <form action="addSeccion" method="POST">
        Nombre<input class="form-control" type="text" name="nombre">
        <button type="submit">Agregar nueva seccion</button>
    </form>
{{/if}}

{include file="footer.tpl"}