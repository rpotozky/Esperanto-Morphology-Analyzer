word(Word) :-
   word(Proprieties, List, []),
   atom_chars(Word, List),
   nl,
   write('Properties: '),
   write(Properties).


word(Properties) --> variable, invariable(Properties).

%%%%%%%%%%%%%%%%%%%%%%%
%    Nouns     %
%%%%%%%%%%%%%%%%%%%%%%%

variable([noun, nominative, singular]) --> [o].
variable([noun, nominative, plural]) --> [o,j].
variable([noun, accusative, singular]) --> [o,n].
variable([noun, accusative, plural]) --> [o,j,n].

variable([noun, activeParticiple, passPerfect]) --> [i,n,t,o].
variable([noun, activeParticiple, presentPerfect]) --> [a,n,t,o].
variable([noun, activeParticiple, futurePerfect]) --> [o,n,t,o].

variable([noun, activeParticiple, passImperfect]) --> [i,t,o].
variable([noun, activeParticiple, presentImperfect]) --> [a,t,o].
variable([noun, activeParticiple, futureImperfect]) --> [o,t,o].

%%%%%%%%%%%%%%%%%%%%%%%
%      Adverbs      %
%%%%%%%%%%%%%%%%%%%%%%%

variable([advérbioDerivado]) --> [e].

variable([derivativeAdverb, activeParticiple, passPerfect]) --> [i,n,t,e].
variable([derivativeAdverb, activeParticiple, presentPerfect]) --> [a,n,t,e].
variable([derivativeAdverb, activeParticiple, futurePerfect]) --> [o,n,t,e].

variable([derivativeAdverb, activeParticiple, passImperfect]) --> [i,t,e].
variable([derivativeAdverb, activeParticiple, presentImperfect]) --> [a,t,e].
variable([derivativeAdverb, activeParticiple, futureImperfect]) --> [o,t,e].

%%%%%%%%%%%%%%%%%%%%%%%
%      Adjectives      %
%%%%%%%%%%%%%%%%%%%%%%%

variable([adjective, nominative, singular]) --> [a].
variable([adjective, nominative, plural]) --> [a,j].
variable([adjective, accusative, singular]) --> [a,n].
variable([adjective, accusative, plural]) --> [a,j,n].

variable([adjective, activeParticiple, passPerfect]) --> [i,n,t,a].
variable([adjective, activeParticiple, presentPerfect]) --> [a,n,t,a].
variable([adjective, activeParticiple, futurePerfect]) --> [o,n,t,a].

variable([adjective, activeParticiple, passImperfect]) --> [i,t,a].
variable([adjective, activeParticiple, presentImperfect]) --> [a,t,a].
variable([adjective, activeParticiple, futureImperfect]) --> [o,t,a].

%%%%%%%%%%%%%%%%%%%%%%
%       Verbs       %
%%%%%%%%%%%%%%%%%%%%%%

variable([verb, passPerfect, indicative]) --> [i,s]. 
variable([verb, presentPerfect, indicative]) --> [a,s]. 
variable([verb, futurePerfect, indicative]) --> [o,s]. 

variable([verb, passImperfect, indicative]) --> [a,d,i,s]. 
variable([verb, presentImperfect, indicative]) --> [a,d,a,s]. 
variable([verb, futureImperfect, indicative]) --> [a,d,o,s]. 

variable([verb, infinitive]) --> [i].

variable([verb, conditional]) --> [u,s]. 

variable([verb, imperative]) --> [u]. 

%%%%%%%%%%%%%%%%%%
% Lexical Items %
%%%%%%%%%%%%%%%%%%

invariable --> [a,m].
invariable --> [e,s,t].
invariable --> [v,i,r].
invariable --> [l,i,b,r].
invariable --> [r,a,p,i,d].
invariable --> [k,o,r].
invariable --> [d,o,m].
invariable --> [a,m].
invariable --> [b,e,s,t].
invariable --> [b,o,n].
invariable --> [l,e,r,n].
