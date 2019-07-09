app=new Vue({
    el: '#app',
    data: {
        j:0,
        p: 0,
        a1: 'active',
        a2: '',
        a3: '',
        a4: '',
        panel: 0,
        busqueda: '',
        juegosTienda: [
            {
                nombre: 'Juego1',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego2',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego3',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego4',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego5',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            }
        ],
        libreria: [
            {
                nombre: 'Juego1',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego2',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            }
        ],
        trending: [
            {
                nombre: 'Juego2',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            }
        ],
        recomendados: [
            {
                nombre: 'Juego3',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego4',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            },
            {
                nombre: 'Juego5',
                imagen: 'https://cdn3.ipadizate.es/2016/04/wallpaper-naturaleza-9-320x568.jpg',
                descripcion: 'Hola a todos'
            }
        ],
    },

    mounted: function(){

        $.ajax({
            type: 'POST',
            url: 'listado_juegos',
            data: 'prueba',
            success: function (s) {
                app.juegosTienda = [];
                console.log(s);
                for(var i=0;i<s.length;i++){
                    var elem = {nombre: s[i][0],imagen:s[i][1],descripcion:s[i][2]}
                    app.juegosTienda.push(elem);
                }
            },
            processData: false,
            contentType: false,
        });


    },
    methods: {
        cambiarPestaña(pagina) {
            this.a1 = '';
            this.a2 = '';
            this.a3 = '';
            this.a4 = '';
            switch (pagina) {
                case 0:
                    this.p = 0;
                    this.a1 = 'active';

                    break;
                case 1:
                    this.p = 1;
                    this.a2 = 'active';

                    break;
                case 2:
                    this.p = 2;
                    this.a3 = 'active';
                    break;
                case 3:
                    this.p = 3;
                    this.a4 = 'active';
                    break;

            }
        },
        cambiarPanel(pagina) {
            switch (pagina) {
                case 0:
                    this.panel = 0;
                    break;
                case 1:
                    this.panel = 1;
                    break;
                case 2:
                    this.panel = 2;
                    break;
            }
        },
        buscar(juego) {
            this.busqueda = juego;
            this.p = 4;
            this.a1 = '';
            this.a2 = '';
            this.a3 = '';
            this.a4 = '';
        },

    }
})