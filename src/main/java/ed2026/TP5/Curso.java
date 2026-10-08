package ed2026.TP5;

public class Curso {
    SimpleLinkedList<Aspirante> aspirantes;

    public Curso() {
        aspirantes = new SimpleLinkedList<>();
    }

    public Curso(SimpleLinkedList<Aspirante> aspirantes) {
        this.aspirantes = aspirantes;
    }

    private double calcularPromedioAspirante(Aspirante aspirante){
        double total = aspirante.getNotaEscrito() + aspirante.getNotaOral() + aspirante.getNotaPractico();
        return total/3.0;
    }

    public void mostrarNotaPromedio(){
        for(Aspirante a: this.aspirantes){
            System.out.println(a.getNombre() + " " + a.getApellido() + " - Promedio: " + calcularPromedioAspirante(a));
        }
    }

    public Aspirante devolverAspiranteNotaPromedioAlto(){
        Aspirante aspiranteNotaPromedioAlta = null;
        for(Aspirante a: this.aspirantes){
            if (aspiranteNotaPromedioAlta == null || calcularPromedioAspirante(aspiranteNotaPromedioAlta)< calcularPromedioAspirante(a)) {
                aspiranteNotaPromedioAlta = a;
            }
        }
        return  aspiranteNotaPromedioAlta;
    }

    public SimpleLinkedList<Aspirante> obtenerAspirantesPromocionados(){
        SimpleLinkedList<Aspirante> aux = new SimpleLinkedList<>();
        for(Aspirante a: this.aspirantes){
            if(calcularPromedioAspirante(a)>= 7){
                aux.addLast(a);
            }
        }
        return aux;
    }

}
