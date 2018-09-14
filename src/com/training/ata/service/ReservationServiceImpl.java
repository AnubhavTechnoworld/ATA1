package com.training.ata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.training.ata.bean.ReservationBean;
import com.training.ata.dao.ReservationBeanDAO;
import com.training.ata.exception.ATAException;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService
{
	@Autowired
	ReservationBeanDAO dao;

	@Override
	public List<ReservationBean> getReservation() throws ATAException {
		return dao.getReservation();
	}

	@Override
	public List<ReservationBean> addReservation(ReservationBean reservation) throws ATAException {
		return dao.addReservation(reservation);
	}

	@Override
	public List<ReservationBean> viewReservation(ReservationBean reservation) throws ATAException {
		return dao.getReservation();
	}
}
