package com.bedrosians.bedlogic.service.user;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bedrosians.bedlogic.dao.user.KeymarkUcUserDao;
import com.bedrosians.bedlogic.domain.user.KeymarkUcUser;
import com.bedrosians.bedlogic.exception.BedDAOException;


@Service("keymarkUcUserService")
public class KeymarkUcUserServiceImpl implements KeymarkUcUserService{
					
	 @Autowired
	 private KeymarkUcUserDao userDao;  
	    
	 @Autowired
	 private SessionFactory sessionFactory;
     
	@Override
	@Transactional(readOnly=true)
	//@OrderBy("username ASC")
	public List<KeymarkUcUser> getAllUsers(Session session){
		return userDao.getAllUsers(session);
	}
	
	@Override
	public KeymarkUcUser getUserByUserCode(String userCode)throws BedDAOException {
		KeymarkUcUser user = null;
		Session session = sessionFactory.openSession();
	    try {
		    user = userDao.getUserByUserCode(session, userCode);
	    }
	    catch(HibernateException hbe){
			hbe.printStackTrace();
			throw new BedDAOException("Error occured during getProductById() due to: " + hbe.getMessage(), hbe);
		}
	    return user;
	}
}
