/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Registro;

import java.io.IOException; //captura las excepciones que se hayan podido producir en el bloque de código delimitado por try y catch.
import java.io.PrintWriter; //es una clase que se usa para escribir cualquier forma de datos, por ejemplo, int, float, double, String u Object en forma de texto, ya sea en la consola o en un archivo en Java.
import jakarta.servlet.ServletException; //Construye una nueva excepción de servlet.
import jakarta.servlet.annotation.WebServlet; //Anotación utilizada para declarar un servlet.
import jakarta.servlet.http.HttpServlet; //permite procesar una petición HTTP y devolver una respuesta HTTP.
import jakarta.servlet.http.HttpServletRequest; // son abstracciones que te permiten obtener información de una petición HTTP y manipular la respuesta HTTP que se generará, respectivamente.
import jakarta.servlet.http.HttpServletResponse; // proporciona funcionalidad especifica del HTML al enviar una respuesta.
/**
 *
 * @author tatia
 */
@WebServlet("/procesarFormulario")
        
      public class formulario extends HttpServlet {  // maneja una solicitud HTTP y proporciona una respuesta HTTP, generalmente en forma de una página HTML .

    private static final String USUARIO_VALIDO = "tatianas"; // se carga por defecto el dato del usuario 
    private static final String CLAVE_VALIDA = "0715"; // se carga por defecto 

    @Override //El modificador override es necesario para ampliar o modificar la implementación abstracta o virtual de un método, propiedad, indexador o evento heredado. 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.html");
        //El método doGet nos permite gestionar peticiones HTTP GET dentro de un Servlet. Los parámetros de una petición HTTP GET vienen dentro de la cadena de la URL como pares clave/valor.
        //req, el objeto HttpServletRequest que encapsula la petición HTTP que se recibe desde el cliente- objeto HttpServletResponse que encapsula la respuesta HTTP que se va a enviar al cliente.
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //es muy util para procesar la informacion enviada a traves de formularios HTML
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) { //permte que un programa si ejecuta una sentencia en caso de que la condicion sea verdadera.
            request.getRequestDispatcher("bienvenido.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "usuario o clave incorrectos");
            request.setAttribute ("errorExist", true);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            //es usado para indicar al que hacer en caso de que no se cumpla la condicion if
     
        }

    }
    
}
