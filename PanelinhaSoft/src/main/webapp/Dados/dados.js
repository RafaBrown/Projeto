var captar = '';
function dadosCliente(){
    captar = document.getElementById('nome').value;
    document.getElementById('cpf').innerHTML = captar;
}