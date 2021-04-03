
package controller;

import dao.ConectarDB;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.Cliente;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @since marzo 17
 * @version 1
 * @author FREDY GONZALEZ GARCIA
 */
@Controller
public class homeController {
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    /**
     *se instancia el jdbcTemplate
     */
    public homeController() {
        ConectarDB con = new ConectarDB();
         this.jdbcTemplate = new JdbcTemplate(con.Conectar());
    }
    
    /**
     *Conexion a base de datos
     * @return : Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="formCliente.htm", method=RequestMethod.GET) 
        public ModelAndView homCliente(){
        ModelAndView mov = new  ModelAndView();   
     
        Cliente cliente = new Cliente();
        mov.addObject("cliente",cliente);
        mov.setViewName("views/formCliente");
        return mov;       
        } 
    
    /**
     *
     * @return :  Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="formCliente.htm", method=RequestMethod.POST) 
        public ModelAndView mostarCliente(){
        ModelAndView mov = new  ModelAndView();
        String sql = "select * from cliente";
        List datos = this.jdbcTemplate.queryForList(sql);
        mov.addObject("cliente",datos);
        mov.setViewName("views/mostrarCliente");
        return mov;
        }
 
    /**
     *
     * @return :  Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="agregarCliente.htm", method=RequestMethod.GET) 
        public ModelAndView agregarCliente(){
        ModelAndView mov = new  ModelAndView();     
        Cliente cliente = new Cliente();
        mov.addObject("cliente",cliente);
        mov.setViewName("views/agregarCliente");
        return mov;       
        }
 
    /**
     *
     * @param cli
     * @return : : Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="agregarCliente.htm", method=RequestMethod.POST) 
        public ModelAndView agregarCliente(Cliente cli){   
        ModelAndView mov = new  ModelAndView();  
        String sql = "insert into cliente(nombre,direccion,correo,telefono) "
                + "values(?, ?, ?, ?)";
        this.jdbcTemplate.update(sql, cli.getNombre(), cli.getDireccion(), cli.getCorreo(), cli.getTelefono());
                
        mov.setViewName("redirect:/formCliente.htm");
        return mov;       
        }   
 
    /**
     *
     * @param request
     * @return :  Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="actCliente.htm", method=RequestMethod.GET) 
        public ModelAndView modificarCliente(HttpServletRequest request){
         ModelAndView mov = new  ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from cliente where id = ? ";
        List datos = this.jdbcTemplate.queryForList(sql, id);
        mov.addObject("cli",datos);
        mov.setViewName("views/actCliente");
        return mov;
        }
        
    /**
     *
     * @param c
     * @return : Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="actCliente.htm", method=RequestMethod.POST) 
        public ModelAndView modificarCliente(Cliente c){
             ModelAndView mov = new  ModelAndView();
             
        try{    
        
         String sql = "update into cliente set nombre = ? , direccion = ? ,"
                 + "correo = ? , telefono = ? ";
         this.jdbcTemplate.update(sql, c.getNombre(), c.getDireccion(), c.getCorreo(), c.getTelefono());
         //control de acceso y actualizacion
         mov.setViewName("redirect:/views/formCliente");
         
        }catch(Exception e){
            System.out.print("Error" + e.getMessage());
        
        } 
        return mov;
        }
                 
    /**
     *
     * @param request
     * @return : Retorna una vista ModelAndView para enviarla al formulario
     */
    @RequestMapping(value="borrarCliente.htm") 
        public ModelAndView borrarCliente(HttpServletRequest request){
         ModelAndView mov = new  ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from cliente where id = ?";
        this.jdbcTemplate.update(sql,id);
        mov.setViewName("redirect:/formCliente.htm");
        return mov;
        }
        
}
