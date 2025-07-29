package com.synergisticit.service;

import com.synergisticit.domain.Employee;
import org.springframework.data.domain.Page;

public interface EmployeeService {
    Employee save(Employee employee);
    Employee findById(Long id);
    Page<Employee> getPaginatedEmployees(int page, int size, String sortField, String sortDirection);
}
