package com.zhbit.express.service.impl;


        import com.zhbit.express.entity.Person;
        import com.zhbit.express.repository.PersonRepository;
        import com.zhbit.express.service.PersonService;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

/**
 * Created by XRog
 * On 2/2/2017.2:40 PM
 */
@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonRepository personRepository;

    public Long savePerson() {
        Person person = new Person();
        person.setUsername("hugo");
        person.setPhone("13750040262");
        person.setAddress("chenDu");
        person.setRemark("this is hugo");
        return personRepository.save(person);
    }

}