package pkg5;

public aspect TraceAspectBohn {
	pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);
	


	   pointcut methodToTrace():  classToTrace() &&  execution(* *(..));

	   before(): methodToTrace() {
	      System.out.println("\t[BGN]" + thisJoinPointStaticPart.getSignature() +  ", " + //
	            thisJoinPointStaticPart.getSourceLocation().getLine());
	   }

	   after(): methodToTrace() {
	      System.out.println("\t[END]" + thisJoinPointStaticPart.getSourceLocation().getFileName());
	   }

}
