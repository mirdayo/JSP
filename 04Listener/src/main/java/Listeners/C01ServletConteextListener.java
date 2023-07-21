package Listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class C01ServletConteextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("C01ServletConteextListener's contextInitialized Call");
		sce.getServletContext().setAttribute("CL", "CL_VALUE");
		sce.getServletContext().setAttribute("CL_2", 1);
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("C01ServletConteextListener's contextDestroyed Call");
	}

}
