package com.moblie.cn.service;

import org.springframework.transaction.annotation.Transactional;

import com.moblie.cn.domain.Admin;

@Transactional
public interface IAdminService {
      public Admin login(Admin admin);
}
