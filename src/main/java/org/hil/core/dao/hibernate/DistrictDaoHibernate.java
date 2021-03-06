/*
 * Children Immunization Registry System (IRS). Copyright (C) 2011 PATH (www.path.org)
 *  
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * Author: Tran Trung Hieu
 * Email: htran282@gmail.com
 */

package org.hil.core.dao.hibernate;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import org.hil.core.dao.DistrictDao;
import org.hil.core.model.District;

@Repository("districtDaoExt")
public class DistrictDaoHibernate extends
		GenericDaoHibernateSupportExt<District> implements DistrictDao {
		
	public List<District> findByProvinceId(Long pId) {
		List<District> result = new ArrayList<District>();
		String sql = "Select d from District d where d.province.id=:pId";
		Query qry = getSession().createQuery(sql);
		qry.setParameter("pId", pId);
		result = qry.list();
		return result;
	}
}