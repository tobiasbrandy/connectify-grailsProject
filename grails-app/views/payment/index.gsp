<%--
  Created by IntelliJ IDEA.
  User: tobias
  Date: 30/5/20
  Time: 16:00
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Subscribe</title>
    <meta name="layout" content="main"/>
</head>
<body>
<v-container>
    <v-row>
        <v-col class="ml-4">
            <v-card color="#1d1e33" width="350" height="350">
                <v-container fluid class="pa-0">
                    <v-img
                            src="https://www.bigben.com.es/wp-content/uploads/2015/05/cursos-de-ingles-presenciales.jpg"
                            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="160px"
                    >
                    </v-img>
                </v-container>
                <v-container>
                    <v-row justify="center">
                        <v-col class="pa-0">
                            <p class="pa-2 mb-0 teal--text text--accent-3 title">Take part in all the activities you want</p>
                        </v-col>
                    </v-row>
                    <v-row>
                        <v-col class="pa-0">
                            <v-card-text class="white--text">
                                By paying our subscription you will have unlimited access to any of the activities of the platform, without restrictions
                            </v-card-text>
                        </v-col>
                    </v-row>
                </v-container>
            </v-card>
        </v-col>
        <v-col>
            <v-card color="#1d1e33" width="350" height="350">
                <v-container fluid class="pa-0">
                    <v-img
                            src="https://lh3.googleusercontent.com/proxy/l0KeItpVbYSph6zURiP5D2AbIwVerRrCcveAddFtutSBcafWU_xYuMQzZLfYviuv4eT_aE87QPB8OGgWEMD0c2B0SPBY5NocHq2J4X__tSg7O0-ziXaaHXYwzeE_cKpbFRUDOTXlHk33JmalcEni"
                            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="160px"
                    >
                    </v-img>
                </v-container>
                <v-container>
                    <v-row justify="center">
                        <v-col class="pa-0">
                            <p class="pa-2 mb-0 teal--text text--accent-3 title">Direct contact with our <br> Connectioners</p>
                        </v-col>
                    </v-row>
                    <v-row>
                        <v-col class="pa-0">
                            <v-card-text class="white--text">
                                Any questions, complains or problems can be discussed directly with the activity provider
                            </v-card-text>
                        </v-col>
                    </v-row>
                </v-container>
            </v-card>
        </v-col>
        <v-col>
            <v-card color="#1d1e33" width="350" height="350">
                <v-container fluid class="pa-0">
                    <v-img
                            src="https://insiderfinance.com.ar/wp-content/uploads/2020/01/image1.jpeg"
                            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="160px"
                    >
                    </v-img>
                </v-container>
                <v-container>
                    <v-row justify="center">
                        <v-col class="pa-0">
                            <p class="pa-2 mb-0 teal--text text--accent-3 title">Best price in the market guaranteed</p>
                        </v-col>
                    </v-row>
                    <v-row>
                        <v-col class="pa-0">
                            <v-card-text class="white--text">
                                The complete control that every Connectioner has over their activities and our business model allow us to provide the best prices in the market
                            </v-card-text>
                        </v-col>
                    </v-row>
                </v-container>
            </v-card>
        </v-col>
    </v-row>
    <v-row>
        <g:each in="${preferencesInfo}" var="preferenceInfo">
            <v-col cols="3">
                <v-card color="#1d1e33" width="300" height="250">
                    <v-container fluid class="pa-0" >
                        <v-row no-gutters>
                            <v-col>
                                <g:if test="${preferenceInfo.months != 12}">
                                    <h3 class="white--text text-center pa-3">
                                        ${preferenceInfo.months} month plan
                                    </h3>
                                </g:if>
                                <g:else>
                                    <h3 class="teal--text text--accent-3 pa-3">
                                        ${preferenceInfo.months} month plan
                                    </h3>
                                </g:else>
                            </v-col>
                        </v-row>
                        <v-divider dark></v-divider>
                        <v-row no-gutters>
                            <v-col>
                                <v-card-subtitle class="white--text text-left pa-2">
                                    <v-icon color="#1DE9B6">mdi-minus</v-icon>
                                    One payment of $${preferenceInfo.price}
                                </v-card-subtitle>
                            </v-col>
                        </v-row>
                        <v-row no-gutters>
                            <v-col>
                                <v-card-text class="white--text text-left pa-2">
                                    <v-icon color="#1DE9B6">mdi-minus</v-icon>
                                    Final price per month <strong>$${preferenceInfo.price / preferenceInfo.months as int}</strong>/month
                                </v-card-text>
                            </v-col>
                        </v-row>
                        <v-row no-gutters>
                            <v-col>
                                <g:if test="${preferenceInfo.months > 1}">
                                    <v-card-text class="white--text text-left pa-2">
                                        <v-icon color="#1DE9B6">mdi-minus</v-icon>
                                        Obtain a <strong>%${100 - (preferenceInfo.price / preferenceInfo.months as int)}</strong> discount
                                    </v-card-text>
                                </g:if>
                                <g:else>
                                    <v-card-text class="white--text pa-2">
                                        <span><br></span>
                                    </v-card-text>
                                </g:else>
                            </v-col>
                        </v-row>
                        <v-row no-gutters>
                            <v-col>
                                <g:if test="${preferenceInfo.months == 12}">
                                    <v-card-text class="teal--text text--accent-3">
                                        BEST PRICE
                                    </v-card-text>
                                </g:if>
                                <g:else>
                                    <v-card-text class="white--text">
                                        <span><br></span>
                                    </v-card-text>
                                </g:else>
                            </v-col>
                        </v-row>
                        <v-row no-gutters>
                            <v-col class="pa-0">
                                <v-btn block color="#1DE9B6" bold href="${preferenceInfo.preference.initPoint}">Select this plan</v-btn>
                            </v-col>
                        </v-row>
                    </v-container>
                </v-card>
            </v-col>
        </g:each>
    %{--            <a href="${preferenceInfo.preference.initPoint}">Suscribirse por ${preferenceInfo.months} meses. A solo $${preferenceInfo.price}</a>--}%
    </v-row>
</v-container>
</body>


