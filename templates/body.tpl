{include file="header.tpl"}

{foreach from=$noticias item=$noticia}
    <div class="card" style="width: 18rem;">
        <div class="card-body">
            <h5 class="card-title">{$noticia->titulo}</h5>
            <p class="card-text">{$noticia->descripcion}</p>
            {foreach from=$secciones item=$seccion} 
            {if $noticia->seccion == $seccion->id}
                <p> {$seccion->nombre} </p>
            {{/if}}
            {/foreach}
            <a href="noticia/{$noticia->id}" class="btn btn-primary">Ver mas</a>
            {if isset($smarty.session.USER_ID)}
               
                <a href="delete_new/{$noticia->id}" class="btn btn-danger">Eliminar</a>
                <a href="edit_form/{$noticia->id}" class="btn btn-success">Editar</a>

            {/if}

        </div>
    </div>
{/foreach}

{if isset($smarty.session.USER_ID)}
    <form action="add" method="POST">
        Titulo<input class="form-control" type="text" name="titulo">
        Descripcion<input class="form-control" type="text" name="descripcion">
        Cuerpo<input class="form-control" type="text" name="cuerpo">
        <select name="seccion">
            {foreach from=$secciones item=$seccion}
                <option value="{$seccion->id}">{$seccion->nombre}</option>
            {/foreach}
        </select>
        <button type="submit">Agregar</button>
    </form>
{{/if}}



{include file="footer.tpl"}