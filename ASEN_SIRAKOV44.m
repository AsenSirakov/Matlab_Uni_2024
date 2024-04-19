function varargout = ASEN_SIRAKOV44(varargin)
% ASEN_SIRAKOV44 MATLAB code for ASEN_SIRAKOV44.fig
%      ASEN_SIRAKOV44, by itself, creates a new ASEN_SIRAKOV44 or raises the existing
%      singleton*.
%
%      H = ASEN_SIRAKOV44 returns the handle to a new ASEN_SIRAKOV44 or the handle to
%      the existing singleton*.
%
%      ASEN_SIRAKOV44('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASEN_SIRAKOV44.M with the given input arguments.
%
%      ASEN_SIRAKOV44('Property','Value',...) creates a new ASEN_SIRAKOV44 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ASEN_SIRAKOV44_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ASEN_SIRAKOV44_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ASEN_SIRAKOV44

% Last Modified by GUIDE v2.5 13-Jan-2024 15:46:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ASEN_SIRAKOV44_OpeningFcn, ...
                   'gui_OutputFcn',  @ASEN_SIRAKOV44_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ASEN_SIRAKOV44 is made visible.
function ASEN_SIRAKOV44_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ASEN_SIRAKOV44 (see VARARGIN)

% Choose default command line output for ASEN_SIRAKOV44
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ASEN_SIRAKOV44 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ASEN_SIRAKOV44_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editB_Callback(hObject, eventdata, handles)
% hObject    handle to editB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editB as text
%        str2double(get(hObject,'String')) returns contents of editB as a double


% --- Executes during object creation, after setting all properties.
function editB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2double(get(handles.editA, 'String'));;           
b = str2double(get(handles.editB, 'String'));;           
c = 1;          
N = 100;         
M = 100;          
T = 2;            
dt = 0.01;        
hx = a / N;       
hy = b / M;      
x = linspace(-a, a, N);
y = linspace(-b, b, M);
U = zeros(N, M);
U(:, :) = 10;
U(1, :) = -exp(-a - y) .* sin(a) .* cos(y);    
U(N, :) = exp(-a - y) .* sin(a) .* cos(y);     
U(:, 1) = exp(-x + b) .* sin(x) .* cos(b);     
U(:, M) = exp(-x - b) .* sin(x) .* cos(b);     
t = 0;
while t < T
    for i = 2:N-1
        for j = 2:M-1
            U(i, j) = U(i, j) + dt * (c * (U(i-1, j) - 2 * U(i, j) + U(i+1, j)) / hx^2 ...
                    + c * (U(i, j-1) - 2 * U(i, j) + U(i, j+1)) / hy^2 ...
                    - 1 - 2 * exp(-x(i) - y(j)) * (a * sin(x(i)) * sin(y(j)) - b * cos(x(i)) * cos(y(j))));
        end
    end
    t = t + dt; 
     axes(handles.axes1);
      surf(x, y, U');
      rotate3d on;
    xlabel('x');
    ylabel('y');
    zlabel('U');
    title(sprintf('Решение', t));
    drawnow;   
end
function editA_Callback(hObject, eventdata, handles)
% hObject    handle to editA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editA as text
%        str2double(get(hObject,'String')) returns contents of editA as a double


% --- Executes during object creation, after setting all properties.
function editA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
