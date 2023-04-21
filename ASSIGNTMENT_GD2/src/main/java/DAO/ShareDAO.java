package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.Utils.JpaUtils;

import domain.ReportUser;
import entity.Report;
import entity.Share;
import entity.Favorite;
import entity.User;
import entity.Video;

public class ShareDAO {
	public void create(Share share) {
		EntityManager em = com.Utils.JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(share);
			trans.commit();
			System.out.println("Thêm mới thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			System.out.println("Error:" + e.toString());
			throw e;
		} finally {
			em.close();
		}
	}

}
