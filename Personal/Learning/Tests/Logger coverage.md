
## How to cover the logs in the Mockito


Add to **build.gradle:**
```
testImplementation 'org.mockito:mockito-inline:5.2.0'
```

Import packages:
```
import ch.qos.logback.classic.Level;  
import ch.qos.logback.classic.Logger;  
import ch.qos.logback.classic.spi.LoggingEvent;  
import ch.qos.logback.core.Appender;
import org.mockito.ArgumentCaptor;  
import org.mockito.Captor;

import org.slf4j.LoggerFactory;
```

Coverage some class example:
```java

@ExtendWith(MockitoExtension.class)  
class TargetClassTest {
	//Mocks
	@Mock  
	private Appender appenderMock;                              //To Test Logs  
	  
	@Captor  
	private ArgumentCaptor<LoggingEvent> loggingEventCaptor;    //To Test Logs  
	  
	//Inject Mocks  
	@Spy  
	@InjectMocks  
		TargetClass targetClass;  
	  
	@BeforeEach  
	public void setup() {  
	    //MockitoAnnotations.openMocks(SchedulingService.class);  
	  
	    Logger root = (Logger) LoggerFactory.getLogger(Logger.ROOT_LOGGER_NAME);  
	    root.addAppender(appenderMock);  
	    root.setLevel(Level.ERROR);
	  
	}

	@Test  
	@DisplayName("scheduleJobs Should throws Exception")  
	void scheduleJobsShouldThrowsException() throws SQLException {  
		//Arrange
	    when(objectMock.method()).thenReturn(...); 
		//Act
	    targetClass.someMethod();  
	  
	    LoggingEvent loggingEvent = getLoggingEvent();  
	    assertEquals("An error occurred while running query scheduler", loggingEvent.getMessage());  
	    assertEquals(Level.ERROR, loggingEvent.getLevel());  
	  
	}

	private LoggingEvent getLoggingEvent() {  
	    verify(appenderMock, times(1)).doAppend(loggingEventCaptor.capture());  
	    LoggingEvent loggingEvent = loggingEventCaptor.getAllValues().get(0);  
	    return loggingEvent;  
}
}


```

#logs #logger #mockito #sonarqube