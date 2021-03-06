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

package org.hil.core.dao;

import java.util.List;
import org.hil.core.model.Children;
import org.hil.core.model.Commune;
import org.hil.core.model.District;
import org.hil.core.model.Vaccination;
import org.hil.core.model.vo.ChildrenDuePrintVO;
import org.hil.core.model.vo.ChildrenPrintVO;
import org.hil.core.model.vo.ChildrenVaccinatedInLocationVO;
import org.hil.core.model.vo.RegionVaccinationReportData;
import org.hil.core.model.vo.search.ChildrenSearchVO;

public interface ChildrenDao {
	
	public List<Children> searchChildren(ChildrenSearchVO params);
	public Children saveChild(Children child, String author, boolean force);
	public List<Children> findByCommuneAndFinishedAndLocked(Commune commune, boolean finished, boolean locked);
	public boolean hasChildInCommnue(Long communeId);
	public long checkDuplicate(Children child);
	public String generateChildCode(Children child);
	public List<ChildrenDuePrintVO> getListChildrenDue(String dueTime, Commune commune);
	public List<ChildrenPrintVO> searchChildrenForPrint(ChildrenSearchVO params);
	public List<RegionVaccinationReportData> getChildrenVaccinationReport(String timeFrom,String timeTo, Commune commune, District district);
	public List<ChildrenVaccinatedInLocationVO> getChildrenVaccinatedInLocationReport(String timeFrom,String timeTo, Commune commune, District district, Vaccination vaccine);
}