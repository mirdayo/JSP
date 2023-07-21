package Listeners;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

public class C02ServletContextAttListener implements ServletContextAttributeListener{

	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {
		//속성 추가시 감지
		System.out.println("C02ServletContextAttListener's attributeAdded Call");
		
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		//속성 제거시 감지
		System.out.println("C02ServletContextAttListener's attributeRemoved Call");
		
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		//속성 변경시 감지
		System.out.println("C02ServletContextAttListener's attributeReplaced Call");
		
	}

	
}
