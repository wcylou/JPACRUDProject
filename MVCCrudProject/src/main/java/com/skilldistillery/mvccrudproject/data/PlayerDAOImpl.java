package com.skilldistillery.mvccrudproject.data;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.PersistenceContext;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrudproject2.entities.Player;
import com.skilldistillery.jpacrudproject2.entities.Position;

@Transactional
@Component
public class PlayerDAOImpl implements PlayerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Player create(Player player) {
		em.persist(player);
		return player;
	}

	@Override
	public Player update(int id, Player player) {
		Player managed = em.find(Player.class, id);
		managed.setFirstName(player.getFirstName());
		managed.setLastName(player.getLastName());
		managed.setAge(player.getAge());
		managed.setTeam(player.getTeam());
		managed.setShirtNumber(player.getShirtNumber());
		managed.setPosition(player.getPosition());
		return managed;
	}

	@Override
	public void destroy(int id) {
		Player managed = em.find(Player.class, id);
		em.remove(managed);
	}

	@Override
	public Player show(int id) {
		Player p = em.find(Player.class, id);
		return p;
	}

	@Override
	public List<Player> index() {
		String query = "SELECT p FROM Player p";
		List<Player> players = em.createQuery(query, Player.class).getResultList();
		return players;
	}
	
	@Override
	public List<Player> getGoalkeepers() {
		String query = "SELECT p FROM Player p WHERE p.position = 'Goalkeeper'";
		List<Player> players = em.createQuery(query, Player.class)
				.getResultList();
		return players;
	}
	
	@Override
	public List<Player> getDefenders() {
		String query = "SELECT p FROM Player p WHERE p.position = 'Defender'";
		List<Player> players = em.createQuery(query, Player.class)
				.getResultList();
		return players;
	}
	
	@Override
	public List<Player> getMidfielders() {
		String query = "SELECT p FROM Player p WHERE p.position = 'Midfielder'";
		List<Player> players = em.createQuery(query, Player.class)
				.getResultList();
		return players;
	}
	
	@Override
	public List<Player> getStrikers() {
		String query = "SELECT p FROM Player p WHERE p.position = 'Striker'";
		List<Player> players = em.createQuery(query, Player.class)
				.getResultList();
		return players;
	}

	@Override
	public Player getNextPlayer(Player player) {
		List <Player> players = index();
		System.out.println(players);
	    int index = -1;
	    Player player2 = null;
	    for (int i = 0; i < players.size(); i++) {
	      Player player3 = players.get(i);
	      if (player3.getLastName().equalsIgnoreCase(player.getLastName())) {
	        index = i;
	        break;
	      }
	    }
	    index++;
	    if (index == players.size()) {
	        index = 0;
	      }
	    player2 = players.get(index);
	    return player2;
	}
	
	@Override
	public Player getPreviousPlayer(Player player) {
		List <Player> players = index();
		System.out.println(players);
	    int index = -1;
	    Player player2 = null;
	    for (int i = 0; i < players.size(); i++) {
	      Player player3 = players.get(i);
	      if (player3.getLastName().equalsIgnoreCase(player.getLastName())) {
	        index = i;
	        break;
	      }
	    }
	    index--;
	    if (index == -1) {
	        index = players.size() - 1;
	      }
	    player2 = players.get(index);
	    return player2;
	}
	
}
