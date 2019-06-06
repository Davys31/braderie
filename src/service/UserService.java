package service;

import java.util.List;

import dao.DAOException;
import dao.UserDAO;
import modele.User;

public class UserService implements IUserService {

	List<User> usersList = null;
	UserDAO myDAO = null;

	public UserService() {
		this.myDAO = new UserDAO();
	}

	public List<User> getListeUsers() {
		
		try {
			usersList = myDAO.findAll();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return usersList;
	}
	
	//Methode pour ajouter un' User'
	public User addUser( long idUser, String login, String password, int nbreConnexion) {
		
		User hUser = new User();
		hUser.setIdUser(idUser);
		hUser.setLogin(login);
		hUser.setPassword(password);
		hUser.setNbConnexion(nbreConnexion);
		
		try {
			myDAO.create(hUser);
		} catch (DAOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		//Supprimer un 'User' par ID
		boolean UserDel (int id) {
			boolean bdel = false;
			
			try {
				bdel = myDAO.delete(id);
			} catch (DAOException e) {
				e.printStackTrace();
			}
			return hUser;
		}
	
			
	
	}

	@Override
	public List<User> getUsersList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUser(long idUser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delUser(long idUser) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean setUser(long idUser, String login, String password, int nbreConnexion) {
		// TODO Auto-generated method stub
		return false;
	}
}