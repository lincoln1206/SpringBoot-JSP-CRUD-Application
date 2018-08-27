<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"></jsp:include>

<h3>Cadastro de Usuarios</h3>
<br>
<form action='/index/add' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
 
        <tr>
            <td><b>Nome</b></td>
            <td><input type='text' name='name' class='form-control'  required/></td>
        </tr>
 
        <tr>
            <td><b>Sobrenome</b></td>
            <td><input type='text' name='surname' class='form-control' required /></td>
        </tr>
 
        <tr>
            <td><b>Endereco</b></td>
            <td><input type='text' name='adress' class='form-control' size="20" required/></td>
            
        </tr>
 
 
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Registrar</button>
            </td>
        </tr>
 
    </table>
    <b><c:out value="${danger}"></c:out></b>
</form>


<h3>Lista de Usuarios</h3>
<br>
<table class="table table-hover">

    <thead>
      <tr>
          <th><b>Nome do Usuario</b></th>
          <th><b>Sobrenome do Usuario</b></th>
          <th><b>Endereco do Usuario</b></th>
          <th><b>Operacoes</b></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="lou">
      <tr>
        <td><c:out value="${lou.name}"></c:out></td>
        <td><c:out value="${lou.surname}"></c:out></td>
        <td><c:out value="${lou.adress}"></c:out></td>

			 <td>
             <a href="/index/${lou.id}/edit">
                 <button type="submit" class="btn btn-primary">Editar Usuario</button>
                </a>
            </td>
            <td>
             <a href="/index/${lou.id}/delete">
                 <button type="submit" class="btn btn-primary">Deletar Usuario</button>
                </a>
            </td>
      </tr>

          </c:forEach>
    </tbody>
  </table>
</div>

<jsp:include page="footer.jsp"></jsp:include>