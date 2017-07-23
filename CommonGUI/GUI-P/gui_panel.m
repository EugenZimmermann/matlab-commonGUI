function panel = gui_panel(parent,position,title,fontsize,tag)

panel = uipanel('Parent',parent,'Units','pixels','Position',position,'Title',title,...
                   'Fontsize',fontsize,'Tag',tag,'Clipping','on');
