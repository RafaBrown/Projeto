<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="venda.css">
    <title>Realizar Venda</title>
</head>
<body>
    <form></form>
    <table class="Produto">
        <tr>
            <th >CÓDIGO</th>
            <th >ESTOQUE</th>
            <th >PRODUTO</th>
            <th >VALOR UNID</th>
        </tr>
            <tr>
            <td>0100929276</td>
            <td>120</td>
            <td>Hambúrguer</td>
            <td>6,00</td>
            </tr>
            <tr>
                <td>0100937653</td>
                <td>114</td>
                <td>Hambúrguer Cheddar</td>
                <td>6,50</td>
            </tr>
            <tr>
                <td>0222291886</td>
                <td>20</td>
                <td>Sanduíche Natural</td>
                <td>4,50</td>
            </tr>
            <tr>
                <td>0300569099</td>
                <td>300</td>
                <td>Fanta 350ml</td>
                <td>4,00</td>
            </tr>
            <tr>
                <td>0300568976</td>
                <td>300</td>
                <td>Coca Cola 350ml</td>
                <td>4,00</td>
            </tr>
            <tr>
                <td>0098762198</td>
                <td>200</td>
                <td>Suco Del Valle 200ml</td>
                <td>2,00</td>
            </tr>
    </table>
    <table class="produtos2">
        <tr>
            <th >QUANTIDADE</th>
            <th >PRODUTO</th>
            <th >VALOR UNIDADE</th>
            <th >VALOR TOTAL</th>
        </tr>
            <tr>
            <td>2</td>
            <td>Hambúrguer Cheddar</td>
            <td>6,00</td>
            <td>12,00</td>
            </tr>
    </table>
    <img class="lixo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABmJLR0QA/wD/AP+gvaeTAAAEnElEQVRoge2aPWwcRRTHf+8cO4ltMCG2z9gO4qNMQ2eJD/FR0NIjSE0DFRISDZEoSCQ6aGhxIqQ0SUsDUkpMQUOT2LFRfMZ7dwGi2I5sfPcodvfi230zO7e+u6TgX+3Nm33z/++b92bmdoU+Qc8zRoMvET4EnivovgV8zzRfyO8c9GN86YcTAK1yCfisx9u+kojP+8WhL9AqNa2iOsurhX1neU2rqFapDYNbT0iI6aD6F8E7tbTKLPAd8C4w3q9Be8Qe8CPwkUTUXZ38Qma5ifBGv5mVgnJT6rzpMueE6BwzwNco7wFTg+RWAvdRbnCCT2WL5lFDlxCdZ5oWvwELQ6XXK5RNRnlFatxLmypdHVpc5kkXASAscsil7qYj0CpN4OxQSZVHUyJm0h/dEVF+GTqdslBWHjeF/+GDuY5olavA+0PmEoqrEvFBtrFi9US4PXA6ZaE2N1tI+wkW4njItpAKtxxuVlAuoGw67AcIHwM3PFSuA58A/zrsd1EuAL+a1p6E7DuFXJE6y1S45rDflm2+RbnosINyUSK+AccYwjWpswxc6YWbKUT+5j7QMAY5l1zdcdA8lfR74LAftZ129LiTGeso6gm3HOyIxLCUv9Q1WB4TACi7Hr+pbcK0thLf2hnrEcQ5UzxCrOqQOq+w7rjr+EJGO77zQhwVK6bkgp1ULwMwzjrQNuwTCkKDXTBPf0rEnsbrl3VQazPORnL9omEvJcQK41M6z7Ssso+yZfpb5JTEIh4a9j0BZZ7TjrFrssp+ciZ6OmfVMlPLtZa0OyG3p1e7M2Ws6bWb6dMNTXxa+RGjVERWsaaHFiR8m8nkasew7iQ+Jg3bUZ+WEEVYc9znFiIRu2BOH39ECIiIK9HxJnot4WTCV37BLsFpEvpLcDkhqc98ontKLxQLseZk/LR0yBHx5AcUCbHrdirEjogG5AiOHGl7csSzhkCREDuc5/Q8YzT5k/jPsyzKRuQhTbYVRoHFQC4d+IVUzKcwQp3nk7XiD8NeVsi6gDLDC8CIMeoxIvIsa0Ar1y7eElxWSLpZtPKjxRlncQEKhCTvLqyn7hNSNkd8a8hG0XuUoqrl2nOl5dGqXKWnVsZ3EYcuFAvxVa5BTK1K7xUrvq0YeSeVZBdsryXHi4gmvos45CgVoW2UPfWuJeWEtD1Ty7PrTVE2R6Z0gbPSYIf8kTglmU926bRlhdSlwY7OM431KqMvOVJnA4yK0XLmyWQyuC8i2aoV+2ibFeuAyKycXSgUIvE6kp9C7u18manlPqfDmlhrWQYhyQ6+zWM/hZTYLKYIE2Lvc1xryURyTz5HKs4c8a0hhYkeuw6BfexdUqggnMy0z+oZplCquTs0sfHoBU3SflJjLkvG2KshFIO+fNA53kb5yTDVElJjmfZ/gBPkk3oHOASeybQfAE1g3mD4jmzzcxHHMCELLHLI3ZC+fcchi3Kv+AuJMCEgVHmA+2Q3KOwRMSn2f2RdCMqRxNHjeNVwK0QEhJdfiD+jGC6U66Fdgz9z0hnmEFYQ4xg6GKwyypJs8ldI5+CISINtRngd+AGIyrILQISwzCFvhYoA+A+0+YM9Pn6EbwAAAABJRU5ErkJggg==">
    <img class="mais" src="data:image/png;base64,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">
    <button>Buscar produtos</button>
    <img class="barra" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABmJLR0QA/wD/AP+gvaeTAAAAPUlEQVRYhe3OMQ4AIAjAwOL//4yrIRpdDEtvIsBQkNQsljnLLtmr99P/7S8AxmvpLwYYYIABBhhggAGS2k1A9gYkpwQCgQAAAABJRU5ErkJggg==">
    <span class="buscar" style='font-size:35px;'>&#128269;</span>
    <h3 class="resultados">Resultados</h3>
    <div class="detalhes">
    <h2>Detalhes de Compra</h2>
    </div>

    <img class="carrinho"src="data:image/png;base64,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">
    <h4 class="itens"> Itens da Compra</h4>
    <img class="cesta" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAABqklEQVRIie2Vv24TQRCHv7lDSEhxy4mNS+igCFCFGKpUVHkQXoWGR+AFEAUNBUQJFMQKFTTQ2RnbSWdB592huaC72z2E/0qR8qtWM7u/b2duTgvX2pBkns1FUdzO8/wd8KiR6nvvn08mk/OlwN1udzuE8ArYB7bmuVxFv4D3WZa9GA6HZ81klrpMCOEtcNAC7XvvC1UVVRXvfQH0E/u2gIMQwhsSBUYB59wOcAqM8jx/PBgM9J91tajs2glwB3ioql+r+ahiEXlQLj8sCgUo23sIYGb3m/kIbGZ3y+XPRaEV/QAQkXsr8Lri+jtczrlPwO6aeceq2oP6N143FGDvcpH6jzeiKvh4A7yjCKyqPRE5XBfRzD6q6tMIXCa/tZx7AvQWjAEgIjXvG43899QhVf0M4JybO9bmXatYRJLgVSiEUKu4Bp7NZm2tXoXaKy4f8os1QM/H43HNN/U6rbzdZhZ5NofrcrKfVWPOuT0zk0ViEE90Ekx6so9EIr//jSU9o1ZnWXaSOrmMzOxLM5Y3A9Pp9KzT6dwCdoCbSzJ/Ay9Ho9HrJX2udQX1B7uGo+QYHNr0AAAAAElFTkSuQmCC">
    
    <hr>
    <hr class="linha">

    <div class="four">
        <img class="cartao" src="data:image/png;base64,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">
        <label class="valores"> Descontos: </br>
        Subtotal:</label>
        <h2 class="total">total a pagar:</h2>
        <label class="reais">R$ 12,00</label>

    </div>
    <div class="five">
        <select class="forma">
            <option></option>
            <option>Dinheiro</option>
            <option>Cartão</option>
            <option>PIX</option>
        </select>
    <button class="finalizar"> 
        <a href="http://127.0.0.1:5500/Venda%20Finalizada/vendaFinalizada.html" target="_blank"> 
            Finalizar Compra
        </a> 
    </button>  
    </div>

</body>
</html>