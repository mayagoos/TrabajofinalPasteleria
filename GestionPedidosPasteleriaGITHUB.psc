Algoritmo GestionPedidosPasteleria
    Definir pedidoActual Como Cadena
    Definir continuar Como Caracter
    pedidoActual = ""
    totalPedido = 0.0
	
    Repetir
        Escribir "===== Menú de Pedido ====="
        Escribir "1. Agregar Producto"
        Escribir "2. Ver Pedido Actual"
        Escribir "3. Cerrar Pedido"
        Escribir "4. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Seleccione un producto:"
                Escribir "1. Lemon Pie"
                Escribir "2. Selva Negra"
                Escribir "3. Cupcakes"
                Escribir "4. Cheesecake"
                Leer opcionProducto
				
                Segun opcionProducto Hacer
                    1:
                        producto = "Lemon Pie"
                        precioProducto = 2000
                    2:
                        producto = "Selva Negra"
                        precioProducto = 5800
                    3:
                        producto = "Cupcakes"
                        precioProducto = 3500
                    4:
                        producto = "Cheesecake"
                        precioProducto = 4750
                    De Otro Modo:
                        Escribir "Opción de producto inválida."
                Fin Segun
				
                Escribir "Ingrese el tamaño del producto (pequeño, mediano, grande, etc.):"
                Leer tamañoProducto
                pedidoActual = pedidoActual + producto + " (" + tamañoProducto + ") - $" + ConvertirATexto(precioProducto) + "\n"
                totalPedido = totalPedido + precioProducto
            2:
                Escribir "===== Pedido Actual ====="
                Escribir pedidoActual
                Escribir "Total: $" + ConvertirATexto(totalPedido)
            3:
                Si pedidoActual <> "" Entonces
                    Escribir "===== Pedido Cerrado ====="
                    Escribir pedidoActual
                    Escribir "Total a pagar: $" + ConvertirATexto(totalPedido)
                    pedidoActual = ""
                    totalPedido = 0.0
                    Escribir "No hay productos en el pedido actual."
                Fin Si
            4:
                Escribir "Saliendo de la aplicación..."
                continuar = "N"
            De Otro Modo:
                Escribir "Opción inválida. Por favor, elija una opción válida."
        Fin Segun
		
        Si continuar <> "N" Entonces
            Escribir "¿Desea realizar otro pedido? (S/N)"
            Leer continuar
        Fin Si
    Hasta Que continuar = "N"
    
    Escribir "Total a pagar por todos los pedidos: $" + ConvertirATexto(totalPedido)
FinAlgoritmo

