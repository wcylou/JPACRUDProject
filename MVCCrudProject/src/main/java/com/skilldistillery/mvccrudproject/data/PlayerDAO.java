package com.skilldistillery.mvccrudproject.data;

import com.skilldistillery.jpacrudproject2.entities.Player;

public interface PlayerDAO {
	public Player create(Player player);
	public Player update(int id, Player player);
	public void destroy(int id);
	public Player show(int id);
}
