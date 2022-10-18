{include file="header.tpl"}

{foreach from=$noticias item=$noticia}

<div class="card" style="width: 18rem;">
    <div class="card-body">
        <h5 class="card-title">{$noticia->titulo}</h5>
        <p class="card-text">{$noticia->descripcion}</p>
        <p class="card-text">{$noticia->cuerpo}</p>
    </div>
</div>

{/foreach}


{include file="footer.tpl"}