from flask import Blueprint, render_template, request, jsonify,url_for


GameFlask = Blueprint('gaming',__name__, template_folder='templates')

@GameFlask.route('/')
def gameFlask():
    return render_template('gaming++.html')

@GameFlask.route('/listado_juegos',methods=['GET', 'POST'])
def listarJuegos():
    print("holalaal")
    lista = [['HEAD_GAME','https://images.ssstatic.com/real-madrid-021rm7bg3-balon-de-futbol-30954543z0-11031467.png','JUGAR'],['PENGUIN','https://www.lamuela.com.co/1095-home_default/nebulizador-pediatrico-modelo-pinguino.jpg','JUGAR'],['SHIP','https://http2.mlstatic.com/D_NQ_NP_690165-MCO29833125011_042019-O.jpg','JUGAR'],['SNAKE','https://www.worldofhouse.com/images/tracks/26658/500_500/blasterjaxx-snake-original-mix.jpg','JUGAR']]
    return jsonify(lista)

@GameFlask.route('<juego>',methods=['GET', 'POST'])
def jugar(juego):
    return render_template(juego+'.html')