package ed2026.TP3;

import ed2026.Helper.ArrayUtils;

public class Tp3_02 {
    public static void main(String[] args) {
        int[] originalArray = {4,3,7,9,12,2,15};
        ArrayUtils.showArrayOneDimensionInt(originalArray, "El arreglo original es: ");
        Stack<Integer> multiplesOfThreeStack = new Stack<>();
        getMultipleOfThreeStack(originalArray, multiplesOfThreeStack);
        reverseMultiplesOfThreeInArray(originalArray, multiplesOfThreeStack);
        ArrayUtils.showArrayOneDimensionInt(originalArray, "El arreglo modificado es: ");

    }

    /**
     * Metodo que determina si un numero es multiplo de tres
     * @param intNumber numero entero
     * @return true si es multiplo de tres, false en caso contrario
     */
    public static boolean isMultipleOfThree(int intNumber){
        return intNumber%3 == 0;
    }

    /**
     * Metodo que obtiene los multiplos de tres de un arreglo y los almacena en una pila
     * @param array arreglo de enteros
     * @param stack pila de enteros
     */
    public static void  getMultipleOfThreeStack(int[] array, Stack<Integer> stack) {
        for (int i=0; i< array.length;i++){
             if (isMultipleOfThree(array[i])){
                stack.push(array[i]);
            }
        }
    }

    /**
     * Metodo que invierte los multiplos de tres de un arreglo utilizando una pila
     * @param array arreglo de enteros
     * @param stack pila de enteros
     */
    public static void reverseMultiplesOfThreeInArray(int[] array, Stack<Integer> stack){
        for(int i=0; i< array.length; i++){
            if(isMultipleOfThree(array[i])){
                array[i] = stack.pop();
            }
        }
    }


}
