package com.sterling.contacts.mapper;

import java.util.List;

import com.sterling.contacts.model.ContactVO;

public interface AddressBookMapper {
	public void insertContact(ContactVO contact);
	public void removeContact(long contactId);
	public boolean updateContact(ContactVO contact);
	public List<ContactVO> getContactList();
	public List<ContactVO> getContactByNameList(ContactVO contact);
	public List<ContactVO> getByContactName(ContactVO contact);
	public List<ContactVO> search(ContactVO contact);
}
