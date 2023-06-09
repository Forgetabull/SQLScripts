INSERT INTO myTable (
    MeasureName, 
    Freq_Interval_In_Minutes, 
    Trigger_Enabled, 
    Currently_Running, 
    Trigger_Offset,
    Trigger_Batch_Every_X_Iterations, 
    StartCalcFrom_DT
)
SELECT 
    MeasureName, 
    60, 
    Trigger_Enabled, 
    Currently_Running, 
    60, 
    60, 
    StartCalcFrom_DT
FROM 
    myTable
WHERE 
    [Freq_Interval_In_Minutes] = 5;
