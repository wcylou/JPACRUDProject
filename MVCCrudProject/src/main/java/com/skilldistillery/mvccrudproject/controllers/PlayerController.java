//import java.util.ArrayList;

package com.skilldistillery.mvccrudproject.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrudproject2.entities.Player;
import com.skilldistillery.mvccrudproject.data.PlayerDAO;

@Controller
@Validated
public class PlayerController {

	@Autowired
	private PlayerDAO playerDAO;

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}

	@RequestMapping(path = "playerDetails.do", method = RequestMethod.GET)
	public String getPlayer(@RequestParam("playerId") int playerId, RedirectAttributes redir, HttpSession session) {
		Player player = playerDAO.show(playerId);
		redir.addFlashAttribute("player", player);
		session.setAttribute("player", player);
		return "redirect:playercreated.do";
	}

	@RequestMapping(path = "playercreated.do", method = RequestMethod.GET)
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/playerdetails.jsp");
		return mv;
	}

	@RequestMapping(path = "updatePlayer.do", method = RequestMethod.GET)
	public ModelAndView updatePlayer(@RequestParam(name = "playerId") int playerId) {
		ModelAndView mv = new ModelAndView();
		Player player = playerDAO.show(playerId);
		mv.addObject("playerupdate", player);
		mv.setViewName("WEB-INF/updateplayer.jsp"); // redirect to new mapping
		return mv;
	}

	@RequestMapping(path = "updatePlayerDetails.do", method = RequestMethod.POST)
	public ModelAndView updateFilmDetails(@RequestParam(name = "playerId") int playerId, Player player) {
		ModelAndView mv = new ModelAndView();
		Player playerUpdated = playerDAO.update(playerId, player);
		mv.addObject("playerupdated", playerUpdated);
		mv.setViewName("WEB-INF/updatedplayerdetails.jsp");
		return mv;
	}

	@RequestMapping(path = "addPlayer.do", method = RequestMethod.GET)
	public ModelAndView addPlayer(@Valid Player player) {
		ModelAndView mv = new ModelAndView();
		List<Integer> shirtNos = new ArrayList<>();
		for (int i = 1; i <= 23; i++) {
			shirtNos.add(i);
		}
		mv.addObject("shirtNos", shirtNos);
		mv.setViewName("WEB-INF/addplayer.jsp");
		return mv;
	}

	@RequestMapping(path = "addPlayerDetails.do", method = RequestMethod.POST)
	public ModelAndView addPlayerDetails(Player player) {
		ModelAndView mv = new ModelAndView();
		Player playerAdded = playerDAO.create(player);
		mv.addObject("player", playerAdded);
		mv.setViewName("WEB-INF/playerdetails.jsp");
		return mv;
	}

	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.GET)
	public String deletePlayer(@RequestParam("playerId") int playerId) {
		ModelAndView mv = new ModelAndView();
		playerDAO.destroy(playerId);
		return "index.do";
	}

	@RequestMapping(path = "listAllPlayers.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Player> players = new ArrayList<>();
		players = playerDAO.index();
		mv.addObject("players", players);
		mv.setViewName("WEB-INF/allPlayers.jsp");
		return mv;
	}

	@RequestMapping(path = "teamSelector.do", method = RequestMethod.GET)
	public ModelAndView teamSelector() {
		ModelAndView mv = new ModelAndView();
		List<Player> goalkeepers = new ArrayList<>();
		goalkeepers = playerDAO.getGoalkeepers();
		mv.addObject("goalkeepers", goalkeepers);

		List<Player> defenders = new ArrayList<>();
		defenders = playerDAO.getDefenders();
		mv.addObject("defenders", defenders);

		List<Player> midfielders = new ArrayList<>();
		midfielders = playerDAO.getMidfielders();
		mv.addObject("midfielders", midfielders);

		List<Player> strikers = new ArrayList<>();
		strikers = playerDAO.getStrikers();
		mv.addObject("strikers", strikers);

		mv.setViewName("WEB-INF/teamSelector.jsp");
		return mv;
	}

	@RequestMapping(path = "createTeam.do", method = RequestMethod.GET)
	public ModelAndView creaeTeam(@RequestParam("gk") int gkId, @RequestParam("lb") int lbId,
			@RequestParam("cb1") int cb1Id, @RequestParam("cb2") int cb2Id, @RequestParam("rb") int rbId,
			@RequestParam("lm") int lmId, @RequestParam("cm1") int cm1Id, @RequestParam("cm2") int cm2Id,
			@RequestParam("rm") int rmId, @RequestParam("st1") int st1Id, @RequestParam("st2") int st2Id, @RequestParam("teamName") String teamName) {
		ModelAndView mv = new ModelAndView();
		Player gk = playerDAO.show(gkId);
		mv.addObject("gkPicked", gk);
		Player lb = playerDAO.show(lbId);
		mv.addObject("lbPicked", lb);
		Player cb1 = playerDAO.show(cb1Id);
		mv.addObject("cb1Picked", cb1);
		Player cb2 = playerDAO.show(cb2Id);
		mv.addObject("cb2Picked", cb2);
		Player rb = playerDAO.show(rbId);
		mv.addObject("rbPicked", rb);
		Player lm = playerDAO.show(lmId);
		mv.addObject("lmPicked", lm);
		Player cm1 = playerDAO.show(cm1Id);
		mv.addObject("cm1Picked", cm1);
		Player cm2 = playerDAO.show(cm2Id);
		mv.addObject("cm2Picked", cm2);
		Player rm = playerDAO.show(rmId);
		mv.addObject("rmPicked", rm);
		Player st1 = playerDAO.show(st1Id);
		mv.addObject("st1Picked", st1);
		Player st2 = playerDAO.show(st2Id);
		mv.addObject("st2Picked", st2);
		mv.addObject("teamName", teamName);
		mv.setViewName("WEB-INF/teamselectordisplay.jsp");
		return mv;
	}

	private Player getCurrentPlayerFromSession(HttpSession session) {
		Player current = (Player) session.getAttribute("player");
		return current;
	}

	@RequestMapping(path = "navPlayer.do", params = "next")
	public ModelAndView navPlayerNext(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Player current = getCurrentPlayerFromSession(session);
		Player next = playerDAO.getNextPlayer(current);
		session.setAttribute("player", next);
		mv.addObject(next);
		mv.setViewName("WEB-INF/playerdetails.jsp");
		return mv;
	}

	@RequestMapping(path = "navPlayer.do", params = "prev")
	public ModelAndView navPlayerPrevious(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Player current = getCurrentPlayerFromSession(session);
		Player previous = playerDAO.getPreviousPlayer(current);
		session.setAttribute("player", previous);
		mv.addObject(previous);
		mv.setViewName("WEB-INF/playerdetails.jsp");
		return mv;
	}

}
