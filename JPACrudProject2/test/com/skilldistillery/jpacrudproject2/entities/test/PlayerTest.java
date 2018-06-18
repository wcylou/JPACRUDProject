package com.skilldistillery.jpacrudproject2.entities.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpacrudproject2.entities.Player;
import com.skilldistillery.jpacrudproject2.entities.Position;

public class PlayerTest {

	private static EntityManagerFactory emf;
	private static EntityManager em;

	@BeforeAll
	public static void setUpAll() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPA");
	}

	@AfterAll
	public static void tearDownAll() throws Exception {
		emf.close();
	}

	@BeforeEach
	public void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test_player_mappings() {
		Player p = em.find(Player.class, 5);
		assertEquals("Jordan", p.getFirstName());
		assertEquals("Pickford", p.getLastName());
		assertEquals(Position.Goalkeeper, p.getPosition());
		assertEquals(1, p.getShirtNumber());
		assertEquals("England", p.getTeam());
		assertEquals(24, p.getAge());
	}
}
