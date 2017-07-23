function rdo = gui_rdo(parent,position,string,tooltip,tag,value)

rdo = uicontrol('Parent',parent,'Style','radiobutton','Units','pixels',...
          'Position',position,'String',string,'TooltipString',tooltip,...
          'Tag',tag,'Value',value,'BackgroundColor',[1 1 1]);