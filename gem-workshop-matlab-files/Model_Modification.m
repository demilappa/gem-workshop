function [ New_Cobra_SBML_Model ] = Model_Modification( filename )
% Model_Modification
%   Imports  a Cobra SBML model, deletes a reaction
%   and writes the output result in the SBML file.
%   
%   INPUT:  The name of the Cobra SBML file that you would like to modify
%   OUTPUT: THe new version of the SBML file after the modification
%
%   Script requires a COBRA Toolbox functioning Installation
%
%   Usage: Model_Modification('filename.xml')
%
%
%   Dimitra Lappa, 2015-11-10

    model=readCbModel(filename);        % Promt opens and User chooses the file to be read
    model=removeRxns(model, model.rxns{1075,1})
    writeCbModel(model, 'sbml', filename) ;

end

