//import java.util.ArrayList;

package com.skilldistillery.mvccrudproject.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrudproject2.entities.Player;
import com.skilldistillery.mvccrudproject.data.PlayerDAO;

@Controller
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
	public String getPlayer(@RequestParam("playerId") int playerId, RedirectAttributes redir) {
		Player player = playerDAO.show(playerId);
		redir.addFlashAttribute("player", player);
		return "redirect:playercreated.do";
	}

	@RequestMapping(path = "playercreated.do", // mapping to handle redirect
			method = RequestMethod.GET) // "state" is already in model for
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
	public ModelAndView addPlayer(Player player) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addplayer.jsp"); // redirect to new mapping
		return mv;
	}
	
	@RequestMapping(path = "addPlayerDetails.do", method = RequestMethod.POST)
	public ModelAndView addPlayerDetails(Player player) {
		ModelAndView mv = new ModelAndView();
		Player playerAdded = playerDAO.create(player);
		mv.addObject("player", playerAdded);
		mv.setViewName("WEB-INF/playerdetails.jsp"); // redirect to new mapping
		return mv;
	}
	
	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.GET)
	public String deletePlayer(@RequestParam("playerId") int playerId) {
		ModelAndView mv = new ModelAndView();
		playerDAO.destroy(playerId);
		return "index.do";
	}
}
