/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author adminl
 */
public class TesteurdeService {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        Client client = ClientBuilder.newClient();

        String login = "1";
        System.out.println("Démonstration de récupération d'informations auprès du client proxapi");
        System.out.println("Nous allons récupérer auprès du webservice les informations sur les clients du conseiller n°1 et affciher leurs noms");
        

        //Chemin à atteindre pour utiliser le Web Service 
        WebTarget webTarget = client.target("http://localhost:8080/serviceweb/proxapi");
        WebTarget resourceWebTarget = webTarget.path("conseiller");
        WebTarget getobject = resourceWebTarget.path("listeclients");

        System.out.println(getobject.getUri());
        Invocation.Builder invocationBuilder = getobject.request();

        //Appel de la méthode post : envoi de l'objet objetAEnvoyer, et on déclare que c'est un json.
        Response responseb = invocationBuilder.post(Entity.entity(login, MediaType.TEXT_PLAIN));

        if (responseb.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : "
                    + responseb.getStatus());
        }
        String responseText = invocationBuilder.post(Entity.entity(login, MediaType.TEXT_PLAIN), String.class);
        ObjectMapper mapper = new ObjectMapper();
        ArrayList<fr.gtm.domaine.Client> clients = mapper.readValue(responseText, mapper.getTypeFactory().constructCollectionType(ArrayList.class, fr.gtm.domaine.Client.class));
        
         for(fr.gtm.domaine.Client clientz : clients) {
            System.out.println("Nom du client du conseiller"+ login +" : "+ clientz.getNom());
        }
        
//Remarque: Dans la servlet on a également la mise en session, censée permettre d'afficher les informations:
//        RequestDispatcher dispatcher;
//        HttpSession maSession = request.getSession();
//        maSession.setAttribute("clients", clients);
//        dispatcher = request.getRequestDispatcher("Accueil.jsp");
//        dispatcher.forward(request, response);

    }

}
