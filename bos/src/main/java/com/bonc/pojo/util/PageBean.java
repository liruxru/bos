package com.bonc.pojo.util;

import java.util.List;

import lombok.Data;
@Data
public class PageBean<T> {
	private long total;
	private List<T> rows;

}
