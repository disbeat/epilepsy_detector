function varargout = interface(varargin)
% INTERFACE M-file for interface.fig
%      INTERFACE, by itself, creates a new INTERFACE or raises the existing
%      singleton*.
%
%      H = INTERFACE returns the handle to a new INTERFACE or the handle to
%      the existing singleton*.
%
%      INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACE.M with the given input arguments.
%
%      INTERFACE('Property','Value',...) creates a new INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interface

% Last Modified by GUIDE v2.5 23-Nov-2009 11:27:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interface_OpeningFcn, ...
                   'gui_OutputFcn',  @interface_OutputFcn, ...
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

% --- Executes just before interface is made visible.
function interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interface (see VARARGIN)

% Choose default command line output for interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function results_Callback(hObject, eventdata, handles)
% hObject    handle to results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of results as text
%        str2double(get(hObject,'String')) returns contents of results as a double


% --- Executes during object creation, after setting all properties.
function results_CreateFcn(hObject, eventdata, handles)
% hObject    handle to results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function learningRate_Callback(hObject, eventdata, handles)
% hObject    handle to learningRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of learningRate as text
%        str2double(get(hObject,'String')) returns contents of learningRate as a double


% --- Executes during object creation, after setting all properties.
function learningRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to learningRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in performanceFcn.
function performanceFcn_Callback(hObject, eventdata, handles)
% hObject    handle to performanceFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns performanceFcn contents as cell array
%        contents{get(hObject,'Value')} returns selected item from performanceFcn


% --- Executes during object creation, after setting all properties.
function performanceFcn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to performanceFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in learningFcn.
function learningFcn_Callback(hObject, eventdata, handles)
% hObject    handle to learningFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns learningFcn contents as cell array
%        contents{get(hObject,'Value')} returns selected item from learningFcn


% --- Executes during object creation, after setting all properties.
function learningFcn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to learningFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in transferFcn.
function transferFcn_Callback(hObject, eventdata, handles)
% hObject    handle to transferFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns transferFcn contents as cell array
%        contents{get(hObject,'Value')} returns selected item from transferFcn


% --- Executes during object creation, after setting all properties.
function transferFcn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to transferFcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in networkType.
function networkType_Callback(hObject, eventdata, handles)
% hObject    handle to networkType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns networkType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from networkType


% --- Executes during object creation, after setting all properties.
function networkType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to networkType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function value = getPopupValue(handle)

options = get(handle,'String');
value = char(options(get(handle,'Value'),:));

% --- Executes on selection change in testingData.
function testingData_Callback(hObject, eventdata, handles)
% hObject    handle to testingData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns testingData contents as cell array
%        contents{get(hObject,'Value')} returns selected item from testingData


% --- Executes during object creation, after setting all properties.
function testingData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to testingData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in trainingData.
function trainingData_Callback(hObject, eventdata, handles)
% hObject    handle to trainingData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns trainingData contents as cell array
%        contents{get(hObject,'Value')} returns selected item from trainingData


% --- Executes during object creation, after setting all properties.
function trainingData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trainingData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numLayers_Callback(hObject, eventdata, handles)
% hObject    handle to numLayers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numLayers as text
%        str2double(get(hObject,'String')) returns contents of numLayers as a double


% --- Executes during object creation, after setting all properties.
function numLayers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numLayers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hiddenLayerSize_Callback(hObject, eventdata, handles)
% hObject    handle to hiddenLayerSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hiddenLayerSize as text
%        str2double(get(hObject,'String')) returns contents of hiddenLayerSize as a double


% --- Executes during object creation, after setting all properties.
function hiddenLayerSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hiddenLayerSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epochs_Callback(hObject, eventdata, handles)
% hObject    handle to epochs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epochs as text
%        str2double(get(hObject,'String')) returns contents of epochs as a double


% --- Executes during object creation, after setting all properties.
function epochs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epochs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function goal_Callback(hObject, eventdata, handles)
% hObject    handle to goal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of goal as text
%        str2double(get(hObject,'String')) returns contents of goal as a double


% --- Executes during object creation, after setting all properties.
function goal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to goal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function characteristics_Callback(hObject, eventdata, handles)
% hObject    handle to characteristics (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of characteristics as text
%        str2double(get(hObject,'String')) returns contents of characteristics as a double


% --- Executes during object creation, after setting all properties.
function characteristics_CreateFcn(hObject, eventdata, handles)
% hObject    handle to characteristics (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in test.
function train_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.results, 'String', 'Training...');
options = handlesToOptions(handles);
[net selectedChars] = trainNetwork(options);
assignin('base', 'NETWORK', net);
assignin('base', 'SELECTED_CHARS', selectedChars);
set(handles.results, 'String', 'Trained!');


% --- Executes on button press in train.
function test_Callback(hObject, eventdata, handles)
% hObject    handle to train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.results, 'String', 'Testing...');
options = handlesToOptions(handles);
net = evalin('base', 'NETWORK');
selectedChars = evalin('base', 'SELECTED_CHARS');
results = testNetwork(options, net, selectedChars);
set(handles.results, 'String', 'Tested!');
updateResults(results, handles);
guidata(hObject, handles);


function options = handlesToOptions(handles)
options = struct('networkType', getPopupValue(handles.networkType), ...
                 'transferFcn', getPopupValue(handles.transferFcn), ...
                 'learningFcn', getPopupValue(handles.learningFcn), ...
                 'performanceFcn', getPopupValue(handles.performanceFcn), ...
                 'learningRate', str2double(get(handles.learningRate,'String')), ...
                 'trainingData', getPopupValue(handles.trainingData), ...
                 'testingData', getPopupValue(handles.testingData), ...
                 'numLayers',str2double(get(handles.numLayers,'String')), ...
                 'hiddenLayerSize',str2double(get(handles.hiddenLayerSize,'String')), ...
                 'epochs',str2double(get(handles.epochs,'String')), ...
                 'goal',str2double(get(handles.goal,'String')), ...
                 'characteristics',str2double(get(handles.characteristics,'String')), ...
                 'correlation', get(handles.correlation,'Value'), ...
                 'mutualinfo', get(handles.mutualinfo,'Value'), ...
                 'clustering', get(handles.clustering,'Value'), ...
                 'normalize', get(handles.normalize,'Value'), ...
                 'ratio', get(handles.ratio,'Value'), ...
                 'oneNeuronOutput', get(handles.oneneuron,'Value'));
             
function updateResults(results, handles)
set(handles.correctPercentage, 'String', results.correctPercentage);
set(handles.correct, 'String', results.correct);
set(handles.total, 'String', results.total);

set(handles.specificity, 'String', results.specificity);
set(handles.sensitivity, 'String', results.sensitivity);

set(handles.crisis, 'String', results.crisis);
set(handles.truePositives, 'String', results.truePositives);
set(handles.trueNegatives, 'String', results.trueNegatives);
set(handles.falsePositives, 'String', results.falsePositives);
set(handles.falseNegatives, 'String', results.falseNegatives);

axes(handles.result_axes);
 
x = 1:results.nCases; 
y1 = results.target;
y2 = improvOutput( results.result, results.nCases);

%plots the x and y data
plot(x, y1, '-r', x, y2, '-b', 'LineWidth', 2);

axis manual;
axis([0 results.nCases -0.05 1.05]);

%adds a title, x-axis description, and y-axis description
title('Crisis');
xlabel('Time');

function y = improvOutput(results, nCases)
aux = zeros(4, nCases);
indexes = find( results == 1 );
aux(2, indexes) = 1;
crisis = findCrisis(aux);
y = zeros(size(results));
for c = crisis'
    y(c(1):c(2)) = 1;
end


function correctPercentage_Callback(hObject, eventdata, handles)
% hObject    handle to correctPercentage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of correctPercentage as text
%        str2double(get(hObject,'String')) returns contents of correctPercentage as a double


% --- Executes during object creation, after setting all properties.
function correctPercentage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to correctPercentage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function correct_Callback(hObject, eventdata, handles)
% hObject    handle to correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of correct as text
%        str2double(get(hObject,'String')) returns contents of correct as a double


% --- Executes during object creation, after setting all properties.
function correct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function total_Callback(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total as text
%        str2double(get(hObject,'String')) returns contents of total as a double


% --- Executes during object creation, after setting all properties.
function total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function specificity_Callback(hObject, eventdata, handles)
% hObject    handle to specificity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of specificity as text
%        str2double(get(hObject,'String')) returns contents of specificity as a double


% --- Executes during object creation, after setting all properties.
function specificity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to specificity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sensitivity_Callback(hObject, eventdata, handles)
% hObject    handle to sensitivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sensitivity as text
%        str2double(get(hObject,'String')) returns contents of sensitivity as a double


% --- Executes during object creation, after setting all properties.
function sensitivity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sensitivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function crisis_Callback(hObject, eventdata, handles)
% hObject    handle to crisis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of crisis as text
%        str2double(get(hObject,'String')) returns contents of crisis as a double


% --- Executes during object creation, after setting all properties.
function crisis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to crisis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function truePositives_Callback(hObject, eventdata, handles)
% hObject    handle to truePositives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of truePositives as text
%        str2double(get(hObject,'String')) returns contents of truePositives as a double


% --- Executes during object creation, after setting all properties.
function truePositives_CreateFcn(hObject, eventdata, handles)
% hObject    handle to truePositives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function trueNegatives_Callback(hObject, eventdata, handles)
% hObject    handle to trueNegatives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trueNegatives as text
%        str2double(get(hObject,'String')) returns contents of trueNegatives as a double


% --- Executes during object creation, after setting all properties.
function trueNegatives_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trueNegatives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function falsePositives_Callback(hObject, eventdata, handles)
% hObject    handle to falsePositives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of falsePositives as text
%        str2double(get(hObject,'String')) returns contents of falsePositives as a double


% --- Executes during object creation, after setting all properties.
function falsePositives_CreateFcn(hObject, eventdata, handles)
% hObject    handle to falsePositives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function falseNegatives_Callback(hObject, eventdata, handles)
% hObject    handle to falseNegatives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of falseNegatives as text
%        str2double(get(hObject,'String')) returns contents of falseNegatives as a double


% --- Executes during object creation, after setting all properties.
function falseNegatives_CreateFcn(hObject, eventdata, handles)
% hObject    handle to falseNegatives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in correlation.
function correlation_Callback(hObject, eventdata, handles)
% hObject    handle to correlation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of correlation


% --- Executes on button press in mutualinfo.
function mutualinfo_Callback(hObject, eventdata, handles)
% hObject    handle to mutualinfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mutualinfo


% --- Executes on button press in clustering.
function clustering_Callback(hObject, eventdata, handles)
% hObject    handle to clustering (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of clustering


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over oneneuron.
function oneneuron_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to oneneuron (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in normalize.
function normalize_Callback(hObject, eventdata, handles)
% hObject    handle to normalize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of normalize


% --- Executes on button press in ratio.
function ratio_Callback(hObject, eventdata, handles)
% hObject    handle to ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ratio
