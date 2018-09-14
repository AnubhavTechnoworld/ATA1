package com.training.ata.dao;

import java.util.List;

import com.training.ata.bean.ReservationBean;
import com.training.ata.exception.ATAException;



public interface ReservationBeanDAO 
{
	List<ReservationBean> getReservation() throws ATAException;
	List<ReservationBean> addReservation(ReservationBean reservation) throws ATAException;
}
