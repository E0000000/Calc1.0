function varargout = scicalculator(varargin)
% SCICALCULATOR MATLAB code for scicalculator.fig
%      SCICALCULATOR, by itself, creates a new SCICALCULATOR or raises the existing
%      singleton*.
%
%      H = SCICALCULATOR returns the handle to a new SCICALCULATOR or the handle to
%      the existing singleton*.
%
%      SCICALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCICALCULATOR.M with the given input arguments.
%
%      SCICALCULATOR('Property','Value',...) creates a new SCICALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before scicalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to scicalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help scicalculator

% Last Modified by GUIDE v2.5 22-Oct-2023 19:02:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @scicalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @scicalculator_OutputFcn, ...
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


% --- Executes just before scicalculator is made visible.
function scicalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to scicalculator (see VARARGIN)

% Choose default command line output for scicalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes scicalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = scicalculator_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
if isempty(B)==1
    set(handles.edit1,'String','in x^y,x cannot be empty');
else
C=strcat(A,B,'^');
set(handles.text2,'String',C);
set(handles.edit1,'String','');
end

% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',pi);%button "pi"

% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String',exp(1));

% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
if isempty(A)==0
   set(handles.text2,'String','');
else
   set(handles.edit1,'String','');
end %clear all

% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
A(end)=[];
set(handles.edit1,'String',A);%button"back(←)"

% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
C=strcat(A,'cosd(',B);
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button "cos"

% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.text2,'String');
B = strcat(A,'(');
set(handles.text2,'String',B);%button"("

% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
C=strcat(A,B,')');
set(handles.edit1,'String','');
set(handles.text2,'String',C);%button")"

% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
B=strcat('fact(',A,')');
set(handles.text2,'String',B);
a=str2num(A);
C=factorial(a);
set(handles.edit1,'String',C);%button"n!"

% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
C = strcat(A,B,'/');
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button"/"

% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
C=strcat(A,'tand(',B);
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button "tan"

% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'7');
set(handles.edit1,'String',A)%button7

% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'8');
set(handles.edit1,'String',A)%button8

% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'9');
set(handles.edit1,'String',A)%button9

% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
C = strcat(A,B,'*');
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button"×"

% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
if isempty(B)==1
    set(handles.edit1,'String','in 10^x,x cannot be empty');
else
C=strcat(A,'10^(',B,')');
set(handles.text2,'String',C);
set(handles.edit1,'String','');
end

% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'4');
set(handles.edit1,'String',A)%button4

% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'5');
set(handles.edit1,'String',A)%button5

% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'6');
set(handles.edit1,'String',A)%button6

% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
C = strcat(A,B,'-');
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button"-"

% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
if isempty(B)==1
    set(handles.edit1,'String','in lg(x),x can not be empty');
else
C=strcat(A,'lg(',B,')');
set(handles.text2,'String',C);
set(handles.edit1,'String','');
end %button lgx

% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'1');
set(handles.edit1,'String',A)%button 1

% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'2');
set(handles.edit1,'String',A)%button 2

% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'3');
set(handles.edit1,'String',A)%button3

% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
C = strcat(A,B,'+');
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button"+"

% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B = get(handles.edit1,'String');
if isempty(B)==1
    set(handles.edit1,'String','ln(x)中x不能为空');
else
C=strcat(A,'log(',B,')');
set(handles.text2,'String',C);
set(handles.edit1,'String','');
end


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'0');
set(handles.edit1,'String',A)%buttton0

% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.edit1,'String');
A = strcat(A,'.');
set(handles.edit1,'String',A)%button"."

% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.text2,'String');
B = get(handles.edit1,'String');
C = strcat(A,B);
if sum(C=='(')-sum(C==')')==1 %考虑到大家很容易忘记最后一个回括号，特此加了这样一个判断。
    C=strcat(C,')');
end
answer=eval(C);
set(handles.text2,'String',C);
set(handles.text1,'String',answer);%button "="


function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
answers = [];
A = get(handles.text2,'String');
B = get(handles.edit1,'String');
C = strcat(A,B);
answer=eval(C);
set(handles.text2,'String',C);
set(handles.edit1,'String',answer);
answers = [answer, answers];
if length(answers) > 10
        answers = answers(1:10);
end
disp('---- Answers Database ----');
    for i = 1:length(answers)
        disp(['Answer ', num2str(i), ': ', num2str(answers(i))]);
    end



% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.text2,'String');
B=get(handles.edit1,'String');
C=strcat(A,'sind(',B);
set(handles.text2,'String',C);
set(handles.edit1,'String','');%button "sin"


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
B=strcat('1/(',A,')');
set(handles.text2,'String',B);
if isempty(A)==1
   set(handles.edit1,'String','除数不能为空'); 
else
C=eval(B);
set(handles.edit1,'String',C);
end%button"1/x"

% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
B=strcat('abs(',A,')');
set(handles.text2,'String',B);
C=eval(B);
set(handles.edit1,'String',C);%button"|x|"

% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
if isempty(A)==1
    set(handles.edit1,'String','in a×10^n,the a cannot be empty');
else
B=strcat(A,'e+');
set(handles.text2,'String',B);
set(handles.edit1,'String','');
end

% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.edit1,'String');
B=get(handles.text2,'String');
C=strcat(B,'mod(',A,',')
set(handles.edit1,'String','');
set(handles.text2,'String',C);%button "mod"

