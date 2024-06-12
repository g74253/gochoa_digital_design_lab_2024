`timescale 1ns / 1ps

module procesador_tb;

    // Parámetros de tiempo
    parameter CLK_PERIOD = 10;

    // Señales de entrada
    logic clk;
    logic rst;
    logic wren_b;
    logic [31:0] address;

    // Señales de salida
    logic [7:0] q_b;

    // Instancia del procesador
    procesador dut (
        .clk(clk),
        .rst(rst),
        .wren_b(wren_b),
        .address(address),
        .q_b(q_b)
    );

    // Generación de reloj
    always #((CLK_PERIOD / 2)) clk = ~clk;

    // Inicialización
    initial begin
        clk = 0;
        rst = 1;
        wren_b = 0;
        address = 0;

        // Espera unos ciclos de reloj para el reinicio
        #((CLK_PERIOD * 10));

        // Desactivar reinicio
        rst = 0;

        // Ejecución de instrucciones
        // Simulación de carga de datos en direcciones de memoria específicas
        // y verificación del resultado esperado

        // Prueba 1: Cargar datos en una dirección de memoria y leerlos
        // Se espera que q_b sea igual al valor cargado
        // Leer datos de la dirección de memoria cargada
        #((CLK_PERIOD * 2)); // Esperar un ciclo de reloj
		  address=1;
        // Verificar el resultado esperado
        if (q_b === 8'hFF) begin
            $display("Prueba 1 pasada: Valor leído correcto.");
        end else begin
            $display("Prueba 1 fallida: Valor leído incorrecto.");
        end

        // Otras pruebas similares aquí...

        // Finalizar simulación
        #((CLK_PERIOD * 10)); // Esperar un tiempo adicional antes de finalizar
        $stop;
	  end

endmodule
