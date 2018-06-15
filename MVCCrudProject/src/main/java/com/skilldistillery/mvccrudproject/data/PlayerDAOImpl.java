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
		em.getTransaction().begin();
		em.persist(player);
		em.flush();
		em.getTransaction().commit();
		return player;
	}

	@Override
	public Player update(int id, Player player) {
		Player managed = em.find(Player.class, id);
		em.getTransaction().begin();
		managed.setFirstName(player.getFirstName());
		managed.setLastName(player.getLastName());
		managed.setDateOfBirth(player.getDateOfBirth());
		managed.setTeam(player.getTeam());
		managed.setShirtNumber(player.getShirtNumber());
		managed.setPosition(player.getPosition());

		em.getTransaction().commit();
		return managed;
	}

	@Override
	public void destroy(int id) {
		Player managed = em.find(Player.class, id);
		em.getTransaction().begin();
		em.remove(managed);
		em.getTransaction().commit();
	}

	@Override
	public Player show(int id) {
		Player p = em.find(Player.class, id);
		return p;
	}
}
