function var = gui_var(parent,position,tooltip,align,fontsize,tag,action)

var = uicontrol('Parent',parent,'Style','edit','Units','pixels','BackgroundColor',[1 1 1],...
          'Position',position,'String',blanks(0),'TooltipString',tooltip,...
          'Fontsize',fontsize,'Tag',tag,'HorizontalAlignment',align,'Callback',action);