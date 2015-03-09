package controle;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;

import meserreurs.MonException;
import metier.Stage;

@WebServlet("/Controleur")
public class Controleur extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private static final String ACTION_TYPE = "action";
	private static final String SAISIE_STAGE = "saisieStage";
	private static final String AFFICHER_STAGE = "afficheStage";
	private static final String RECHERCHER_STAGE = "rechercheStage";
	private static final String CHERCHER_STAGE = "chercheStage";
	private static final String AJOUT_STAGE = "ajoutStage";
	private static final String MODIFIER_STAGE = "modifierStage";
	private static final String ERROR_PAGE = null;
	private static final String NAME_STAGE = "nomStage";
	private static final String AJOUT_STAGE_MODIFIER = "ajoutStageModifie";
	private static final String SUPPRIMER_STAGE = "supprimerStage";

	// le format est une combinaison de MM dd yyyy avec / ou –
		// exemple dd/MM/yyyy
		public Date conversionChaineenDate(String unedate, String unformat) throws Exception
		{
			Date datesortie;
			// on définit un format de sortie
			SimpleDateFormat defFormat = new SimpleDateFormat(unformat);
			datesortie = defFormat.parse(unedate);
			return datesortie;
		}


	protected void processusTraiteRequete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, MonException, Exception
		{
			String actionName = request.getParameter(ACTION_TYPE);
			String destinationPage = ERROR_PAGE;
			List<Stage> listeStages = null;
			// execute l'action

			if (SAISIE_STAGE.equals(actionName))
			{
				request.setAttribute("stage", new Stage());
				destinationPage = "/saisieStage.jsp";
			}

			else if (AJOUT_STAGE.equals(actionName))
			{
				try
				{
					Stage unStage = new Stage();
					request.setCharacterEncoding("ISO-8859-1");
					unStage.setId(request.getParameter("id"));
					unStage.setLibelle(new String(request.getParameter("libelle").getBytes(StandardCharsets.ISO_8859_1), "UTF-8"));
					unStage.setDatedebut(conversionChaineenDate(request.getParameter("datedebut"), "yyyy-MM-dd"));
					unStage.setDatefin(conversionChaineenDate(request.getParameter("datefin"), "yyyy-MM-dd"));
					unStage.setNbplaces(Integer.parseInt(request.getParameter("nbplaces")));
					unStage.setNbinscrits(Integer.valueOf((request.getParameter("nbplaces"))).intValue());
					unStage.setNbinscrits(Integer.valueOf((request.getParameter("nbinscrits"))).intValue());
					unStage.insertionStage();
					destinationPage = "/index.jsp";
				} catch (Exception e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					System.out.println(e.getMessage());
				}
				
			} else if (AFFICHER_STAGE.equals(actionName))
			{
				try
				{
					Stage unStage = new Stage();
					request.setAttribute("affichageListe", 1);
					listeStages=unStage.rechercheLesStages();
					request.setAttribute("liste", listeStages);
					destinationPage = "/afficherStages.jsp";
				} catch (MonException e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					destinationPage = "/Erreur.jsp";
					
				}
				
			} else if (RECHERCHER_STAGE.equals(actionName))
			{
				try
				{
					Stage unStage = new Stage();
					String nomS = request.getParameter(NAME_STAGE);
					listeStages=unStage.rechercheUnStage(nomS);
					request.setAttribute("liste", listeStages);
					destinationPage = "/rechercherStages.jsp";
				} catch (MonException e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					destinationPage = "/Erreur.jsp";
					
				}
			} else if (MODIFIER_STAGE.equals(actionName))
			{
				try
				{
					request.setCharacterEncoding("UTF-8");
					Stage unStage = new Stage();
					String nomS = request.getParameter(NAME_STAGE);
					System.out.println("Modif : " + nomS);
					unStage = unStage.modifierStage(nomS);
					request.setAttribute("libelle", unStage.getLibelle());
					request.setAttribute("id", unStage.getId());
					request.setAttribute("dateDebut", new SimpleDateFormat("yyyy-MM-dd").format(unStage.getDatedebut()));
					request.setAttribute("dateFin", new SimpleDateFormat("yyyy-MM-dd").format(unStage.getDatefin()));
					request.setAttribute("nbInscrits", unStage.getNbinscrits());
					request.setAttribute("nbPlaces", unStage.getNbplaces());
					destinationPage = "/modifierStage.jsp";
				} catch (MonException e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					destinationPage = "/Erreur.jsp";
					
				}
			}else if (AJOUT_STAGE_MODIFIER.equals(actionName))
			{
				try
				{
					Stage unStage = new Stage();
					unStage.setId(request.getParameter("id"));
					System.out.println(request.getParameter("libelle"));
					unStage.setLibelle(request.getParameter("libelle"));
					unStage.setDatedebut(conversionChaineenDate(request.getParameter("datedebut"), "yyyy-MM-dd"));
					unStage.setDatefin(conversionChaineenDate(request.getParameter("datefin"), "yyyy-MM-dd"));
					unStage.setNbplaces(Integer.parseInt(request.getParameter("nbplaces")));
					unStage.setNbinscrits(Integer.valueOf((request.getParameter("nbplaces"))).intValue());
					unStage.setNbinscrits(Integer.valueOf((request.getParameter("nbinscrits"))).intValue());
					unStage.insertionStageModifie(request.getParameter("id"));
					destinationPage = "/index.jsp";
				} catch (Exception e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					System.out.println(e.getMessage());
				}
				
			} else if (SUPPRIMER_STAGE.equals(actionName))
			{
				try
				{
					Stage unStage = new Stage();
					String idStage = request.getParameter("idStage");
					unStage.supprimerStage(idStage);
					destinationPage = "/Controleur?action=afficheStage";
				} catch (Exception e)
				{
					request.setAttribute("MesErreurs", e.getMessage());
					System.out.println(e.getMessage());
				}
				
			} 
	      RequestDispatcher dispatcher =getServletContext().getRequestDispatcher(destinationPage);
	           dispatcher.forward(request, response); 
	  } 

	//L’appel de cette procédure se fait avec :

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			try
			  {
				processusTraiteRequete(request, response);
					  }
			catch( Exception e)
				{
					e.printStackTrace(); }
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			try
			  {
				processusTraiteRequete(request, response);
			  }
			catch( Exception e)
				{
					e.printStackTrace();;
				}
		}
}