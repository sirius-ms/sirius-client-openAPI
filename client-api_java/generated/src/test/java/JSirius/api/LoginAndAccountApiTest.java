/*
 * SIRIUS Nightsky API
 * REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.
 *
 * OpenAPI spec version: v0.9 on SIRIUS 5.6.0-SNAPSHOT
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package JSirius.api;

import JSirius.model.AccountCredentials;
import JSirius.model.AccountInfo;
import JSirius.model.Subscription;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * API tests for LoginAndAccountApi
 */
@Ignore
public class LoginAndAccountApiTest {

    private final LoginAndAccountApi api = new LoginAndAccountApi();

    /**
     * Get information about the account currently logged in.
     *
     * Get information about the account currently logged in. Fails if not logged in.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getAccountInfoTest() throws Exception {
        Boolean includeSubs = null;
        AccountInfo response = api.getAccountInfo(includeSubs);

        // TODO: test validations
    }
    /**
     * Get SignUp URL (For signUp via web browser)
     *
     * Get SignUp URL (For signUp via web browser)
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getSignUpURLTest() throws Exception {
        String response = api.getSignUpURL();

        // TODO: test validations
    }
    /**
     * Get available subscriptions of the account currently logged in.
     *
     * Get available subscriptions of the account currently logged in. Fails if not logged in.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getSubscriptionsTest() throws Exception {
        List<Subscription> response = api.getSubscriptions();

        // TODO: test validations
    }
    /**
     * Check if a user is logged in.
     *
     * Check if a user is logged in.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void isLoggedInTest() throws Exception {
        Boolean response = api.isLoggedIn();

        // TODO: test validations
    }
    /**
     * Login into SIRIUS web services.
     *
     * Login into SIRIUS web services.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void loginTest() throws Exception {
        AccountCredentials body = null;
        Boolean acceptTerms = null;
        Boolean failWhenLoggedIn = null;
        Boolean includeSubs = null;
        AccountInfo response = api.login(body, acceptTerms, failWhenLoggedIn, includeSubs);

        // TODO: test validations
    }
    /**
     * Logout from SIRIUS web services.
     *
     * Logout from SIRIUS web services.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void logoutTest() throws Exception {
        api.logout();

        // TODO: test validations
    }
    /**
     * Open SignUp window in system browser and return signUp link.
     *
     * Open SignUp window in system browser and return signUp link.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void signUpTest() throws Exception {
        String response = api.signUp();

        // TODO: test validations
    }
}
