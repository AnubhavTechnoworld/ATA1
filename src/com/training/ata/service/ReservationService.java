package com.training.ata.service;

import java.util.List;

import com.training.ata.bean.ReservationBean;
import com.training.ata.exception.ATAException;

public interface ReservationService 
{
	List<ReservationBean> getReservation() throws ATAException;
	List<ReservationBean> addReservation(ReservationBean reservation) throws ATAException;
	List<ReservationBean> viewReservation(ReservationBean reservation) throws ATAException;
}
