package ViewDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

import Connection.DBConnection;
import ViewVO.SimpleUserRecipeViewVO;

public class SimpleUserRecipeViewDAO {
	final static SimpleUserRecipeViewDAO simpleUserRecipeViewDAO;
	private DBConnection conn;
	static {
		simpleUserRecipeViewDAO = new SimpleUserRecipeViewDAO();
	}
	private SimpleUserRecipeViewDAO() {
		conn = DBConnection.getInstance();
	}
	public static SimpleUserRecipeViewDAO getInstance() {
		return simpleUserRecipeViewDAO;
	}
	public LinkedList<SimpleUserRecipeViewVO> searchUserRecipeListByRecipeName(String keyword)
	{
		LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();
		PreparedStatement pstmt = null;
		try {
			String sql = "select * from simple_user_recipe_view where recipe_name Like ? and UPPER(recipe_code) like ?";
			pstmt = conn.getConn().prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			pstmt.setString(2, "%UR%");
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				simpleUserRecipeVOList.add(new SimpleUserRecipeViewVO(res
						.getString("post_Code"), res
						.getString("recipe_Code"), res
						.getString("user_Code"), res
						.getString("user_name"),res
						.getString("complete_image"),res
						.getString("recipe_name"),res
						.getString("recipe_Description"), res
						.getInt("like_Count"), res
						.getInt("post_Hits"),res
						.getString("country_category_name"), res
						.getString("ingredient_category_name"), res
						.getString("kind_category_name"), res
						.getString("situation_category_name"), res
						.getString("method_category_name")));
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		return simpleUserRecipeVOList;
		
	}
	public LinkedList<SimpleUserRecipeViewVO> searchUserRecipeListByHashTag(String keyword)
	{
		LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();
		PreparedStatement pstmt = null;
		try {
			String sql = "select * from user_recipe_view where post_hash_tag Like ?";
			pstmt = conn.getConn().prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				simpleUserRecipeVOList.add(new SimpleUserRecipeViewVO(res
						.getString("post_Code"), res
						.getString("recipe_Code"), res
						.getString("user_Code"), res
						.getString("user_name"),res
						.getString("complete_image"),res
						.getString("recipe_name"),res
						.getString("recipe_Description"), res
						.getInt("like_Count"), res
						.getInt("post_Hits"),res
						.getString("country_category_name"), res
						.getString("ingredient_category_name"), res
						.getString("kind_category_name"), res
						.getString("situation_category_name"), res
						.getString("method_category_name")));
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		return simpleUserRecipeVOList;
		
	}
	public LinkedList<SimpleUserRecipeViewVO> searchRecipeListByUserCode(String userCode)
	{
		LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();
		PreparedStatement pstmt = null;
		try {
			String sql = "select * from simple_user_recipe_view where user_code=?";
			pstmt = conn.getConn().prepareStatement(sql);
			pstmt.setString(1,userCode);
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				simpleUserRecipeVOList.add(new SimpleUserRecipeViewVO(res
						.getString("post_Code"), res
						.getString("recipe_Code"), res
						.getString("user_Code"), res
						.getString("user_name"),res
						.getString("complete_image"),res
						.getString("recipe_name"),res
						.getString("recipe_Description"), res
						.getInt("like_Count"), res
						.getInt("post_Hits"),res
						.getString("country_category_name"), res
						.getString("ingredient_category_name"), res
						.getString("kind_category_name"), res
						.getString("situation_category_name"), res
						.getString("method_category_name")));
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		return simpleUserRecipeVOList;
		
	}
	/**
	 * ??..?????????? ???????? ?????????
	 * ???????? ?????? ?????? ?????? ???? ?????????? ???? ?????? ???????? ??????
	 * ???? ???? oop?????? ???? ???????? ????
	 * @param method
	 * @param situation
	 * @param nation
	 * @param ingredient
	 * @return
	 */
	public LinkedList<SimpleUserRecipeViewVO> searchUserRecipeList(String method,String situation,String nation,String ingredient) {
		/*LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();*/
		LinkedList<SimpleUserRecipeViewVO> speedArray = new LinkedList<SimpleUserRecipeViewVO>();
		PreparedStatement pstmt = null;
		try {
			
			String sql = "select * from simple_user_recipe_view where method_category_name=? and situation_category_name=? and country_category_name=? and ingredient_category_name=?";
			pstmt = conn.getConn().prepareStatement(sql);
			pstmt.setString(1, method);
			pstmt.setString(2, situation);
			pstmt.setString(3, nation);
			pstmt.setString(4, ingredient);
			
			ResultSet res = pstmt.executeQuery();
			while(res.next()) {
				speedArray.add(new SimpleUserRecipeViewVO(res.getString("post_Code"), res.getString("recipe_Code"), res.getString("user_Code"), res.getString("user_Name"), res.getString("complete_Image"), res.getString("recipe_Name"), res.getString("recipe_Description"), res.getInt("like_Count"), res.getInt("post_Hits"), res.getString("country_Category_Name"), res.getString("ingredient_Category_Name"), res.getString("kind_Category_Name"), res.getString("situation_Category_Name"), res.getString("method_Category_Name")));
				System.out.println(res.getString("recipe_code")+"/????");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		return speedArray;
		
	}
	public LinkedList<SimpleUserRecipeViewVO> searchSituation(String situationName){
		  LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();
	      PreparedStatement pstmt = null;
	      try {
	         String sql = "select * from simple_user_recipe_view where SITUATION_CATEGORY_NAME=?";
	         String completePath=null;
	         pstmt = conn.getConn().prepareStatement(sql);
	         pstmt.setString(1,situationName);
	         ResultSet res = pstmt.executeQuery();
	         while(res.next()) {
	        	// completePath="file:///"+res.getString("complete_image");
	            simpleUserRecipeVOList.add(new SimpleUserRecipeViewVO(res
	                  .getString("post_Code"), res
	                  .getString("recipe_Code"), res
	                  .getString("user_Code"), res
	                  .getString("user_name"),res
	                  .getString("complete_image"),res
	                  .getString("recipe_name"),res
	                  .getString("recipe_Description"), res
	                  .getInt("like_Count"), res
	                  .getInt("post_Hits"),res
	                  .getString("country_category_name"), res
	                  .getString("ingredient_category_name"), res
	                  .getString("kind_category_name"), res
	                  .getString("situation_category_name"), res
	                  .getString("method_category_name")));
	         }
	      } catch(Exception ex) {
	         ex.printStackTrace();
	      } finally {
	         try {
	            pstmt.close();
	         } catch(Exception ex) {
	            ex.printStackTrace();
	         }
	      }
	      for(int i=0;i<simpleUserRecipeVOList.size();i++){
	    	   System.out.println("??????????1??????????????"+simpleUserRecipeVOList.get(i));
	      }
	   
	      return simpleUserRecipeVOList;
	      
	}
	public SimpleUserRecipeViewVO searchPostCodeRecipeList(String postCode){
		/*		 LinkedList<SimpleUserRecipeViewVO> simpleUserRecipeVOList = new LinkedList<SimpleUserRecipeViewVO>();
		*/	   SimpleUserRecipeViewVO temp=null;   
				PreparedStatement pstmt = null;
			      try {
			         String sql = "select * from simple_user_recipe_view where POST_CODE=?";
			         String completePath=null;
			         pstmt = conn.getConn().prepareStatement(sql);
			         pstmt.setString(1,postCode);
			         ResultSet res = pstmt.executeQuery();
			         while(res.next()) {
			        	// completePath="file:///"+res.getString("complete_image");
			            temp =new SimpleUserRecipeViewVO(res
			                  .getString("post_Code"), res
			                  .getString("recipe_Code"), res
			                  .getString("user_Code"), res
			                  .getString("user_name"),res
			                  .getString("complete_image"),res
			                  .getString("recipe_name"),res
			                  .getString("recipe_Description"), res
			                  .getInt("like_Count"), res
			                  .getInt("post_Hits"),res
			                  .getString("country_category_name"), res
			                  .getString("ingredient_category_name"), res
			                  .getString("kind_category_name"), res
			                  .getString("situation_category_name"), res
			                  .getString("method_category_name"));
			         }
			      } catch(Exception ex) {
			         ex.printStackTrace();
			      } finally {
			         try {
			            pstmt.close();
			         } catch(Exception ex) {
			            ex.printStackTrace();
			         }
			      }
			      /*for(int i=0;i<simpleUserRecipeVOList.size();i++){
			    	   System.out.println("??????????1??????????????"+simpleUserRecipeVOList.get(i));
			      }*/
			   
			      return temp;
				
			}
	public static void main(String[]args) {
		System.out.println(SimpleUserRecipeViewDAO.getInstance().searchUserRecipeListByHashTag("????"));
	}
	
}
