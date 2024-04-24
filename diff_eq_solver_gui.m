function varargout = diff_eq_solver_gui(varargin)
    % Create the GUI
    fig = figure('Position', [100, 100, 600, 400], 'Name', 'Partial Differential Equation Solver', 'NumberTitle', 'off', 'ToolBar', 'none');

    % Create axes for the plot
    handles.axes1 = axes('Parent', fig, 'Units', 'normalized', 'Position', [0.1, 0.1, 0.8, 0.8]);

    % Create input fields and labels
    uicontrol('Style', 'text', 'String', 'Parameter 1:', 'Units', 'normalized', 'Position', [0.05, 0.9, 0.2, 0.05]);
    handles.param1Edit = uicontrol('Style', 'edit', 'Units', 'normalized', 'Position', [0.25, 0.9, 0.1, 0.05]);

    uicontrol('Style', 'text', 'String', 'Parameter 2:', 'Units', 'normalized', 'Position', [0.4, 0.9, 0.2, 0.05]);
    handles.param2Edit = uicontrol('Style', 'edit', 'Units', 'normalized', 'Position', [0.6, 0.9, 0.1, 0.05]);

    handles.solveButton = uicontrol('Style', 'pushbutton', 'String', 'Solve', 'Units', 'normalized', 'Position', [0.75, 0.9, 0.1, 0.05], 'Callback', @solveButton_Callback);

    % Set up the GUI data
    handles.output = fig;
    guidata(fig, handles);

    % --- Executes on button press in solveButton.
    function solveButton_Callback(~, ~)
        % Get parameters from the GUI
        param1 = str2double(get(handles.param1Edit, 'String'));
        param2 = str2double(get(handles.param2Edit, 'String'));

        % Решение на диференциалното уравнение
        sol = pdepe(0, @pde, @pdeic, @pdebc, linspace(-1, 1, 100), linspace(-1, 1, 100));

        % Изобразяване на графика на повърхността
        surf(handles.axes1, sol.x, sol.y, sol.u);
        xlabel(handles.axes1, 'X-axis');
        ylabel(handles.axes1, 'Y-axis');
        zlabel(handles.axes1, 'Solution');
        title(handles.axes1, 'Solution of the Partial Differential Equation');
    end

    % Функция за диференциалното уравнение
    function c = pde(x, y, u, ux, uy)
c = [1, 1] - 2 * exp(-x - y) * (sin(x) * sin(y) - cos(x) * cos(y));
    end

    % Функция за началните условия
    function u0 = pdeic(x, y)
        % Начални условия за x = -1 и -1 <= y <= 1
        u0 = -exp(1-y)*sin(1)*cos(y);
    end

    % Функция за граничните условия
    function [pl, ql, pr, qr] = pdebc(xl, ul, xr, ur, t)
        % Гранични условия за x = -1 и 1
        pl = ul + exp(xl+1)*sin(xl)*cos(1);
        ql = 0;
        pr = ur - exp(xr-1)*sin(xr)*cos(1);
        qr = 0;
    end
end
