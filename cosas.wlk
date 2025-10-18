object knightRider {
    method peso() {
        return 500
    }
    method nivelDePeligrosidad() {
        return 10
    }
}

object bumblebee {
    var transformadoEnRobot = false

    method tranformarEnRobot() {
        transformadoEnRobot = true      
    }
    method nivelDePeligrosidad() {
        if (transformadoEnRobot) {
            return 30
        } else {
            return 15
        }
    }
    method peso() {
        return 800
    }   
}

object paqueteLdrillos {
    var cantidad = 0

    method peso() {
        return cantidad * 2 
    }
    method nivelDePeligrosidad() {
        return 2
    }
}

object arenaAGranel {
    var pesoActual = 0

    method peso() {
        return pesoActual
    }
    method nivelDePeligrosidad() {
        return 1    
    }
}

object bateriaAniaerea {
    var tieneMisiles = false

    method peso() {
        if (tieneMisiles){
            return 300
        } else {
            return 200
        }       
    }
    method nivelDePeligrosidad() {
        if (tieneMisiles){
            return 100
        } else {
            return 0
        }       
    }
    method cargarMisiles() {
        tieneMisiles = true      
    }
}

object contenedorPortuario {
    const property cosas = []

    method agregarCosas(cosa) {
        cosas.add(cosa)
    }
    method peso() {
        return 100 + cosas.sum({p => p.peso()})
    }
    method nivelDePeligrosidad() {
        if (cosas.isEmpty()) {
            return 0
        } else {
            return cosas.max({n => n.nivelDePeligrosidad()})
        }
    }
}

object residuosRadioactivos {
    var pesoActual = 0

    method peso() {
        return pesoActual
    }
    method nivelDePeligrosidad() {
        return 200
    }
}

object embalajeDeSeguridad {
    var contido = knightRider

    method peso() {
        return contido.peso()
    }
    method nivelDePeligrosidad() {
        return contido.nivelDePeligrosidad() / 2
    }
}



