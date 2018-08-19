package com.bonc.pojo;

import java.util.List;

import lombok.Data;
@Data
public class PageBean<T> {
	private long total;
	private List<T> rows;

}
