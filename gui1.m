function varargout = gui1(varargin)
% GUI1 MATLAB code for gui1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui1

% Last Modified by GUIDE v2.5 02-Sep-2018 19:05:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui1_OpeningFcn, ...
                   'gui_OutputFcn',  @gui1_OutputFcn, ...
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


% --- Executes just before gui1 is made visible.
function gui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui1 (see VARARGIN)

% Choose default command line output for gui1
handles.output = hObject;

clc

handles.A_input.String = 2;
handles.w_input.String = 1;
handles.x01.String = 1;
handles.x02.String = 0;
handles.k.String = 8;
handles.c.String = 0.8;
handles.t0.String = 0;
handles.tf.String = 20;
handles.psi.String = 0.01;

handles.sin_input.Value = 0;
handles.step_input.Value = 1;
handles.psi_flag.Value = 0;

if handles.sin_input.Value
    handles.w.Visible = 'on';
    handles.w_input.Visible = 'on';
end
if handles.step_input.Value
    handles.w.Visible = 'off';
    handles.w_input.Visible = 'off';
end
if handles.psi_flag.Value
    handles.psi.Visible = 'on';
    handles.psi_txt.Visible = 'on';
else
    handles.psi.Visible = 'off';
    handles.psi_txt.Visible = 'off';
end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function psi_Callback(hObject, eventdata, handles)
% hObject    handle to psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of psi as text
%        str2double(get(hObject,'String')) returns contents of psi as a double


% --- Executes during object creation, after setting all properties.
function psi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_input_Callback(hObject, eventdata, handles)
% hObject    handle to A_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_input as text
%        str2double(get(hObject,'String')) returns contents of A_input as a double


% --- Executes during object creation, after setting all properties.
function A_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sin_input.
function sin_input_Callback(hObject, eventdata, handles)
% hObject    handle to sin_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sin_input

if get(hObject,'Value')
    handles.w.Visible = 'on';
    handles.w_input.Visible = 'on';
end

% --- Executes on button press in step_input.
function step_input_Callback(hObject, eventdata, handles)
% hObject    handle to step_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of step_input

if get(hObject,'Value')
    handles.w.Visible = 'off';
    handles.w_input.Visible = 'off';
end


function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x01_Callback(hObject, eventdata, handles)
% hObject    handle to x01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x01 as text
%        str2double(get(hObject,'String')) returns contents of x01 as a double


% --- Executes during object creation, after setting all properties.
function x01_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x02_Callback(hObject, eventdata, handles)
% hObject    handle to x02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x02 as text
%        str2double(get(hObject,'String')) returns contents of x02 as a double


% --- Executes during object creation, after setting all properties.
function x02_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot_btn.
function plot_btn_Callback(hObject, eventdata, handles)
% hObject    handle to plot_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

c = str2num(handles.c.String);
k = str2num(handles.k.String);
x01 = str2num(handles.x01.String);
x02 = str2num(handles.x02.String);
psi = str2num(handles.psi.String);
sin_input = handles.sin_input.Value;
w = str2num(handles.w_input.String);
A = str2num(handles.A_input.String);


options = simset('SrcWorkspace','current');
t0 = str2num(handles.t0.String);;
tf = str2num(handles.tf.String);;
if handles.psi_flag.Value
    sim('models/smc_2.slx',[t0 tf],options)
    psi_title = num2str(psi);
else
    sim('models/smc_3.slx',[t0 tf],options)
    psi_title = 'not used';
end
if sin_input
    type_title = horzcat('sin', num2str(w), '*t');
else
    type_title = 'step(t)';
end



figure(), 
suptitle({horzcat('x01=', num2str(x01), '   ', 'x02=', num2str(x02), '   ', 'k=', num2str(k), '   ', ...
    'c=', num2str(c), '   ', 'ref=', num2str(A), '*', type_title, '   ', 'psi=', psi_title); ''; ''});
subplot(3,2,1), plot(e_de(2:end,1), e_de(2:end,2), e_de(2:end,1), -c*e_de(2:end,1), '--')
% subplot(3,2,1), comet(e_de(2:end,1), e_de(2:end,2)), plot( e_de(2:end,1), -c*e_de(2:end,1), '--')
    xlabel('e'), ylabel('de'), legend('e,de plot','switching surface')
subplot(3,2,2), plot(x_dx(:,1), x_dx(:,2))
    xlabel('x_1'), ylabel('x_2')
subplot(3,2,3:4), plot(y_yref.time, y_yref.signals.values(:,1), y_yref.time, y_yref.signals.values(:,2), '--'), 
    legend('y','y_{ref}'), xlabel('t'), ylabel('y')
subplot(3,2,5:6), plot(u.time, u.signals.values)
    xlabel('t'), ylabel('u')
% subplot(3,2,4), plot(y_yref.time, y_yref.signals.values(:,2)-y_yref.signals.values(:,1)), grid on
%     xlabel('t'), ylabel('e')


% --- Executes on button press in test_btn.
function test_btn_Callback(hObject, eventdata, handles)
% hObject    handle to test_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% if handles.sin_input.Value
%     a = 1 
% end

% handles.psi_flag.Visible = 'off'

% handles.sin_input.Value
str2num(handles.A_input.String)


function w_input_Callback(hObject, eventdata, handles)
% hObject    handle to w_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w_input as text
%        str2double(get(hObject,'String')) returns contents of w_input as a double


% --- Executes during object creation, after setting all properties.
function w_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in psi_flag.
function psi_flag_Callback(hObject, eventdata, handles)
% hObject    handle to psi_flag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of psi_flag

if get(hObject,'Value')
    handles.psi.Visible = 'on';
    handles.psi_txt.Visible = 'on';
else
    handles.psi.Visible = 'off';
    handles.psi_txt.Visible = 'off';
end


% --- Executes during object creation, after setting all properties.
function step_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% hObject.Value = 1;
% if get(hObject,'Value')
%     handles.w.Visible = 'off';
%     handles.w_input.Visible = 'off';
% end


% --- Executes during object creation, after setting all properties.
function sin_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sin_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% hObject.Value = 0;
% if get(hObject,'Value')
%     handles.w.Visible = 'on';
%     handles.w_input.Visible = 'on';
% end


% --- Executes during object creation, after setting all properties.
function psi_flag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to psi_flag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% hObject.Value = 0;
% if get(hObject,'Value')
%     handles.psi.Visible = 'on';
% else
%     handles.psi.Visible = 'off';
% end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete( setdiff( findall(0, 'type', 'figure'), gui1 ) );



function tf_Callback(hObject, eventdata, handles)
% hObject    handle to tf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tf as text
%        str2double(get(hObject,'String')) returns contents of tf as a double


% --- Executes during object creation, after setting all properties.
function tf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t0_Callback(hObject, eventdata, handles)
% hObject    handle to t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t0 as text
%        str2double(get(hObject,'String')) returns contents of t0 as a double


% --- Executes during object creation, after setting all properties.
function t0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
