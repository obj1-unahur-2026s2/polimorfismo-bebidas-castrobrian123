
object tito {
    var peso = 70
    var bebidaConsumida = terere
    var dosis = 10

    method peso() = peso

    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }

    method bebidadConsumida() = bebidaConsumida  

    method consumir(cantidad,bebida) {
        bebidaConsumida = bebida
        dosis = cantidad
    }

    method velocidad() {
        return bebidaConsumida.rendimientoQueOtorga(dosis,self) //inserto la dosis
        *490 / peso
    }

    //method rendimientoQueOtorga(unaDosis) {
    //    return
    //}
}

object pepe {
    var peso = 80
    var bebidaConsumida = whisky
    var dosis = 10
    var edad = 30

    method peso() = peso

    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }

    method cumplirAños() {
        edad = edad + 1
    }

    method bebidadConsumida() = bebidaConsumida  

    method consumir(cantidad,bebida) {
        bebidaConsumida = bebida
        dosis = cantidad
    }

    method velocidad() {
        return (bebidaConsumida.rendimientoQueOtorga(dosis,self)
        *490 / peso) - if(edad > 30) 10 else 0
    }
}

object whisky { //no lo usa el deportista
    method rendimientoQueOtorga(unaDosis,unDeportista) {
        return 0.9 ** unaDosis
    }

}

object terere { //no lo usa el deportista
    method rendimientoQueOtorga(unaDosis,unDeportista) {
        return (1).max(0.1 * unaDosis)
        //(0.1 * unaDosis).max(1)
    }
}

object cianuro {
    method rendimientoQueOtorga(unaDosis,unDeportista) {

        if(unDeportista.peso() > 70){
            return unDeportista.peso() * 0.01 + unaDosis
        } else {
            return 0
        }
    }

}

