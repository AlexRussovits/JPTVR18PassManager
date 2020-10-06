
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form action="updateUserRoles" method="POST">
    <div class="jumbotron bg-white">
        <h4 class="w-100 text-center ">Изменить данные пользователя</h4>
            <div class="form-group w-50 mx-auto">    
                <label for="login">Логин</label>
                <input value="${editUser.id}" type="hidden" name="userId">
                <input value="${editUser.login}" type="text" class="form-control" id="login" name="login" aria-describedby="loginHelp" placeholder="Логин">
                <small id="loginHelp" class="form-text text-muted"></small>
            </div>
            <div class="form-group w-50 mx-auto">    
                <label for="password">Пароль</label>
                <input value="" type="text" class="form-control" id="password" name="password" aria-describedby="passwordHelp" placeholder="Пароль">
                <small id="passwordHelp" class="form-text text-muted"></small>
            </div>               
            <div class="form-group w-50 mx-auto">    
                <label for="role">Роль</label>
                <input value="${topRoleEditUser}" type="text" class="form-control" id="role" name="role" aria-describedby="roleHelp" placeholder="Роль">
                <small id="roleHelp" class="form-text text-muted"></small>
            </div>
            <div class="form-group w-50 mx-auto">
                <label for="role">Назначенная роль</label>
                <select class="custom-select">                   
                    <c:forEach var="role" items="${listRoles}">
                        <c:if test="${role.name eq topRoleEditUser}">
                           <option value="${role.id}" selected="">${role.name}</option> 
                        </c:if>
                        <c:if test="${role.name ne topRoleEditUser}">
                           <option value="${role.id}">${role.name}</option> 
                        </c:if>                      
                    </c:forEach>
                </select>
            </div>    
                
            <div class="form-group w-50 mx-auto text-center">
                <button type="submit" class="btn btn-primary w-50 mt-4">Изменить</button>
            </div>
    </div>

 