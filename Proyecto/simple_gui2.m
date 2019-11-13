function  simple_gui2
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Create and then hide the UI as it is being constructed.
f = figure('Visible','off','Position',[500,300,500,300]);
% Construct the components.
hECG1 = uicontrol('Style','pushbutton','String','ECG1','Position',[315,220,70,25],'Callback',{@hECG1button_Callback});
hmesh = uicontrol('Style','pushbutton','String','Mesh','Position',[315,180,70,25],'Callback',{@meshbutton_Callback});
hcontour = uicontrol('Style','pushbutton','String','Contour','Position',[315,135,70,25],'Callback',{@contourbutton_Callback});
hpopup = uicontrol('Style','popupmenu','String',{'ECG1','Membrane','Sinc'},'Position',[300,50,100,25],'Callback',{@popup_menu_Callback});
ha = axes('Units','pixels','Position',[50,60,200,185]);
align([hECG1,hmesh,hcontour,hpopup],'Center','None');

    function popup_menu_Callback(source,eventdata)
        % Determine the selected data set.
        str = source.String;
        val = source.Value;
        % Set current data to the selected data set.
        switch str{val};
            case 'ECG1' % User selects Peaks.
                current_data = data1;
            case 'Membrane' % User selects Membrane.
                current_data = data2;
            case 'Sinc' % User selects Sinc.
                current_data = sinc_data;
        end
    end

    function hECG1button_Callback(source,eventdata)
        % Display surf plot of the currently selected data.
        Ti100 = fopen('100-Time.bin','r');
        Time100 = fread(Ti100,'double');
        plot(Time100,current_data);
        title('Electrocardiograma 1'); %Título gráfica
        xlabel('Tiempo'); %Título eje horinzontal
        ylabel('Voltaje'); %Título eje vertical;
    end
    function meshbutton_Callback(source,eventdata)
        % Display mesh plot of the currently selected data.
        Ti101 = fopen('101-Time.bin','r');
        Time101 = fread(Ti101,'double');
        plot(Time101,current_data);
        title('Electrocardiograma 1'); %Título gráfica
        xlabel('Tiempo'); %Título eje horinzontal
        ylabel('Voltaje'); %Título eje vertical;
    end

    function contourbutton_Callback(source,eventdata)
        % Display mesh plot of the currently selected data.
        contour(current_data);
    end
% Initialize the UI.
% Change units to normalized so components resize automatically.
f.Units = 'normalized';
ha.Units = 'normalized';
hECG1.Units = 'normalized';
hmesh.Units = 'normalized';
hcontour.Units = 'normalized';
htext.Units = 'normalized';
hpopup.Units = 'normalized';

% Generate the data to plot.
EC100 = fopen('100-ECG.bin','r');
ECG100 = fread(EC100,'uint16');
Ti100 = fopen('100-Time.bin','r');
Time100 = fread(Ti100,'double');
ECG100 = (ECG100 - 1024)./200;

EC101 = fopen('101-ECG.bin','r');
ECG101 = fread(EC101,'uint16');
ECG101 = (ECG101 - 1024)./200;

data1 = ECG100;
data2 = ECG101;
[x,y] = meshgrid(-8:.5:8);
r = sqrt(x.^2+y.^2) + eps;
sinc_data = sin(r)./r;
% Create a plot in the axes.
current_data = data1;
figure(1);
plot(Time100,current_data);
title('Electrocardiograma 1'); %Título gráfica
xlabel('Tiempo'); %Título eje horinzontal
ylabel('Voltaje'); %Título eje vertical;
% Assign a name to appear in the window title.
f.Name = 'Simple GUI';
% Move the window to the center of the screen.
movegui(f,'center')
%Make the UI visible.
f.Visible = 'on';
end