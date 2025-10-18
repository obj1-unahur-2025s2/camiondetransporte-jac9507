import cosas.*
object camion {
    var cosas = []

    method cargar(cosa) {
        cosas.add(cosa)
    }
    method descargar(cosa) {
        cosas.remove(cosa)
    }
    method pesoTotal() {
        return cosas.sum({p => p.peso()}) + 1000
    }
    method todosPesosPares() {
        return cosas.all({p => p.peso().mod(2) == 0})
    }
    method hayCosasConPeso(unValor) {
        return cosas.any({p => p.peso() == unValor})
    }
    method primeraConPeligrosidad(unValor) {
        return cosas.find({n => n.nivelDepeligrosidad() == unValor })
    }
    method cosasConNivelDePeligrosidadMayor(unValor) {
        return cosas.filter({n => n.nivelDePeligrosidad() > unValor })
    }
    method superanElNivelDePeligrosidad(cosa) {
        return cosas.filter({n => n.nivelDePeligrosidad() > cosa.nivelDePeligrosidad()})
    }
    method excedePesoMaximo() {
        return self.pesoTotal() > 2500
    }
    method puedeCircular(unValor) {
        return !self.excedePesoMaximo() && cosas.all({ c => c.nivelDePeligrosidad() <= unValor })
    }
    method hayCosaConPesoEntre(min, max) {
        return cosas.any({ c => c.peso() > min && c.peso() < max })
    }
}