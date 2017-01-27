function [parsed_update, mainText_new, final_list] = colourNodeWhite(parsed,fname_out,list,list_Met)
%
% Highlight the metabolite nodes using the same colour scheme as in
% "addColour" function while changing the colours of rest nodes to white
%
%
%
% fname            An XML file to be modified to include annotations
% fanme_out        The name of the output XML file
% parsed           A parsed model structure generated by 'parseCD' function
%
% list       A list of reaction IDs that need to be highilighted by
%                changing the colour attributes of the reaciton links in
%                the CellDesigner model. The first column stores a list of
%                reaction IDs whose reaction links need to be highlighted,
%                whereas the second column stores a list of Html Colours.
%OPTIONAL INPUTS
%
% list_Met           The list of metabolite IDs to be highlighed
%
%
%OPTIONAL OUTPUT
%
% parsed_updated     An updated parsed model structure.
% mainText_new       The lines of the new XML file.
% final_list         A list of the metabolite nodes whose colour attributes
%                    are modified.
%
%EXMPALE: [var,final_list]=colourNodeWhite('fatty_acid_synthesis_Miriam__rxns_test_white.xml','fatty_acid_synthesis_Miriam__rxns_test_white_colour.xml',parsed_fatty_acid_new,list_nodes)

list_nodes_white(:,1)=parsed.r_info.ID(:,3);

list_nodes_white(:,2)={'#FFFFFFFF'};  %% here you can change the colour hex code to others

% [temp]=strsplit(fname,'.')
% fname_temp=[temp{1},'_white','.',temp{2}];


[parsed_update,var,final_list]=colourNode(parsed,fname_out,list_nodes_white,list_Met)

[parsed_update,var,final_list]=colourNode(parsed_update,fname_out,list,list_Met)

mainText_new=var;

end

