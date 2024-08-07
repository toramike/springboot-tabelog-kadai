package com.example.tabelog.controller;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.tabelog.entity.Category;
import com.example.tabelog.entity.Restaurant;
import com.example.tabelog.repository.CategoryRepository;
import com.example.tabelog.repository.RestaurantRepository;

@Controller
@RequestMapping("/")
public class RestaurantController {
	private final RestaurantRepository restaurantRepository;
	private final CategoryRepository categoryRepository;
	

	public RestaurantController(RestaurantRepository restaurantRepository, CategoryRepository categoryRepository) {
		this.restaurantRepository = restaurantRepository;
		this.categoryRepository = categoryRepository;
		
	}

	@GetMapping
	public String index(@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "categoryIds", required = false) Integer[] categoryIds,
			@PageableDefault(page = 0, size = 10, sort = "id", direction = Direction.ASC) Pageable pageable,
			Model model) {
		
		List<Category> categoryList = categoryRepository.findAll();
		Page<Restaurant> restaurantPage;
		
		Category[] retaurantCategorys = null;
		
		if (categoryIds != null) {
			retaurantCategorys = new Category[categoryIds.length];
			for (int i = 0; i< categoryIds.length; i++) {
				retaurantCategorys[i] = categoryRepository.getReferenceById(categoryIds[i]);
			}
		}

		if ((keyword != null && !keyword.isEmpty()) && categoryIds != null) {
			restaurantPage = restaurantRepository.findByCategoryInAndNameLikeOrAddressLikeOrDescriptionLike(retaurantCategorys,
					"%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", pageable);
		} else if (categoryIds != null) {
			restaurantPage = restaurantRepository.findByCategoryIn(retaurantCategorys, pageable);
		} else if (keyword != null && !keyword.isEmpty()) {
			restaurantPage = restaurantRepository.findByNameLikeOrAddressLikeOrDescriptionLike(
					 "%" + keyword + "%", "%" + keyword + "%", "%" + keyword + "%", pageable);
		} else {
			restaurantPage = restaurantRepository.findAll(pageable);
		}

		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("restaurantPage", restaurantPage);
		model.addAttribute("keyword", keyword);
		model.addAttribute("categoryIds", categoryIds);
		
		
		return "/index";
	}
	
	
	@GetMapping("/{id}")
    public String show(@PathVariable(name = "id") Integer id, Model model) {
        Restaurant restaurant = restaurantRepository.getReferenceById(id);
        
        model.addAttribute("restaurant", restaurant);
        
        return "/restaurant/show";
    }    
	
	

}


