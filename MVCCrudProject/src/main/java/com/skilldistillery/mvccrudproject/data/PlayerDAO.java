package com.skilldistillery.mvccrudproject.data;

import java.util.List;

import com.skilldistillery.jpacrudproject2.entities.Player;

public interface PlayerDAO {
	public Player create(Player player);
	public Player update(int id, Player player);
	public void destroy(int id);
	public Player show(int id);
	public List<Player> index();
	public List<Player> getGoalkeepers();
	public List<Player> getStrikers();
	public List<Player> getMidfielders();
	public List<Player> getDefenders();
	Player getNextPlayer(Player player);
	Player getPreviousPlayer(Player player);
}
