/*
    File: fn_director_open_zone.sqf
    Author: Savage Game Design
    Public: No
    
    Description:
        No description added yet.
    
    Parameter(s):
        _localVariable - Description [DATATYPE, defaults to DEFAULTVALUE]
    
    Returns:
        Function reached the end [BOOL]
    
    Example(s):
        [parameter] call vn_fnc_myFunction
*/
params ["_zone"];

if( count(mf_s_activeZones) >= 1 ) exitWith {}; //make sure only 1 open

private _taskStore = ["prepare_zone", _zone] call vn_mf_fnc_task_create select 1;
mf_s_currentZone = _zone;
mf_s_activeZones pushBack [_zone, _taskStore];