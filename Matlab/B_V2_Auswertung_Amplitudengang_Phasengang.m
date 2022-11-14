%zun�chst Workspace leeren
clear all

%aktuellen Arbeitspfad bestimmen und Pfade zuf�gen bzw �ndern
ActPath = pwd;
addpath([pwd '\Funktionen'])

cd ../Daten

%Laden der Daten
[File,Path] = uigetfile({'*.mat;*.csv','Messdaten-Files(*.mat,*.csv)';'*.*',  'All Files (*.*)'}, ...
   'W�hlen Sie ein Messdaten-File');
cd(ActPath)

if ~isnumeric(File)
    Infos.fileName = File;
    [Zeit,Kanal_A,Kanal_B] = V2_func_Daten_Import_RLC(File,Path);
    V2_GUI_Amplitudengang_Phasengang(Zeit,Kanal_A,Kanal_B,Infos)
end

clear File Path ActPath