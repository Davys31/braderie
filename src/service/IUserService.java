package service;

import java.util.List;

import modele.User;

public interface IUserService {
	
	public List <User>getUsersList();
	public User addUser( long idUser, String login, String password, int nbreConnexion);
	public User getUser(long idUser);
	public boolean delUser(long idUser);
	public boolean setUser( long idUser, String login, String password, int nbreConnexion);
	User getUser();
}
