package com.skilldistillery.mvccrudproject.data;

import java.sql.Date;

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
}
