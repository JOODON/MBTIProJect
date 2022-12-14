package config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = {"Dao","Service"})
@Import({DBconfig.class})

public class ApplicationConfig {
}
