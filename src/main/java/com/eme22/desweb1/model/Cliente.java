package com.eme22.desweb1.model;

public class Cliente extends Persona {

    private int clienteCodigo;
    private int clienteReservasActivas;

    public Cliente(int personaID, int personaDNI, String personaApellido1, String personaApellido2, String personaNombre, int personaEdad, boolean personaSexo, String personaDireccion, int personaTelefono, String personaCorreo, String personaPassword, int clienteCodigo, int clienteReservasActivas) {
        super(personaID, personaDNI, personaApellido1, personaApellido2, personaNombre, personaEdad, personaSexo, personaDireccion, personaTelefono, personaCorreo, personaPassword);
        this.clienteCodigo = clienteCodigo;
        this.clienteReservasActivas = clienteReservasActivas;
    }

    public int getClienteCodigo() {
        return clienteCodigo;
    }

    public void setClienteCodigo(int clienteCodigo) {
        this.clienteCodigo = clienteCodigo;
    }

    public int getClienteReservasActivas() {
        return clienteReservasActivas;
    }

    public void setClienteReservasActivas(int clienteReservasActivas) {
        this.clienteReservasActivas = clienteReservasActivas;
    }
}
