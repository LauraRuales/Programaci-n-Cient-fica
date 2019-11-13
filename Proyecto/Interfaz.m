function  simple_gui2
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Create and then hide the UI as it is being constructed.
f = figure('Visible','off','Position',[500,300,1400,600]);
% Construct the components.
hECG1 = uicontrol('Style','pushbutton','String','actualizar','Position',[15,50,70,25],'Callback',{@hECG1button_Callback});
hpopup = uicontrol('Style','popupmenu','String',{'ECG1','ECG2','ECG3','ECG4','ECG5','ECG6'},'Position',[15,20,100,25],'Callback',{@popup_menu_Callback});
ha = axes('Units','pixels','Position',[100,120,1200,400]);
align([hECG1,hpopup],'Center','None');

    function popup_menu_Callback(source,eventdata)
        % Determine the selected data set.
        str = source.String;
        val = source.Value;
        % Set current data to the selected data set.
        switch str{val};
            case 'ECG1' % User selects Peaks.
                [Tiempo, data_ECG]=ECG('100-ECG__.bin','100-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
            case 'ECG2' % User selects Membrane.
                [Tiempo, data_ECG]=ECG('105-ECG__.bin','105-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
            case 'ECG3' % User selects Membrane.
                [Tiempo, data_ECG]=ECG('109-ECG__.bin','109-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
            case 'ECG4' % User selects Membrane.
                [Tiempo, data_ECG]=ECG('116-ECG__.bin','116-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2545);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
            case 'ECG5' % User selects Membrane.
                [Tiempo, data_ECG]=ECG('118-ECG__.bin','118-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
            case 'ECG6' % User selects Membrane.
                [Tiempo, data_ECG]=ECG('119-ECG__.bin','119-Time__.bin');
                [Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo, 0.2);
                Frecuencia=60./Diferencia;
                Arritmias= Identificacion( Diferencia, picos, Coordenadas );
        end
    end

    function hECG1button_Callback(~,eventdata)
        % Display surf plot of the currently selected data.
        ax1=subplot(2,2,[1 2]);
        plot(ax1,Tiempo,data_ECG,'k');
        hold on
        plot(ax1,Arritmias(:,1),Arritmias(:,2),'O' );
        title('Electrocardiograma'); %Título gráfica
        xlabel('Tiempo (Seg)'); %Título eje horinzontal
        ylabel('Voltaje (mV)'); %Título eje vertical;
        legend('','arritmias');
        hold off
        ax2=subplot(2,2,3);
        plot(ax2,Coordenadas,Diferencia,'k' );
        title('Tacograma'); %Título gráfica
        xlabel('Tiempo (Seg)'); %Título eje horinzontal
        ylabel('R-R intervalo (Seg)'); %Título eje vertical;
        ax3=subplot(2,2,4);
        plot(ax3,Coordenadas,Frecuencia,'k' );
        title('Frecuencia cardiaca instantanea'); %Título gráfica
        xlabel('Tiempo (Seg)'); %Título eje horinzontal
        ylabel('Frecuencia instantanea cardiaca (bpm)'); %Título eje vertical;
    end
% Initialize the UI.
% Change units to normalized so components resize automatically.
f.Units = 'normalized';
ha.Units = 'normalized';
hECG1.Units = 'normalized';
hpopup.Units = 'normalized';

% Generate the data to plot.
[Tiempo, data_ECG]=ECG('100-ECG__.bin','100-Time__.bin');
[Diferencia, Coordenadas, picos]=Tacograma(data_ECG,Tiempo,0.5);
Frecuencia=60./Diferencia;
Arritmias= Identificacion( Diferencia, picos, Coordenadas );
% Create a plot in the axes.
ax1=subplot(2,2,[1 2]);
plot(ax1,Tiempo,data_ECG,'k' );
hold on
plot(ax1,Arritmias(:,1),Arritmias(:,2),'O' );
title('Electrocardiograma'); %Título gráfica
xlabel('Tiempo (Seg)'); %Título eje horinzontal
ylabel('Voltaje (mV)'); %Título eje vertical;
legend('','arritmias');
hold off
ax2=subplot(2,2,3);
plot(ax2,Coordenadas,Diferencia,'k' );
title('Tacograma'); %Título gráfica
xlabel('Tiempo(Seg)'); %Título eje horinzontal
ylabel('R-R intervalo (Seg)'); %Título eje vertical;
ax3=subplot(2,2,4);
plot(ax3,Coordenadas,Frecuencia,'k' );
title('Frecuencia cardiaca instantanea'); %Título gráfica
xlabel('Tiempo(Seg)'); %Título eje horinzontal
ylabel('Frecuencia instantanea cardiaca (bpm)'); %Título eje vertical;
% Assign a name to appear in the window title.
f.Name = 'Simple GUI';
% Move the window to the center of the screen.
movegui(f,'center')
%Make the UI visible.
f.Visible = 'on';
end

