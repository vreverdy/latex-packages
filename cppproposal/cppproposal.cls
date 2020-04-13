%% =============================== CPPPROPOSAL ============================== %%
%% Project:         cppproposal
%% Name:            cppproposal.class
%% Description:     Class for C++ proposals
%% Author(s):       Vincent Reverdy [2019-]
%% License:         LPPL-1.3c
%% ========================================================================== %%
%% Copyright 2019 V. Reverdy
%% This work may be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.3 of this license or any later
%% version. The latest version of the license is in http://www.latex-project.org
%% /lppl.txt and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% This work has the LPPL maintenance status `maintained'.
%% The Current Maintainer of this work is V. Reverdy.
%% ========================================================================== %%

%% ========================================================================== %%
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{cppproposal}[2019/01/01 C++ Proposal]
%% ========================================================================== %%



%% ============================== CLASS OPTIONS ============================= %%
\DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{article}} 
\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{letterpaper}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{onecolumn}{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{twocolumn}{\PassOptionsToClass{\CurrentOption}{article}}
%% -------------------------------------------------------------------------- %%
\ProcessOptions\relax
%% -------------------------------------------------------------------------- %%
\LoadClass{article}
%% ========================================================================== %%



%% ================================ PACKAGES ================================ %%
\RequirePackage{cppproposal}
%% ========================================================================== %%

