package ed2026.TP1;

public class CuentaBancaria {

    private String titular;
    private double saldo;
    private String tipoCuenta;

    public CuentaBancaria() {
        this.titular = "Invitado";
        this.saldo = 0;
        this.tipoCuenta = "ahorro";
    }

    public CuentaBancaria(String titular, double saldo, String tipoCuenta) {
        setTitular(titular);
        setSaldo(saldo);
        setTipoCuenta(tipoCuenta);
    }

    public double getSaldo() {
        return saldo;
    }

    public String getTipoCuenta() {
        return tipoCuenta;
    }

    public String getTitular() {
        return titular;
    }

    public void setSaldo(double saldo) {
        if (saldo < 0) {
            throw new IllegalArgumentException("El saldo debe ser positivo");
        }
        this.saldo = saldo;
    }

    public void setTipoCuenta(String tipoCuenta) {
        if (!tipoCuenta.equals("ahorro") && !tipoCuenta.equals("corriente")) {
            throw new IllegalArgumentException("Tipo de cuenta invalido. Debe ser 'ahorro' o 'corriente' ");
        }
        this.tipoCuenta = tipoCuenta;
    }

    public void setTitular(String titular) {
        if (titular == null || titular.isEmpty()) {
            throw new IllegalArgumentException("El titular no puede ser nulo o vacio");
        }
        this.titular = titular;
    }

    public boolean retirar(double monto) {
        if (monto <= 0) {
            System.out.println("Error: El monto a retirar debe ser mayor que cero.");
            return false;
        }
        if (monto > this.saldo) {
            System.out.println("Error: Fondos insuficientes. Saldo disponible: $" + this.saldo);
            return false;
        }
        this.saldo -= monto;
        return true;
    }

    public boolean depositar(double monto) {
        if (monto <= 0) {
            System.err.println("El monto debe ser mayor a 0");
            return false;
        }
        this.saldo += monto;
        return true;
    }

    @Override
    public String toString() {

        return "CuentaBancaria [titular=" + titular + ", saldo=" + saldo + ", tipoCuenta=" + tipoCuenta + "]";
    }
}
