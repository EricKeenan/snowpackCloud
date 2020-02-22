/***********************************************************************************/
/*  Copyright 2009 WSL Institute for Snow and Avalanche Research    SLF-DAVOS      */
/***********************************************************************************/
/* This file is part of MeteoIO.
    MeteoIO is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    MeteoIO is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with MeteoIO.  If not, see <http://www.gnu.org/licenses/>.
*/
#ifndef FILTERSUPPR_H
#define FILTERSUPPR_H

#include <meteoio/meteoFilters/ProcessingBlock.h>
#include <vector>
#include <map>
#include <string>

namespace mio {

/**
 * @class  FilterSuppr
 * @ingroup processing
 * @brief Suppression filter.
 * @details
 * Normally, this filter simply rejects all values. This is convenient to quickly turn a parameter off
 * without modifying the original data. It is also possible to suppress some values based on
 * specific criterias, with the following arguments:
 *  - SUPPR: provide a file that contains a list of station ID's and timesteps specifying where the parameter should be suppressed;
 *  - FRAC: suppress a given fraction of the data at random. For example, <i>0.5</i> would ensure that at least <i>50%</i> of the
 * data set contains <i>nodata</i> for this parameter.
 *
 * @code
 * ILWR::filter1     = suppr
 * 
 * PSUM::filter1     = suppr
 * PSUM::arg1::suppr = ./input/meteo/psum_suppr.dat
 * 
 * TA::filter1       = suppr
 * TA::arg1::FRAC    = 0.5
 * @endcode
 * 
 * In the second example (PSUM), the file <i>psum_suppr.dat</i> would look like this (the time is given in the timezone declared in Input::TIME_ZONE):
 * @code
 * *WFJ 2015-10-01T12:00
 * *DAV 2015-10-02T15:00
 * *WFJ 2015-11-10T06:00
 * *WFJ 2015-12-25T01:00 2015-12-27T13:30
 * *WFJ 2015-09-01T07:15 - 2015-09-10T20:30
 * STB2 2015-10-01T21:30
 * @endcode
 * Time ranges are declared by providing two dates on the same line. For more visibility, the said two dates can be separated by " - " (which a white
 * space character on both sides, as shown in the example above).
 */

class FilterSuppr : public ProcessingBlock {
	public:
		FilterSuppr(const std::vector< std::pair<std::string, std::string> >& vecArgs, const std::string& name, const std::string& root_path, const double& TZ);

		virtual void process(const unsigned int& param, const std::vector<MeteoData>& ivec,
		                     std::vector<MeteoData>& ovec);

	private:
		void supprByDates(const unsigned int& param, std::vector<MeteoData>& ovec) const;
		void supprFrac(const unsigned int& param, const std::vector<MeteoData>& ivec, std::vector<MeteoData>& ovec) const;
		
		std::map< std::string, std::vector<dates_range> > suppr_dates;
		double range;
};

} //end namespace

#endif
