
public class Cilindro {

    private double radio;
    private double altura;

    public Cilindro() {
        this.radio = 1.0;
        this.altura = 1.0;
    }

    public Cilindro(double radio, double altura) {
        setRadio(radio);
        setAltura(altura);
    }

    public double getAltura() {
        return altura;
    }

    public double getRadio() {
        return radio;
    }

    public void setAltura(double altura) {
        if (altura < 0) {
            throw new IllegalArgumentException("La altura debe ser un valor positivo");
        }
        this.altura = altura;
    }

    public void setRadio(double radio) {
        if (radio < 0) {
            throw new IllegalArgumentException("El radio debe ser un valor positivo");
        }
        this.radio = radio;
    }

    public double getVolumen() {
        return Math.PI * (this.radio * this.radio) * this.altura;
    }

    public double getSuperficie() {
        return 2 * Math.PI * this.radio * (this.radio + this.altura);
    }

}
