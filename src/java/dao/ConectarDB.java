

package dao;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * @since marzo 17
 * @version 1
 * @author FREDY GONZALEZ GARCIA
 */
public class ConectarDB {

    /**
     *
     * @return : la conexion a base de datos
     */
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/prueba");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
    
}
