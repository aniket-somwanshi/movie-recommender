/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HelpingClasses;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author aditya
 */
public class SeesionFactory {
    static SessionFactory sf;
    private static ServiceRegistry serviceRegistry;
    public static SessionFactory getSessionFactory(){
        Configuration cfg=new Configuration();
        cfg.configure("/Resources/hibernate.cfg.xml");
        serviceRegistry =new StandardServiceRegistryBuilder().applySettings(
        cfg.getProperties()).build();
        sf=cfg.buildSessionFactory(serviceRegistry);
        System.out.println("Build session fact");
        return sf;
        
        
    }
}
