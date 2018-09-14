package com.training.ata.dao;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.training.ata.bean.CredentialsBean;
import com.training.ata.bean.DriverBean;
import com.training.ata.bean.ProfileBean;
import com.training.ata.bean.ReservationBean;
import com.training.ata.bean.RouteBean;
import com.training.ata.bean.VehicleBean;
import com.training.ata.exception.ATAException;

@Repository
public class ReservationBeanDAOImpl implements ReservationBeanDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<ReservationBean> getReservation() throws ATAException
	{
		try
		{
		Session session = sessionFactory.openSession();
		Query query =session.createQuery("from ReservationBean");
		List<ReservationBean> reservation = query.list();
		session.close();
		return reservation;
		}
		catch(Exception ex)
		{
			throw new ATAException(ex.getMessage());
		}
	}

	@Override
	public List<ReservationBean> addReservation(ReservationBean reservation) throws ATAException {
		
		Session session = sessionFactory.openSession();
		/*
		CredentialsBean cb = new CredentialsBean();
		VehicleBean vb = new VehicleBean();
		RouteBean rb = new RouteBean();
		DriverBean db = new DriverBean();
		ProfileBean pb = new ProfileBean();
		ReservationBean rrb = new ReservationBean();
		*/
		RouteBean rb = new RouteBean();
		Query q = session.createSQLQuery("select ata_seq_reservationid.nextval from dual");
		BigDecimal b = (BigDecimal)q.uniqueResult();
		String reservationId = String.valueOf(b);
		
		session.beginTransaction();
		reservation.setReservationId(reservationId);
		reservation.setBookingStatus("1");
		reservation.setTotalFare(222);
		/*
		reservation.setUserID(cb.getUserID());
		reservation.setVehicleID(vb.getVehicleID());
		reservation.setDriverID(db.getDriverID());
		reservation.setBookingDate(ddd);
		*/
		session.persist(reservation);
		session.getTransaction().commit();
		return getReservation();
		
	}
	

}
