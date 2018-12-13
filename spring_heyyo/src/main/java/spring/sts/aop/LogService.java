package spring.sts.aop;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LogService {

	private static final Logger logger = LoggerFactory.getLogger(LogService.class);

	@Before("execution(* spring.model..*Service.*(..))")
	public void startLog(JoinPoint joinPoint) {
		
		logger.info("-----------------------------------");
		logger.info("-----------------------------------");
		
		logger.info("1:" + Arrays.toString(joinPoint.getArgs()));
		logger.info("2:" + joinPoint.getKind());
		logger.info("3:" + joinPoint.getSignature().getName());
		logger.info("4:" + joinPoint.getTarget().toString());
		logger.info("5:" + joinPoint.getThis().toString());
	}
	
	@Around("execution(* spring.model..*Service.*(..))")
	public Object timeLog(ProceedingJoinPoint pJoinPoint) throws Throwable {
		
		long startTime = System.currentTimeMillis();
		
		Object result = pJoinPoint.proceed();
		
		long endTime = System.currentTimeMillis();
		
		logger.info(Arrays.toString(pJoinPoint.getArgs()));
		logger.info(pJoinPoint.getSignature().getName() + " : " + (endTime - startTime));
		logger.info("===================================");
		
		return result;
	}
	
}
