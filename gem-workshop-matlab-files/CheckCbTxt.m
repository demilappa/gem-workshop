function [New_Cobra_Txt_Model] = CheckCbTxt(filename)
% CheckCbTxt
%   Imports the new version of the Cobra sbml model
%   and writes the ouptut result in a txt file.
%
%   Script requires a COBRA Toolbox functioning Installation
%
%   Usage: CheckCbTxt('filename.txt')
%
%
%   Dimitra Lappa, 2015-11-10

    model=readCbModel();        % Promt opens and User chooses the file to be read 
    writeCbModel(model, 'text', filename) ;
end