package com.example.tabelog.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.tabelog.entity.Category;
import com.example.tabelog.entity.Restaurant;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer> {
	public Page<Restaurant> findByNameLike(String keyword, Pageable pageable);
	
	
	//カテゴリ検索　リスト選択で
	public Page<Restaurant> findByCategory(Category category, Pageable pageable);
	
	public Page<Restaurant> findByCategoryIn(Category[] category, Pageable pageable);
	
	//カテゴリ　かつ　キーワード検索：店名・住所・説明文のどれかにヒット
	public Page<Restaurant> findByCategoryInAndNameLikeOrAddressLikeOrDescriptionLike(Category[] category, String nameKeyword, String addressKeyword,String descriptionKeyword, Pageable pageable);
	//キーワード検索：店名・住所・説明文のどれかにヒット
    public Page<Restaurant> findByNameLikeOrAddressLikeOrDescriptionLike(String nameKeyword, String addressKeyword,String descriptionKeyword, Pageable pageable);    
	
	

}
