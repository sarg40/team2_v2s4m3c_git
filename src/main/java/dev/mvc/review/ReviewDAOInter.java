package dev.mvc.review;

import java.util.HashMap;

import java.util.List;



public interface ReviewDAOInter {
  
   /**
   * 리뷰 등록
   * @param reviewVO
   * @return
   */
  public int create(ReviewVO reviewVO);
  
   /**
   * 모든 카테고리에 등록된 리뷰 목록
   * @return
   */
  public List<ReviewVO> list_all();
  
   /**
   * 특정 카테고리에 등록된 리뷰 목록
   * @return
   */
  public List<ReviewVO> list_by_review_cate_no(int review_cate_no);
  
  
  /**
   * 카테고리별 검색 레코드 갯수
   * @param hashMap
   * @return
   */
  public int search_count(HashMap<String, Object> hashMap);
  
   /**
   * 검색 + 페이징 목록
   * @param map
   * @return
   */
  public List<Review_MemberVO> list_by_review_cate_no_search_paging(HashMap<String, Object> map);
  
   /**
   * 조회
   * @param review_no
   * @return
   */
  public ReviewVO read(int review_no);
  
  /**
   * 수정 처리
   * @param reviewVO
   * @return
   */
  public int update(ReviewVO reviewVO);
  
  /**
   * 패스워드 검사
   * @param hashMap
   * @return
   */
  public int passwd_check(HashMap<String, Object> hashMap);
  
   /**
   * 삭제
   * @param review_no
   * @return
   */
  public int delete(int review_no);
  

   /**
   * 이미지 변경
   * @param reviewVO
   * @return
   */
  public int img_update(ReviewVO reviewVO);
  
  
}
