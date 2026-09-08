package ed2026.TP3;

import ed2026.Helper.Helper;

public class Tp3_03 {
    public static void main(String[] args) {
        int quantityElements = Helper.nextInteger("Ingresar Cantidad de elementos", 0);
        Stack<Integer> stack = new Stack<>(quantityElements);
        System.out.println("Se cargara la pila automaticamente con numeros aleatorios entre 1 y 100");
        loadStackAutomatically(stack, quantityElements);
        displayStack(stack);
        int x = Helper.nextInteger("Ingresar X", 0);
        System.out.println("Se eliminaran los divisores exactos de " + x);
        removeDivisorsOf(stack, x);
        displayStack(stack);
         System.out.println("Se reemplazara los numeros impares por cero");
        replaceOddNumbersWithZero(stack);
        displayStack(stack);
        System.out.println("La cantidad de elementos mayores al tope de la pila es: " + countElementsGreaterThanTop(stack));
        System.out.println("Se intercambiara el tope de la pila con el elemento del medio");
        swapTopAndMiddle(stack);
        displayStack(stack);
        
       

    }

    /**
     * Carga la pila con la cantidad indicada de numeros enteros aleatorios.
     *
     * @param stack pila que se desea cargar
     * @param quantityElements cantidad de elementos que se agregaran
     */
    public static void loadStackAutomatically(Stack<Integer> stack, int quantityElements){
        for (int i=0; i<quantityElements;i++){
            stack.push(Helper.randomInteger(1,100));
        }
    }

    /**
     * Elimina de la pila los elementos que son divisores exactos de X.
     * Los elementos restantes conservan su orden original.
     *
     * @param stack pila cuyos elementos se analizaran
     * @param x numero del que se buscan los divisores
     */
    public static void removeDivisorsOf(Stack<Integer> stack, int x){
        Stack<Integer> stackAuxiliar = new Stack<>(stack.size());
        while (!stack.empty()) {
            int element = stack.peek();
            if (element != 0 && x % element == 0) {
                stack.pop();
            }else{
                stackAuxiliar.push(stack.pop());
            }
        }

        while (!stackAuxiliar.empty()) {
            stack.push(stackAuxiliar.pop());
        }
    }

    /**
     * Reemplaza todos los numeros impares de la pila por cero.
     * La posicion de cada elemento se mantiene.
     *
     * @param stack pila cuyos elementos se modificaran
     */
    public static void replaceOddNumbersWithZero(Stack<Integer> stack){
        Stack<Integer> stackAuxiliar = new Stack<>(stack.size());
        while (!stack.empty()) {
            if (stack.peek()%2!=0) {
                stack.pop();
                stackAuxiliar.push(0);
            }else{
                stackAuxiliar.push(stack.pop());
            }
        }

        while (!stackAuxiliar.empty()) {
            stack.push(stackAuxiliar.pop());
        }
    }

    /**
     * Cuenta cuantos elementos son mayores que el elemento de la cima.
     * La pila original queda sin modificaciones.
     *
     * @param stack pila que se analizara
     * @return cantidad de elementos mayores que la cima
     */
    public static int countElementsGreaterThanTop(Stack<Integer> stack){
        Stack<Integer> stackAuxiliar = new Stack<>(stack.size());
        int peek = stack.peek();
        int count = 0;
        while (!stack.empty()) {
            if (peek<stack.peek()) {
                count++;
            }
            stackAuxiliar.push(stack.pop());
        }

         while (!stackAuxiliar.empty()) {
            stack.push(stackAuxiliar.pop());
        }

        return count;
    }

    /**
     * Intercambia el elemento de la cima con el elemento ubicado en la mitad.
     * Si la cantidad de elementos es par, se utiliza la posicion central
     * correspondiente a {@code size / 2}.
     *
     * @param stack pila cuyos elementos se intercambiaran
     */
    public static void swapTopAndMiddle(Stack<Integer> stack){
        int size = stack.size();
        if (size < 2) {
            return;
        }

        Integer[] elements = new Integer[size];
        for (int i = size - 1; i >= 0; i--) {
            elements[i] = stack.pop();
        }

        int middleIndex = size / 2;
        Integer top = elements[size - 1];
        elements[size - 1] = elements[middleIndex];
        elements[middleIndex] = top;

        for (Integer element : elements) {
            stack.push(element);
        }
    }

    /**
     * Muestra los elementos de la pila desde la cima hasta la base.
     * La pila conserva su contenido y orden despues de mostrarse.
     *
     * @param stack pila cuyos elementos se mostraran
     */
    public static void displayStack(Stack<Integer> stack){
        Stack<Integer> stackAuxiliar = new Stack<>(stack.size());
        System.out.println("Los elementos de la pila son: ");
        while (!stack.empty()) {
            System.out.println(stack.peek());
            stackAuxiliar.push(stack.pop());
        }

         while (!stackAuxiliar.empty()) {
            stack.push(stackAuxiliar.pop());
        }
    }
}
