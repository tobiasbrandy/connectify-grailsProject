<%--
  Created by IntelliJ IDEA.
  User: tobias
  Date: 1/5/20
  Time: 11:04
--%>


<meta name="layout" content="main"/>
<v-container>
    <v-row justify="center" >
        <v-col>
            <asset:image src="logo.png" height="180" alt="Grails Logo"/>
        </v-col>
    </v-row>
    <v-row align="center" justify="center">
        <p class="display-1 teal--text text--accent-2">Sign in</p>
    </v-row>
    <g:form controller="authentication" action="doLogin" class="form-signin">
        <v-row wrap justify="center" >
            <v-col cols="4" class="py-0">
                <v-text-field
                        dark
                        label="<g:message code="username"/>"
                        name="username"
                        required
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row wrap justify="center" >
            <v-col cols="4" class="py-0">
                <v-text-field
                        dark
                        v-model="password"
                        label="<g:message code="password"/>"
                        name="password"
                        type="password"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row wrap justify="center">
            <v-col cols="7">
                <v-btn type="submit" name="login" color="#2E3047" class="white--text" value="Login" width="200" rounded>Login</v-btn>
            </v-col>
            <v-col cols="8" >
                <v-btn color="#59D0B4" text>Forgot your password?
                </v-btn>
            </v-col>
        </v-row>
    </g:form>
</v-container>
