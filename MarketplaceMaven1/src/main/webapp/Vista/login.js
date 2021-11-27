function login(){
  var user, pass;
  user=document.getElementById("usuario").value;
  pass=document.getElementById("contraseña").value;

  if(user == "admin" && pass== "123456"){
    window.location="productos.jsp";
  }else{
	window.location="../index.jsp";
}
}