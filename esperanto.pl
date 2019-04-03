palavra(Palavra) :-
   palavra(Propriedades, Lista, []),
   atom_chars(Palavra, Lista),
   nl,
   write('Propriedades: '),
   write(Propriedades).


palavra(Propriedades) --> parte_invariável, parte_variável(Propriedades).

%%%%%%%%%%%%%%%%%%%%%%%
%    Substantivos     %
%%%%%%%%%%%%%%%%%%%%%%%

parte_variável([substantivo, nominativo, singular]) --> [o].
parte_variável([substantivo, nominativo, plural]) --> [o,j].
parte_variável([substantivo, acusativo, singular]) --> [o,n].
parte_variável([substantivo, acusativo, plural]) --> [o,j,n].

parte_variável([substantivo, particípioAtivo, passadoPerfeito]) --> [i,n,t,o].
parte_variável([substantivo, particípioAtivo, presentePerfeito]) --> [a,n,t,o].
parte_variável([substantivo, particípioAtivo, futuroPerfeito]) --> [o,n,t,o].

parte_variável([substantivo, particípioAtivo, passadoImperfeito]) --> [i,t,o].
parte_variável([substantivo, particípioAtivo, presenteImperfeito]) --> [a,t,o].
parte_variável([substantivo, particípioAtivo, futuroImperfeito]) --> [o,t,o].

%%%%%%%%%%%%%%%%%%%%%%%
%      Advérbios      %
%%%%%%%%%%%%%%%%%%%%%%%

parte_variável([advérbioDerivado]) --> [e].

parte_variável([advérbioDerivado, particípioAtivo, passadoPerfeito]) --> [i,n,t,e].
parte_variável([advérbioDerivado, particípioAtivo, presentePerfeito]) --> [a,n,t,e].
parte_variável([advérbioDerivado, particípioAtivo, futuroPerfeito]) --> [o,n,t,e].

parte_variável([advérbioDerivado, particípioAtivo, passadoImperfeito]) --> [i,t,e].
parte_variável([advérbioDerivado, particípioAtivo, presenteImperfeito]) --> [a,t,e].
parte_variável([advérbioDerivado, particípioAtivo, futuroImperfeito]) --> [o,t,e].

%%%%%%%%%%%%%%%%%%%%%%%
%      Adjetivos      %
%%%%%%%%%%%%%%%%%%%%%%%

parte_variável([adjetivo, nominativo, singular]) --> [a].
parte_variável([adjetivo, nominativo, plural]) --> [a,j].
parte_variável([adjetivo, acusativo, singular]) --> [a,n].
parte_variável([adjetivo, acusativo, plural]) --> [a,j,n].

parte_variável([adjetivo, particípioAtivo, passadoPerfeito]) --> [i,n,t,a].
parte_variável([adjetivo, particípioAtivo, presentePerfeito]) --> [a,n,t,a].
parte_variável([adjetivo, particípioAtivo, futuroPerfeito]) --> [o,n,t,a].

parte_variável([adjetivo, particípioAtivo, passadoImperfeito]) --> [i,t,a].
parte_variável([adjetivo, particípioAtivo, presenteImperfeito]) --> [a,t,a].
parte_variável([adjetivo, particípioAtivo, futuroImperfeito]) --> [o,t,a].

%%%%%%%%%%%%%%%%%%%%%%
%       Verbos       %
%%%%%%%%%%%%%%%%%%%%%%

parte_variável([verbo, presentePerfeito, indicativo]) --> [a,s]. 
parte_variável([verbo, passadoPerfeito, indicativo]) --> [i,s]. 
parte_variável([verbo, futuroPerfeito, indicativo]) --> [o,s]. 

parte_variável([verbo, presenteImperfeito, indicativo]) --> [a,d,a,s]. 
parte_variável([verbo, passadoImperfeito, indicativo]) --> [a,d,i,s]. 
parte_variável([verbo, futuroImperfeito, indicativo]) --> [a,d,o,s]. 

parte_variável([verbo, infinitivo]) --> [i].

parte_variável([verbo, condicional]) --> [u,s]. 

parte_variável([verbo, imperativo]) --> [u]. 

%%%%%%%%%%%%%%%%%%
% Itens Lexicais %
%%%%%%%%%%%%%%%%%%

parte_invariável --> [a,m].
parte_invariável --> [e,s,t].
parte_invariável --> [v,i,r].
parte_invariável --> [l,i,b,r].
parte_invariável --> [r,a,p,i,d].
parte_invariável --> [k,o,r].
parte_invariável --> [d,o,m].
parte_invariável --> [a,m].
parte_invariável --> [b,e,s,t].
parte_invariável --> [b,o,n].
parte_invariável --> [l,e,r,n].




