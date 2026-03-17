function varargout = Goruntu_Sifreleme(varargin)
% GORUNTU_SIFRELEME MATLAB code for Goruntu_Sifreleme.fig
%      GORUNTU_SIFRELEME, by itself, creates a new GORUNTU_SIFRELEME or raises the existing
%      singleton*.
%
%      H = GORUNTU_SIFRELEME returns the handle to a new GORUNTU_SIFRELEME or the handle to
%      the existing singleton*.
%
%      GORUNTU_SIFRELEME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GORUNTU_SIFRELEME.M with the given input arguments.
%
%      GORUNTU_SIFRELEME('Property','Value',...) creates a new GORUNTU_SIFRELEME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Goruntu_Sifreleme_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Goruntu_Sifreleme_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Goruntu_Sifreleme

% Last Modified by GUIDE v2.5 09-Jan-2024 19:45:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Goruntu_Sifreleme_OpeningFcn, ...
                   'gui_OutputFcn',  @Goruntu_Sifreleme_OutputFcn, ...
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


% --- Executes just before Goruntu_Sifreleme is made visible.
function Goruntu_Sifreleme_OpeningFcn(hObject, handles, varargin)

% Choose default command line output for Goruntu_Sifreleme

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Goruntu_Sifreleme wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Goruntu_Sifreleme_OutputFcn(hObject,handles,varargin) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% Sisteme Resim Yükleme
function loadimage_Callback(hObject,eventdata,handles)
filename = uigetfile('*.jpg;*.png;*.jpeg;*.pneg');
if filename==0
    msgbox(sprintf('Lutfen Bir Resim Seçiniz.'),'HATA','Error');
end
orijinal_goruntu = findobj(0, 'tag', 'orijinal_goruntu');
axes(orijinal_goruntu)
global img
img = imread(filename);
imshow(img);




function akey1_Callback(hObject, eventdata, handles)
function akey2_Callback(hObject, eventdata, handles)

function akey3_Callback(hObject, eventdata, handles)
function akey4_Callback(hObject, eventdata, handles)

function akey5_Callback(hObject, eventdata, handles)
function akey6_Callback(hObject, eventdata, handles)

function mkey1_Callback(hObject, eventdata, handles)
function mkey2_Callback(hObject, eventdata, handles)
function mkey3_Callback(hObject, eventdata, handles)


%Sifreleme Islemi 
function sifrele_Callback(hObject, eventdata, handles)

akey1 = findobj(0, 'tag', 'akey1'); 
arkey = str2double(get(akey1,'String'));

akey2 = findobj(0, 'tag', 'akey2'); 
brkey = str2double(get(akey2,'String'));

akey3 = findobj(0, 'tag', 'akey3'); 
agkey = str2double(get(akey3,'String'));

akey4 = findobj(0, 'tag', 'akey4'); 
bgkey = str2double(get(akey4,'String'));

akey5 = findobj(0, 'tag', 'akey5'); 
abkey = str2double(get(akey5,'String'));

akey6 = findobj(0, 'tag', 'akey6'); 
bbkey = str2double(get(akey6,'String'));


mkey1 = findobj(0, 'tag', 'mkey1'); 
rkey = str2double(get(mkey1,'String'));

mkey2 = findobj(0, 'tag', 'mkey2'); 
gkey = str2double(get(mkey2,'String'));

mkey3 = findobj(0, 'tag', 'mkey3'); 
bkey = str2double(get(mkey3,'String'));


%Plain Image
global img
a = img;

plainkirmizi = a(:,:,1);
plainyesil = a(:,:,2);
plainmavi = a(:,:,3);

[satir,sutun] = size(plainkirmizi);  %size fonksiyonu satir ve sutun bilgisini veriyor, bunları iki degiskene attim

% Kirmizi
matrix = plainkirmizi; 
boyut =rkey; %resmin bolunecegi karelerin bi kenarinin kac hucre kaplayacagi

for i = 1 : boyut : satir           %bir bir taranan satir sayisini arttiriyor 
    for j = 1 : boyut : sutun    %bir bir sutun sayisini arttiriyor
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)    %satirin/resmin bittip bitmediğini kontrol ediyor 
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);   %taradigimiz bolumu farklı bir degiskene atiyoruz
           
           yeni = rot90(yeni);
           yeni = rot90(yeni);
           yeni = rot90(yeni);
           
           %En son olarak da orijinal matrixe parcasi dondurulmus matrixi yapistiriyoruz 
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni;             
       end
    end
end
plainkirmizi = matrix;


% Yesil
matrix = plainyesil; 
boyut = gkey; 
for i = 1 : boyut : satir           
    for j = 1 : boyut : sutun   
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)    
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);  
  
           yeni = rot90(yeni);
           yeni = rot90(yeni);
           yeni = rot90(yeni);
          
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni; 
       end
    end
end
plainyesil = matrix;

% Mavi
matrix = plainmavi; 
boyut = bkey;  

for i = 1 : boyut : satir            
    for j = 1 : boyut : sutun    
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)   
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);     
           
           yeni = rot90(yeni);
           yeni = rot90(yeni);
           yeni = rot90(yeni);
           
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni;
       end
    end
end
plainmavi = matrix;

sonuc(:,:,1) = plainkirmizi;
sonuc(:,:,2) = plainyesil;
sonuc(:,:,3) = plainmavi;
imshow(sonuc);

%Affine Bolumu

for k=1 : 3
    for i=1 : satir
        for j=1 : sutun
            plc = plainkirmizi(i,j);
            plc = double(plc);
            resim = mod((arkey*plc)+brkey,256);
            plainkirmizi(i,j) = resim;
        end
    end
    
    for i=1 : satir
        for j=1 : sutun
            plc = plainyesil(i,j);
            plc = double(plc);
            resim = mod((agkey*plc)+bgkey,256);
            plainyesil(i,j) = resim;
        end
    end
    
    for i=1 : satir
        for j=1 : sutun
            plc = plainmavi(i,j);
            plc = double(plc);
            resim = mod((abkey*plc)+bbkey,256);
            plainmavi(i,j) = resim;
        end
    end
end
sifre(:,:,1) = plainkirmizi;
sifre(:,:,2) = plainyesil;
sifre(:,:,3) = plainmavi;


islenmis_goruntu = findobj(0, 'tag', 'islenmis_goruntu');
axes(islenmis_goruntu)
imshow(sifre);

imshow(sifre);

% Desifreleme Islemi
function desifrele_Callback(hObject, eventdata, handles)

akey1 = findobj(0, 'tag', 'akey1'); 
arkey = str2double(get(akey1,'String'));

akey2 = findobj(0, 'tag', 'akey2'); 
brkey = str2double(get(akey2,'String'));

akey3 = findobj(0, 'tag', 'akey3'); 
agkey = str2double(get(akey3,'String'));

akey4 = findobj(0, 'tag', 'akey4'); 
bgkey = str2double(get(akey4,'String'));

akey5 = findobj(0, 'tag', 'akey5'); 
abkey = str2double(get(akey5,'String'));

akey6 = findobj(0, 'tag', 'akey6'); 
bbkey = str2double(get(akey6,'String'));


mkey1 = findobj(0, 'tag', 'mkey1'); 
rkey = str2double(get(mkey1,'String'));

mkey2 = findobj(0, 'tag', 'mkey2'); 
gkey = str2double(get(mkey2,'String'));

mkey3 = findobj(0, 'tag', 'mkey3'); 
bkey = str2double(get(mkey3,'String'));

% Moduler Ters
[div,c1,~] = gcd(arkey,256);
if div==1
    ranahtarters = mod(c1,256);
else
end

[div,c1,~] = gcd(agkey,256);
if div==1
    ganahtarters = mod(c1,256);
else
end

[div,c1,~] = gcd(abkey,256);
if div==1
    banahtarters = mod(c1,256);
else
end


global img
a = img;

plainkirmizi = a(:,:,1);
plainyesil = a(:,:,2);
plainmavi = a(:,:,3);

[satir,sutun] = size(plainkirmizi);
for o = 1 : 3
    for i=1 : satir
        for j=1 : sutun
            plc = plainkirmizi(i,j);
            plc = double(plc);
            resim = mod(ranahtarters*(plc-brkey),256);
            plainkirmizi(i,j) = resim;
        end
    end
    
    for i=1 : satir
        for j=1 : sutun
            plc = plainyesil(i,j);
            plc = double(plc);
            resim = mod(ganahtarters*(plc-bgkey),256);
            plainyesil(i,j) = resim;
        end
    end
    
    for i=1 : satir
        for j=1 : sutun
            plc = plainmavi(i,j);
            plc = double(plc);
            resim = mod(banahtarters*(plc-bbkey),256);
            plainmavi(i,j) = resim;
        end
    end
end
matrix = plainkirmizi; 
boyut =rkey; %resmin bolunecegi karelerin bi kenarinin kac hucre kaplayacagi

for i = 1 : boyut : satir           %bir bir taranan satir sayisini arttiriyor 
    for j = 1 : boyut : sutun    %bir bir sutun sayisini arttiriyor
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)    %satirin/resmin bittip bitmediğini kontrol ediyor 
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);   %taradigimiz bolumu farklı bir degiskene atiyoruz
           
           yeni = rot90(yeni);
           
           %En son olarak da orijinal matrixe parcasi dondurulmus matrixi yapistiriyoruz 
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni;             
       end
    end
end
plainkirmizi = matrix;


% Dondürme

% Yesil
matrix = plainyesil; 
boyut = gkey; 
for i = 1 : boyut : satir           
    for j = 1 : boyut : sutun   
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)    
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);  
  
           yeni = rot90(yeni);
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni; 
       end
    end
end
plainyesil = matrix;

% Mavi
matrix = plainmavi; 
boyut = bkey;  

for i = 1 : boyut : satir            
    for j = 1 : boyut : sutun    
       if (j+boyut-1 < sutun+1) && (i+boyut-1 < satir+1)   
           
           yeni = matrix(i:i+boyut-1,j:j+boyut-1);     
           
           yeni = rot90(yeni);
           
           matrix(i:i+boyut-1,j:j+boyut-1) = yeni;
       end
    end
end
plainmavi = matrix;


sonuc(:,:,1) = plainkirmizi;
sonuc(:,:,2) = plainyesil;
sonuc(:,:,3) = plainmavi;


islenmis_goruntu = findobj(0, 'tag', 'islenmis_goruntu');
axes(islenmis_goruntu)
imshow(sonuc);

imtool(sonuc);
