package ed2026.TP2;

import ed2026.Helper.Helper;

public class Tp2_06 {
    public static void main(String[] args) {
        int vendedores = Helper.nextInteger("Ingrese cantidad de vendedores", 0);
        int dias = Helper.nextInteger("Ingrese cantidad de días", 0);

        double[][] ventas = new double[vendedores][dias];
        for (int i = 0; i < vendedores; i++) {
            for (int j = 0; j < dias; j++) {
                ventas[i][j] = Helper.nextInteger("Ingrese venta del vendedor " + (i + 1) + " para el día " + (j + 1), 0);
            }
        }

        double[] totalPorVendedor = totalVentasPorVendedor(ventas);
        for (int i = 0; i < totalPorVendedor.length; i++) {
            System.out.println("Vendedor " + (i + 1) + " total: " + totalPorVendedor[i]);
        }

        double[] promedioPorDia = promedioVentasPorDia(ventas);
        for (int j = 0; j < promedioPorDia.length; j++) {
            System.out.println("Promedio día " + (j + 1) + ": " + promedioPorDia[j]);
        }

        int[] mayor = mayorVenta(ventas);
        System.out.println("Mayor venta: fila " + mayor[0] + ", columna " + mayor[1]);

        int objetivo = Helper.nextInteger("Ingrese monto objetivo", 0);
        System.out.println("Vendedores que superan el objetivo: " + vendedoresSuperanObjetivo(ventas, objetivo));

        int dia = Helper.nextInteger("Ingrese día a evaluar", 0);
        System.out.println("Ventas que superan el promedio del día " + dia + ": " + ventasSuperanPromedioDia(ventas, dia - 1));

        System.out.println("Promedio por vendedor: " + java.util.Arrays.toString(promedioVentasPorVendedor(ventas)));
    }

    public static double[] totalVentasPorVendedor(double[][] ventas) {
        double[] total = new double[ventas.length];
        for (int i = 0; i < ventas.length; i++) {
            for (int j = 0; j < ventas[i].length; j++) {
                total[i] += ventas[i][j];
            }
        }
        return total;
    }

    public static double[] promedioVentasPorDia(double[][] ventas) {
        double[] promedio = new double[ventas[0].length];
        for (int j = 0; j < ventas[0].length; j++) {
            double suma = 0;
            for (int i = 0; i < ventas.length; i++) {
                suma += ventas[i][j];
            }
            promedio[j] = suma / ventas.length;
        }
        return promedio;
    }

    public static int[] mayorVenta(double[][] ventas) {
        int fila = 0, columna = 0;
        double mayor = ventas[0][0];
        for (int i = 0; i < ventas.length; i++) {
            for (int j = 0; j < ventas[i].length; j++) {
                if (ventas[i][j] > mayor) {
                    mayor = ventas[i][j];
                    fila = i;
                    columna = j;
                }
            }
        }
        return new int[] { fila, columna };
    }

    public static int vendedoresSuperanObjetivo(double[][] ventas, int objetivo) {
        int cantidad = 0;
        for (int i = 0; i < ventas.length; i++) {
            double total = 0;
            for (int j = 0; j < ventas[i].length; j++) {
                total += ventas[i][j];
            }
            if (total > objetivo) {
                cantidad++;
            }
        }
        return cantidad;
    }

    public static int ventasSuperanPromedioDia(double[][] ventas, int dia) {
        double promedio = promedioVentasPorDia(ventas)[dia];
        int contador = 0;
        for (int i = 0; i < ventas.length; i++) {
            if (ventas[i][dia] > promedio) {
                contador++;
            }
        }
        return contador;
    }

    public static double[] promedioVentasPorVendedor(double[][] ventas) {
        double[] promedio = new double[ventas.length];
        for (int i = 0; i < ventas.length; i++) {
            promedio[i] = totalVentasPorVendedor(ventas)[i] / ventas[i].length;
        }
        return promedio;
    }
}
