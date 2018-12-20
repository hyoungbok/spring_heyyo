package spring.model.restaurant;

import spring.model.stdinter.DAOSTDInter;

public interface IRestaurantDAO extends DAOSTDInter {

	public Object readForUpdate(Object pk) throws Exception;
}
