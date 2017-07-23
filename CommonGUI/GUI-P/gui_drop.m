function var = gui_drop(parent, position, string, tag, action)
%GUI_DROP Summary of this function goes here
%   Detailed explanation goes here

    var = uicontrol('Parent', parent,'Units','pixels','Position',position,'Style','popup','String', string,'Tag',tag,'Callback', action);
end

