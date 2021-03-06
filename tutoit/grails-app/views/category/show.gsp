<%@ page import="tutoit.Category" %>
<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

<!-- Page Header -->
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">
            <g:fieldValue field="categoryName" bean="${categoryInstance}"/>
        </h3>

        <ol class="breadcrumb">
            <li>
                <i class="fa fa-th-list"></i>
                <a class="pageHeader" href="${createLink(controller: 'category', action: 'categories')}">
                    Categorias
                </a>
            </li>
            <li class="active">
                <i class="fa fa-floppy-o"></i> ${categoryInstance.categoryName}
            </li>
        </ol>
    </div>
</div>
<!-- .row -->
<div class="row">
    <div class="col-lg-12">
        <ul class="list-group">
            <li class="list-group-item">
                ${categoryInstance.categoryDescription}
            </li>
        </ul>
    </div>
</div>
<div class="row">
    <g:each in="${jsLinks}" var="video">
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <a class="alert-link" href="#${video[2]}" role="button" data-toggle="modal">
                    <img src="${video[3]}">
                </a>
                <div class="caption">
                    <h5>
                        ${video[0]}
                    </h5>
                    <g:link controller="video" action="show" id="${video[2].minus("showVideo")}" class="btn btn-danger">
                        Página
                    </g:link>

                </div>
            </div>
        </div>


        <div id="${video[2]}" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    </div>

                    <div class="modal-body">
                        <iframe width="480" height="320" src="${video[1]}" frameborder="0" allowfullscreen></iframe>
                    </div>

                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
    </g:each>
</div>

<!--
<div id="show-category" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <ol class="property-list category">

        <g:if test="${categoryInstance?.categoryName}">
            <li class="fieldcontain">
                <span id="categoryName-label" class="property-label"><g:message code="category.categoryName.label" default="Nome : " /></span>
                <span class="property-value" aria-labelledby="categoryName-label">
                    <g:fieldValue bean="${categoryInstance}" field="categoryName"/>
                </span>

            </li>
        </g:if>

        <g:if test="${categoryInstance?.videos}">
        <li class="fieldcontain">
            <span id="videos-label" class="property-label"><g:message code="category.videos.label" default="Videos : " /></span>

                <g:each in="${categoryInstance.videos}" var="v">
                <span class="property-value" aria-labelledby="videos-label"><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
                </g:each>

        </li>
        </g:if>

        <g:if test="${categoryInstance?.subCategories}">
        <li class="fieldcontain">
            <span id="subCategories-label" class="property-label"><g:message code="category.subCategories.label" default="SubCategorias : " /></span>

                <g:each in="${categoryInstance.subCategories}" var="s">
                <span class="property-value" aria-labelledby="subCategories-label"><g:link controller="category" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
                </g:each>

        </li>
        </g:if>

        <g:if test="${categoryInstance?.categoryDescription}">
        <li class="fieldcontain">
            <span id="categoryDescription-label" class="property-label"><g:message code="category.categoryDescription.label" default="Descrição : " /></span>

                <span class="property-value" aria-labelledby="categoryDescription-label"><g:fieldValue bean="${categoryInstance}" field="categoryDescription"/></span>

        </li>
        </g:if>

        <g:if test="${categoryInstance?.eSubcategoria}">
        <li class="fieldcontain">
            <span id="eSubcategoria-label" class="property-label"><g:message code="category.eSubcategoria.label" default="subcategoria" /></span>

                <span class="property-value" aria-labelledby="eSubcategoria-label"><g:formatBoolean boolean="${categoryInstance?.eSubcategoria}" /></span>

        </li>
        </g:if>

    </ol>

    <sec:ifAllGranted roles="ROLE_ADMIN">
        <g:form>
            <fieldset class="buttons">
                <g:hiddenField name="id" value="${categoryInstance?.id}" />
                <g:link class="edit" action="edit" id="${categoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>
    </sec:ifAllGranted>
</div>
-->
</body>
</html>
