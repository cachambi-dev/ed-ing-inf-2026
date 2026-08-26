package TP2;

import java.util.ArrayList;

public class Tp2_03 {
    public static void main(String[] args) {

        ArrayList<Character> characters = new ArrayList<>();
        ArrayUtils.loadArrayListCharacterFromConsole(characters, "Ingrese un caracter");
        ArrayUtils.showArrayListCharacter(characters);
        getCharactersRepeated(characters);
    }

    /**
     * Metodo que obtiene los caracteres repetidos y su cantidad de repeticiones
     * 
     * @param arrayListCharacters arreglo de caracteres
     */
    public static void getCharactersRepeated(ArrayList<Character> arrayListCharacters) {
        ArrayList<Integer> quantityCharactersRepeated = new ArrayList<>();
        ArrayList<Character> charactersRepeated = new ArrayList<>();
        int quantityCharacterRepeted;
        for (int idx = 0; idx < arrayListCharacters.size(); idx++) {
            if (!characterRepeated(charactersRepeated, arrayListCharacters.get(idx))) {
                quantityCharacterRepeted = getQuantiyCharacterRepeated(arrayListCharacters,
                        arrayListCharacters.get(idx));
                if (quantityCharacterRepeted > 1) {
                    quantityCharactersRepeated.add(quantityCharacterRepeted);
                    charactersRepeated.add(arrayListCharacters.get(idx));
                }
            }
        }
        ArrayUtils.showArrayListCharacterAndInteger(charactersRepeated, quantityCharactersRepeated,
                "El caracter: ", " se repite: ");
    }

    /**
     * Metodo que valida si un caracter esta repetido en un arreglo de caracteres
     * 
     * @param arrayCharacterRepeated arreglo de caracteres
     * @param character              caracter a validar
     * @return true si el caracter esta repetido, false si no lo esta
     */
    public static boolean characterRepeated(ArrayList<Character> arrayCharacterRepeated, char character) {
        if (arrayCharacterRepeated.isEmpty()) {
            return false;
        }
        char lowercaseArray, lowercase = Character.toLowerCase(character);
        for (int idx = 0; idx < arrayCharacterRepeated.size(); idx++) {
            lowercaseArray = Character.toLowerCase(arrayCharacterRepeated.get(idx));

            if (lowercaseArray == lowercase) {
                return true;
            }
        }
        return false;
    }

    /**
     * Metodo que obtiene la cantidad de veces que un caracter se repite en un
     * arreglo de caracteres
     * 
     * @param arrayCharacter arreglo de caracteres
     * @param character      caracter a validar
     * @return cantidad de veces que el caracter se repite en el arreglo
     */
    public static int getQuantiyCharacterRepeated(ArrayList<Character> arrayCharacter, char character) {
        int quantityCharacter = 0;
        char lowercaseArray, lowercase = Character.toLowerCase(character);
        for (int idx = 0; idx < arrayCharacter.size(); idx++) {
            lowercaseArray = Character.toLowerCase(arrayCharacter.get(idx));
            if (lowercaseArray == lowercase) {
                quantityCharacter++;
            }
        }
        return quantityCharacter;
    }

}
