package org.multibit.mbm.dao.hibernate;

import org.multibit.mbm.dao.CustomerDao;
import org.multibit.mbm.dao.CustomerNotFoundException;
import org.multibit.mbm.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("hibernateCustomerDao")
public class HibernateCustomerDao implements CustomerDao {

  @Autowired
  private HibernateTemplate hibernateTemplate = null;

  @Override
  public Customer getCustomerByOpenId(String openId) throws CustomerNotFoundException {
    List customers = hibernateTemplate.find("from Customer c where c.openId = ?", openId);
    if (customers==null || customers.isEmpty()) {
      throw new CustomerNotFoundException();
    }
    return (Customer) customers.get(0);
  }

  @Override
  public void persist(Customer customer) {
    if (customer.getId() != null) {
      hibernateTemplate.merge(customer);
    } else {
      hibernateTemplate.persist(customer);
    }
  }

  public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
    this.hibernateTemplate = hibernateTemplate;
  }
}
