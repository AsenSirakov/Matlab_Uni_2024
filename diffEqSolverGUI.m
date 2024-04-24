% --- Executes just before diffEqSolverGUI is made visible.
function diffEqSolverGUI_OpeningFcn(hObject, eventdata, handles, varargin)
    % Начални стойности на входните полета
    handles.x0 = 0;
    handles.y0 = 0;
    handles.v0_guess = 1;

    % Update handles structure
    guidata(hObject, handles);

    % UIWAIT makes diffEqSolverGUI wait for user response (see UIRESUME)
    % uiwait(handles.figure1);



