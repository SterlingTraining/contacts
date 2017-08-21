package com.sterling.controller.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sterling.contacts.mapper.AddressBookMapper;
import com.sterling.contacts.model.ContactVO;

import flexjson.JSONSerializer;

@Service
public class AddressBookService {
	static final Logger logger = LogManager.getLogger(AddressBookService.class.getName());
		
	@Autowired
	private AddressBookMapper addressBookMapper;
	
	
	public String getContactList(){
		List<ContactVO> aList = addressBookMapper.getContactList();
		JSONSerializer serializer = new JSONSerializer();
		serializer.exclude("repetitive");
		return serializer.exclude("*.class").deepSerialize(aList) ;
	}
	
	public List<ContactVO> getAllContacts(){
		List<ContactVO> aList = addressBookMapper.getContactList();
		return aList ;
	}
	public List<ContactVO> getContactByName(ContactVO contact){
		//List<ContactVO> aList = addressBookMapper.getContactByNameList();
		List<ContactVO> aList = addressBookMapper.getContactByNameList(contact);
		logger.info("ContactVO List size... " + aList.size());
		return aList ;
	}
	
	
	@Transactional
	public boolean saveContact(ContactVO contactVo){
		//List<ContactVO> aList = addressBookMapper.getContactList();
		return true ;
	}
	

	public String getDesc() {
		logger.debug("getDesc() is executed!");
		return "Gradle + Spring MVC Hello World Example";
	}

	public String getTitle(String name) {

		logger.debug("getTitle() is executed! $name : {}", name);

		if (StringUtils.isEmpty(name)) {
			return "Hello World";
		} else {
			return "Hello " + name;
		}
	}


	public AddressBookMapper getAddressBookMapper() {
		return addressBookMapper;
	}


	public void setAddressBookMapper(AddressBookMapper addressBookMapper) {
		this.addressBookMapper = addressBookMapper;
	}
	
	
}
