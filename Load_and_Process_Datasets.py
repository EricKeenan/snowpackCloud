import pandas as pd
import numpy as np
from datetime import datetime

# Class for manipulating 1-D Snowpack model datasets. 
class snowpack_1D:
    
    # Returns data frame of variable defined by var_str
    # Possible var_str arguments include: 
    # Qs Ql Qg TSG Qg0 Qr OLWR ILWR LWR_net 
    # OSWR ISWR Qw pAlbedo mAlbedo ISWR_h ISWR_dir ISWR_diff TA TSS_mod TSS_meas 
    # T_bottom RH VW VW_drift DW MS_Snow HS_mod HS_meas hoar_size wind_trans24 
    # HN24 HN72_24 SWE MS_Water MS_Wind MS_Rain MS_SN_Runoff MS_Soil_Runoff 
    # MS_Sublimation MS_Evap MS_Sublimation_dHS MS_Settling_dHS MS_Redeposit_dHS 
    # MS_Redeposit_dRHO Sclass1 Sclass2 zSd Sd zSn Sn zSs Ss zS4 S4 zS5 S5
    def get_smet_timeseries(file_path, var_str):
        
        # Identify which row data begins in
        n = 100 # Only check the first 100 rows
        column_var = pd.read_csv(file_path, nrows = n)
        first_data_row = np.nan
        for j in range(1, n):
            if (column_var.iloc[j] == '[DATA]').all():
                first_data_row = j + 2 # Addhock solution
                break

        # Identify which columns to retrieve
        field_row =  np.loadtxt(file_path, skiprows = first_data_row - 2, max_rows = 1, dtype = 'str') 
        data_col = np.where(field_row == var_str)[0][0]
        data_col = data_col - 2 # Account for extra strings (Addhock)

        # Load data 
        time = np.loadtxt(file_path, skiprows = first_data_row, usecols = 0, dtype = 'str') 
        time = pd.to_datetime(time, format = '%Y-%m-%dT%H:%M:%S')
        ts = np.loadtxt(file_path, skiprows = first_data_row, usecols = data_col)
        
        # Create dataframe and set no data value to np.nan (0 if looking at MS_Redeposit_dHS)
        ts = pd.DataFrame(ts, index = time)
        if var_str == "MS_Redeposit_dHS" or var_str == "MS_Redeposit_dRHO":
            ts[ts == -999] = 0
        else:
            ts[ts == -999] = np.nan
        
        return ts

 