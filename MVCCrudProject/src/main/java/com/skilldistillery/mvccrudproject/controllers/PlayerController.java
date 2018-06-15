//import java.util.ArrayList;

package com.skilldistillery.mvccrudproject.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		public ModelAndView getPlayer(@RequestParam("playerId") int playerId) {
			ModelAndView mv = new ModelAndView();
			Player player = playerDAO.show(playerId);
			mv.addObject("player", player);
			mv.setViewName("WEB-INF/playerdetails.jsp");
			return mv;
		}
////		
//		@RequestMapping(path = "players.do", method = RequestMethod.GET)
//		public ModelAndView index() {
//		  ModelAndView mv = new ModelAndView();
//		  List <Player> players = new ArrayList<>();
//		  players = playerDAO.index();
//		  mv.addObject("players", players);
//		  mv.setViewName("WEB-INF/index.jsp");
//		  return mv;
//		  
		  
		  @RequestMapping(path = "addPlayer.do", method = RequestMethod.POST)
		    public ModelAndView addPlayer(Player player) {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("WEB-INF/addPlayer.jsp"); // redirect to new mapping
		        return mv;
		    }
	}

