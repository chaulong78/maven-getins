package com.msp.givn.security;

import com.msp.givn.config.UserDetailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.session.HttpSessionEventPublisher;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailServiceImpl userDetailsService;

    @Autowired
    private DataSource dataSource;

    /* Session management */
    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    @Bean
    public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher() {
        return new ServletListenerRegistrationBean<HttpSessionEventPublisher>(new HttpSessionEventPublisher());
    }
    /* END Session management */

    @Bean
    public PasswordEncoder passwordEncoder() {
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        return passwordEncoder;
    }

    @Bean
    public AuthenticationSuccessHandler authenticationSuccessHandler() {
        return new UrlAuthenticationSuccessHandlerImpl();
    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl db = new JdbcTokenRepositoryImpl();
        db.setDataSource(dataSource);
        return db;
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());

        return authenticationProvider;
    }

    @Bean
    public HttpFirewall defaultHttpFirewall() {
        return new DefaultHttpFirewall();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) {
        try {
            auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
            auth.authenticationProvider(authenticationProvider());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                /*Tài khoản người dùng + liên hệ*/
                .antMatchers("/admin/account", "/admin/account/", "/admin/account/contact").hasAnyRole("MANAGER", "ADMIN", "SALE")
                .antMatchers("/admin/account/*", "/admin/account/*/*").hasAnyRole("MANAGER", "ADMIN")

                /*Khóa học + lớp học*/
                .antMatchers("/admin/course", "/admin/course/type", "/admin/course/class").hasAnyRole("MANAGER", "ADMIN", "SALE")
                .antMatchers("/admin/course/*", "/admin/course/*/*").hasAnyRole("MANAGER", "ADMIN")

                /*Những chức năng còn lại trang admin*/
                .antMatchers("/admin", "/admin/*", "/admin/*/*", "/admin/*/*/*").hasAnyRole("MANAGER", "ADMIN", "SALE")

                .antMatchers("/profile", "/profile/", "/profile/*", "/forgot-pass", "/forgot-pass/", "/forgot-pass/*", "/change-pass", "/change-pass/", "/change-pass/*"
                        , "/reset-pass", "/reset-pass/", "/reset-pass/*").hasAnyRole("ADMIN", "MANAGER", "SALE", "USER")
                .antMatchers("/login", "/login", "/login/*", "/signup", "/signup", "/signup/*").anonymous()
                .antMatchers("/", "/*").permitAll();

        http.authorizeRequests().and().formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/authenticateTheUser")
                .successHandler(authenticationSuccessHandler())
                .usernameParameter("username")
                .passwordParameter("password")
                .permitAll();

        http.authorizeRequests().and().rememberMe()
                .tokenRepository(this.persistentTokenRepository())
                .tokenValiditySeconds(1 * 24 * 60 * 60).and().exceptionHandling().accessDeniedPage("/web/404.jsp");

        http.logout()
                .logoutUrl("/logout")
                .deleteCookies("JSESSIONID")
                .invalidateHttpSession(true)
                .permitAll();

        http.sessionManagement().maximumSessions(1).sessionRegistry(sessionRegistry());
    }
}
