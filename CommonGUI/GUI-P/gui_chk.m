function chk = gui_chk(parent,position,string,tooltip,tag,action)

chk = uicontrol('Parent',parent,'Style','checkbox','Units','pixels',...
          'Position',position,'String',string,'TooltipString',tooltip,'Tag',tag,'Callback',action);