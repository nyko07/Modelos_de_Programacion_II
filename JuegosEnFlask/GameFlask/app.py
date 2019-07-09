from flask import Flask

def create_app():
    app = Flask(__name__, static_url_path='/static')
    app.config.from_object('conf.config')
    from GameFlask.views import GameFlask
    app.register_blueprint(GameFlask, url_prefix='/gaming')
    return app

app = create_app()

if __name__ == '__main__':
    app.run(port=8003, debug=True)
