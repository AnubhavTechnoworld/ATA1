package com.training.ata.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.training.ata.bean.ReservationBean;
import com.training.ata.bean.RouteBean;
import com.training.ata.exception.ATAException;
import com.training.ata.service.ReservationService;

@Controller
public class ReservationController 
{
	@Autowired
	ReservationService reservationservice;
	
	@RequestMapping("/getreservation")
	public ModelAndView getReservation()
	{
		try
		{
			List <ReservationBean> reservation = reservationservice.getReservation();
			ModelAndView mv = new ModelAndView("confirm", "reservation",reservation);
			return mv;
		}
		catch(ATAException e)
		{
			ModelAndView mv = new ModelAndView("error");
			mv.addObject("error",e);
			return mv;
		}
	}
	

	@RequestMapping(value="/addreservation")
	public String addReservation()
	{
		
		return "BookVehicle";
	}
	

	@RequestMapping(value="/savereservation")
	public ModelAndView saveReservation(@ModelAttribute("reservation") ReservationBean reservation,
			@RequestParam("journeyDate") String journeyDate,
			@RequestParam("bookingDate") String bookingDate)
	{
		
		try {
			Date dd=Date.valueOf(journeyDate);	
			reservation.setJourneyDate(dd);
			
			Date dd1=Date.valueOf(bookingDate);	
			reservation.setBookingDate(dd1);
			
			List<ReservationBean> reservation1 = reservationservice.addReservation(reservation);
			ModelAndView mv = new ModelAndView("confirm", "reservation",reservation1);
			
			return mv;
		} catch (ATAException e) {
			ModelAndView mv = new ModelAndView("error");
			mv.addObject("error",e);
			return mv;
		}
	}
	
	@RequestMapping(value="/viewreservation",method=RequestMethod.GET)
	public ModelAndView viewReservation(ReservationBean reservation)
	{
		try {
			List<ReservationBean> reservation2 = reservationservice.viewReservation(reservation);
			ModelAndView mv = new ModelAndView("confirm", "reservation",reservation2);
			
			return mv;
		} catch (ATAException e) {
			ModelAndView mv = new ModelAndView("error");
			mv.addObject("error",e);
			return mv;
		}
	}
}
