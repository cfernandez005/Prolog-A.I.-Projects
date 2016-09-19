%Chris Fernandez
%5/26/16
%CS 4810 Artificial Intelligence
%Assignment#7 Knowledge Engineering

:- use_module(library(lists)).


%League of Legends Champion Expert System
%type "help." to display the function menu

%Knowledge Base----
assassin([ahri, akali, ekko, evelynn, fiora, fizz, irelia, jax, jhin, kassadin, katarina, khazix, leblanc, lee_sin, malzahar, master_yi, nidalee,
          nocturne, pantheon, rengar, riven, shaco, talon, teemo, tristana, tryndamere, twitch, vayne, vi, xerath, xin_zhao, yasuo, zed]).
          
fighter([aatrox, blitzcrank, diana, dr_mundo, ekko, elise, fiora, fizz, gangplank, garen, gnar, gragas, hecarim, illaoi, irelia, jarvan_iv, jax, jayce,
         kayle, khazix, lee_sin, malphite, master_yi, mordekaiser, nasus, nautilus, nidalee, nocturne, nunu, olaf, pantheon, poppy, quinn, rammus,
         reksai, renekton, rengar, riven, rumble, ryze, sejuani, shyvana, singed, sion, skarner, swain, talon, taric, thresh, trundle, tryndamere, udyr,
         urgot, vi, volibear, warwick, wukong, xin_zhao, yasuo, yorick, zac, zed]).
         
mage([ahri, amumu, anivia, annie, aurelion_sol, azir, bard, brand, cassiopeia, chogath, diana, elise, evelynn, ezreal, fiddlesticks, galio, gragas,
      heimerdinger, janna, karma, karthus, kassadin, katarina, kennen, kogmaw, leblanc, lissandra, lulu, lux, malzahar, maokai, morgana, nami, orianna,
      rumble, ryze, sona, soraka, swain, syndra, taliyah, twisted_fate, varus, veigar, velkoz, viktor, vladimir, xerath, yorick, ziggs, zilean, zyra]).
      
support([alistar, anivia, ashe, bard, braum, fiddlesticks, heimerdinger, janna, karma, kayle, leona, lulu, lux, morgana, nami, nunu, orianna, sona,
         soraka, syndra, tahm_kench, taliyah, taric, thresh, zilean, zyra]).
         
tank([aatrox, alistar, amumu, blitzcrank, braum, chogath, darius, dr_mundo, galio, garen, gnar, hecarim, illaoi, jarvan_iv, leona, malphite, maokai,
      nasus, nautilus, olaf, poppy, rammus, renekton, sejuani, shen, shyvana, singed, sion, skarner, tahm_kench, trundle, udyr, vladimir, volibear,
      warwick, wukong, zac]).

marksman([ashe, azir, caitlyn, corki, draven, ezreal, graves, jayce, jhin, jinx, kalista, kennen, kindred, kogmaw, lucian, miss_fortune, quinn, sivir,
          teemo, tristana, twitch, urgot, varus, vayne]).

melee([aatrox, akali, alistar, amumu, blitzcrank, braum, chogath, darius, diana, dr_mundo, ekko, elise, evelynn, fiora, fizz, galio, gangplank, garen,
       gnar, gragas, hecarim, illaoi, irelia, jarvan_iv, jax, jayce, kassadin, katarina, kayle, khazix, lee_sin, leona, malphite, maokai, master_yi,
       mordekaiser, nasus, nautilus, nidalee, nocturne, nunu, olaf, pantheon, poppy, quinn, rammus, reksai, renekton, rengar, riven, rumble, sejuani,
       shaco, shen, shyvana, singed, sion, skarner, tahm_kench, talon, taric, trundle, tryndamere, udyr, vi, volibear, warwick, wukong, xin_zhao, yasuo,
       yorick, zac, zed]).

ranged([ahri, anivia, annie, ashe, aurelion_sol, azir, bard, brand, caitlyn, cassiopeia, corki, draven, elise, ezreal, fiddlesticks, gnar, graves,
        heimerdinger, janna, jayce, jhin, jinx, kalista, karma, karthus, kennen, kindred, kogmaw, leblanc, lissandra, lucian, lulu, lux, malzahar,
        miss_fortune, morgana, nami, nidalee, orianna, quinn, ryze, sivir, sona, soraka, swain, syndra, taliyah, teemo, thresh, tristana, twisted_fate,
        twitch, urgot, varus, vayne, veigar, velkoz, viktor, vladimir, xerath, ziggs, zilean, zyra]).

jungle([amumu, diana, elise, evelynn, fiddlesticks, fizz, gragas, hecarim, jarvan_iv, jax, kayle, khazix, kindred, lee_sin, master_yi, maokai, nautilus,
        nidalee, nocturne, nunu, olaf, pantheon, rammus, reksai, rengar, sejuani, shaco, shyvana, sion, skarner, tahm_kench, trundle, udyr, vi, warwick,
        wukong, xin_zhao, zac]).        
        
stealth([akali, evelynn, khazix, rengar, shaco, talon, teemo, twitch, vayne, wukong]).
        
health_based([aatrox, dr_mundo, mordekaiser, vladimir, zac]).

energy_based([akali, kennen, lee_sin, shen, zed]).

fury_based([gnar, reksai, renekton, rengar, shyvana, tryndamere]).

no_resource_based([garen, katarina, riven, rumble, yasuo]).

mana_based([alistar, amumu, blitzcrank, braum, chogath, darius, diana, ekko, evelynn, fiora, fizz, galio, gangplank, gragas, hecarim, illaoi, irelia,
            jarvan_iv, jax, kassadin, kayle, khazix, leona, malphite, maokai, master_yi, nasus, nautilus, nocturne, nunu, olaf, pantheon, poppy, rammus,
            sejuani, shaco, singed, sion, skarner, tahm_kench, talon, taric, trundle, udyr, vi, volibear, warwick, wukong, xin_zhao, yorick, ahri,
            anivia, annie, ashe, aurelion_sol, azir, bard, brand, caitlyn, cassiopeia, corki, draven, elise, ezreal, fiddlesticks, graves, heimerdinger,
            janna, jayce, jhin, jinx, kalista, karma, karthus, kindred, kogmaw, leblanc, lissandra, lucian, lulu, lux, malzahar, miss_fortune, morgana,
            nami,nidalee, orianna, quinn, ryze, sivir, sona, soraka, swain, syndra, taliyah, teemo, thresh, tristana, twisted_fate, twitch, urgot, varus,
            vayne, veigar, velkoz,viktor,xerath,ziggs,zilean,zyra]).


%rules----
is_champion(X):- (melee(C), member(X,C)); (ranged(C), member(X,C)).
is_assassin(X):- assassin(C), member(X,C).
is_fighter(X):- fighter(C), member(X,C).
is_mage(X):- mage(C), member(X,C).
is_support(X):- support(C), member(X,C).
is_tank(X):- tank(C), member(X,C).
is_marksman(X):- marksman(C), member(X,C).
is_melee(X):- melee(C), member(X,C).
is_ranged(X):- ranged(C), member(X,C).
is_jungle(X):- jungle(C), member(X,C).
is_stealth(X):- stealth(C), member(X,C).
is_health_based(X):- health_based(C), member(X,C).
is_energy_based(X):- energy_based(C), member(X,C).
is_fury_based(X):- fury_based(C), member(X,C).
is_no_resource_based(X):- no_resource_based(C), member(X,C).
is_mana_based(X):- mana_based(C), member(X,C).

assassin_and_fighter:- assassin(A), fighter(F), intersection(A,F,C), write(C).
assassin_and_mage:- assassin(A), mage(M), intersection(A,M,C), write(C).
assassin_and_marksman:- assassin(A), marksman(MM), intersection(A,MM,C), write(C).
assassin_and_melee:- assassin(A), melee(ME), intersection(A,ME,C), write(C).
assassin_and_ranged:- assassin(A), ranged(R), intersection(A,R,C), write(C).
assassin_and_jungle:- assassin(A), jungle(J), intersection(A,J,C), write(C).
assassin_and_stealth:- assassin(A), stealth(ST), intersection(A,ST,C), write(C).
assassin_and_energy:- assassin(A), energy_based(E), intersection(A,E,C), write(C).
assassin_and_fury:- assassin(A), fury_based(FU), intersection(A,FU,C), write(C).
assassin_and_no_resource:- assassin(A), no_resource_based(N), intersection(A,N,C), write(C).
assassin_and_mana:- assassin(A), mana_based(MA), intersection(A,MA,C), write(C).

fighter_and_mage:- fighter(F), mage(M), intersection(F,M,C), write(C).
fighter_and_support:- fighter(F), support(S), intersection(F,S,C), write(C).
fighter_and_tank:- fighter(F), tank(T), intersection(F,T,C), write(C).
fighter_and_marksman:- fighter(F), marksman(MM), intersection(F,MM,C), write(C).
fighter_and_melee:- fighter(F), melee(ME), intersection(F,ME,C), write(C).
fighter_and_ranged:- fighter(F), ranged(R), intersection(F,R,C), write(C).
fighter_and_jungle:- fighter(F), jungle(J), intersection(F,J,C), write(C).
fighter_and_stealth:- fighter(F), stealth(ST), intersection(F,ST,C), write(C).
fighter_and_health:- fighter(F), health_based(H), intersection(F,H,C), write(C).
fighter_and_energy:- fighter(F), energy_based(E), intersection(F,E,C), write(C).
fighter_and_fury:- fighter(F), fury_based(FU), intersection(F,FU,C), write(C).
fighter_and_no_resource:- fighter(F), no_resource_based(N), intersection(F,N,C), write(C).
fighter_and_mana:- fighter(F), mana_based(MA), intersection(F,MA,C), write(C).

mage_and_support:- mage(M), support(S), intersection(M,S,C), write(C).
mage_and_tank:- mage(M), tank(T), intersection(M,T,C), write(C).
mage_and_marksman:- mage(M), marksman(MM), intersection(M,MM,C), write(C).
mage_and_melee:- mage(M), melee(ME), intersection(M,ME,C), write(C).
mage_and_ranged:- mage(M), ranged(R), intersection(M,R,C), write(C).
mage_and_jungle:- mage(M), jungle(J), intersection(M,J,C), write(C).
mage_and_stealth:- mage(M), stealth(ST), intersection(M,ST,C), write(C).
mage_and_health:- mage(M), health_based(H), intersection(M,H,C), write(C).
mage_and_energy:- mage(M), energy_based(E), intersection(M,E,C), write(C).
mage_and_no_resource:- mage(M), no_resource_based(N), intersection(M,N,C), write(C).
mage_and_mana:- mage(M), mana_based(MA), intersection(M,MA,C), write(C).

support_and_tank:- support(S), tank(T), intersection(S,T,C), write(C).
support_and_marksman:- support(S), marksman(MM), intersection(S,MM,C), write(C).
support_and_melee:- support(S), melee(ME), intersection(S,ME,C), write(C).
support_and_ranged:- support(S), ranged(R), intersection(S,R,C), write(C).
support_and_jungle:- support(S), jungle(J), intersection(S,J,C), write(C).
support_and_mana:- support(S), mana_based(MA), intersection(S,MA,C), write(C).

tank_and_melee:- tank(T), melee(ME), intersection(T,ME,C), write(C).
tank_and_ranged:- tank(T), ranged(R), intersection(T,R,C), write(C).
tank_and_jungle:- tank(T), jungle(J), intersection(T,J,C), write(C).
tank_and_stealth:- tank(T), stealth(ST), intersection(T,ST,C), write(C).
tank_and_health:- tank(T), health_based(H), intersection(T,H,C), write(C).
tank_and_energy:- tank(T), energy_based(E), intersection(T,E,C), write(C).
tank_and_fury:- tank(T), fury_based(FU), intersection(T,FU,C), write(C).
tank_and_no_resource:- tank(T), no_resource_based(N), intersection(T,N,C), write(C).
tank_and_mana:- tank(T), mana_based(MA), intersection(T,MA,C), write(C).

marksman_and_melee:- marksman(M), melee(ME), intersection(M,ME,C), write(C).
marksman_and_ranged:- marksman(M), ranged(R), intersection(M,R,C), write(C).
marksman_and_jungle:- marksman(M), jungle(J), intersection(M,J,C), write(C).
marksman_and_stealth:- marksman(M), stealth(ST), intersection(M,ST,C), write(C).
marksman_and_energy:- marksman(M), energy_based(E), intersection(M,E,C), write(C).
marksman_and_mana:- marksman(M), mana_based(MA), intersection(M,MA,C), write(C).

melee_and_ranged:- melee(ME), ranged(R), intersection(ME,R,C), write(C).
melee_and_jungle:- melee(ME), jungle(J), intersection(ME,J,C), write(C).
melee_and_stealth:- melee(ME), stealth(ST), intersection(ME,ST,C), write(C).
melee_and_health:- melee(ME), health_based(H), intersection(ME,H,C), write(C).
melee_and_energy:- melee(ME), energy_based(E), intersection(ME,E,C), write(C).
melee_and_fury:- melee(ME), fury_based(FU), intersection(ME,FU,C), write(C).
melee_and_no_resource:- melee(ME), no_resource_based(N), intersection(ME,N,C), write(C).
melee_and_mana:- melee(ME), mana_based(MA), intersection(ME,MA,C), write(C).

ranged_and_jungle:- ranged(R), jungle(J), intersection(R,J,C), write(C).
ranged_and_stealth:- ranged(R), stealth(ST), intersection(R,ST,C), write(C).
ranged_and_health:- ranged(R), health_based(H), intersection(R,H,C), write(C).
ranged_and_energy:- ranged(R), energy_based(E), intersection(R,E,C), write(C).
ranged_and_fury:- ranged(R), fury_based(FU), intersection(R,FU,C), write(C).
ranged_and_mana:- ranged(R), mana_based(MA), intersection(R,MA,C), write(C).

jungle_and_stealth:- jungle(J), stealth(ST), intersection(J,ST,C), write(C).
jungle_and_health:- jungle(J), health_based(H), intersection(J,H,C), write(C).
jungle_and_energy:- jungle(J), energy_based(E), intersection(J,E,C), write(C).
jungle_and_fury:- jungle(J), fury_based(FU), intersection(J,FU,C), write(C).
jungle_and_mana:- jungle(J), mana_based(MA), intersection(J,MA,C), write(C).

stealth_and_energy:- stealth(ST), energy_based(E), intersection(ST,E,C), write(C).
stealth_and_fury:- stealth(ST), fury_based(FU), intersection(ST,FU,C), write(C).
stealth_and_mana:- stealth(ST), mana_based(MA), intersection(ST,MA,C), write(C).


%----Help Menu----
help:- writeln("is_champion(X). : takes argument X and determines if it's a League of League champion"),
       writeln("is_assassin(X). : takes argument X and determines if it's an assassin type champion"),
       writeln("is_fighter(X). : takes argument X and determines if it's a fighter type champion"),
       writeln("is_mage(X). : takes argument X and determines if it's a mage type champion"),
       writeln("is_support(X). : takes argument X and determines if it's a support type champion"),
       writeln("is_tank(X). : takes argument X and determines if it's a tank type champion"),
       writeln("is_marksman(X). : takes argument X and determines if it's a marksman type champion"),
       writeln("is_melee(X). : takes argument X and determines if it's a melee attack champion"),
       writeln("is_ranged(X). : takes argument X and determines if it's a ranged attack champion"),
       writeln("is_jungle(X). : takes argument X and determines if it's a champion that can jungle"),
       writeln("is_stealth(X). : takes argument X and determines if it's a champion with stealth abilities"),
       writeln("is_health_based(X). : takes argument X and determines if it's a champion that uses their health as a resouce"),
       writeln("is_energy_based(X). : takes argument X and determines if it's a champion that uses energy as a resouce"),
       writeln("is_fury_based(X). : takes argument X and determines if it's a champion that uses fury as a resouce"),
       writeln("is_no_resource_based(X). : takes argument X and determines if it's a champion that doesn't use a resouce"),
       writeln("is_mana_based(X). : takes argument X and determines if it's a champion that uses mana as a resouce"),
       writeln("assassin_and_fighter. : prints a list of champions that are both assassin and fighter"),
       writeln("assassin_and_mage. : prints a list of champions that are both assassin and mage"),
       writeln("assassin_and_marksman. : prints a list of champions that are both assassin and marksman"),
       writeln("assassin_and_melee. : prints a list of champions that are both assassin and melee"),
       writeln("assassin_and_ranged. : prints a list of champions that are both assassin and ranged"),
       writeln("assassin_and_jungle. : prints a list of champions that are both assassin and jungle"),
       writeln("assassin_and_stealth. : prints a list of champions that are both assassin and stealth"),
       writeln("assassin_and_energy. : prints a list of champions that are both assassin and energy based"),
       writeln("assassin_and_fury. : prints a list of champions that are both assassin and fury based"),
       writeln("assassin_and_no_resource. : prints a list of champions that are both assassin and no resource based"),
       writeln("assassin_and_mana. : prints a list of champions that are both assassin and mana based"),
       writeln("fighter_and_mage. : prints a list of champions that are both fighter and mage"),
       writeln("fighter_and_support. : prints a list of champions that are both fighter and support"),
       writeln("fighter_and_tank. : prints a list of champions that are both fighter and tank"),
       writeln("fighter_and_marksman. : prints a list of champions that are both fighter and marksman"),
       writeln("fighter_and_melee. : prints a list of champions that are both fighter and melee"),
       writeln("fighter_and_ranged. : prints a list of champions that are both fighter and ranged"),
       writeln("fighter_and_jungle. : prints a list of champions that are both fighter and jungle"),
       writeln("fighter_and_stealth. : prints a list of champions that are both fighter and stealth"),
       writeln("fighter_and_health. : prints a list of champions that are both mage and health based"),
       writeln("fighter_and_energy. : prints a list of champions that are both fighter and energy based"),
       writeln("fighter_and_fury. : prints a list of champions that are both fighter and fury based"),
       writeln("fighter_and_no_resource. : prints a list of champions that are both fighter and no resource based"),
       writeln("fighter_and_mana. : prints a list of champions that are both fighter and mana based"),
       writeln("mage_and_support. : prints a list of champions that are both mage and support"),
       writeln("mage_and_tank. : prints a list of champions that are both mage and tank"),
       writeln("mage_and_marksman. : prints a list of champions that are both mage and marksman"),
       writeln("mage_and_melee. : prints a list of champions that are both mage and melee"),
       writeln("mage_and_ranged. : prints a list of champions that are both mage and ranged"),
       writeln("mage_and_jungle. : prints a list of champions that are both mage and jungle"),
       writeln("mage_and_stealth. : prints a list of champions that are both mage and stealth"),
       writeln("mage_and_health. : prints a list of champions that are both mage and health based"),
       writeln("mage_and_energy. : prints a list of champions that are both mage and energy based"),
       writeln("mage_and_no_resource. : prints a list of champions that are both mage and no resource based"),
       writeln("mage_and_mana. : prints a list of champions that are both mage and mana based"),
       writeln("support_and_tank. : prints a list of champions that are both support and tank"),
       writeln("support_and_marksman. : prints a list of champions that are both support and marksman"),
       writeln("support_and_melee. : prints a list of champions that are both support and melee"),
       writeln("support_and_ranged. : prints a list of champions that are both support and ranged"),
       writeln("support_and_jungle. : prints a list of champions that are both support and jungle"),
       writeln("support_and_mana. : prints a list of champions that are both support and mana based"),
       writeln("tank_and_melee. : prints a list of champions that are both tank and melee"),
       writeln("tank_and_ranged. : prints a list of champions that are both tank and ranged"),
       writeln("tank_and_jungle. : prints a list of champions that are both tank and jungle"),
       writeln("tank_and_stealth. : prints a list of champions that are both tank and stealth"),
       writeln("tank_and_health. : prints a list of champions that are both tank and health based"),
       writeln("tank_and_energy. : prints a list of champions that are both tank and energy based"),
       writeln("tank_and_fury. : prints a list of champions that are both tank and fury based"),
       writeln("tank_and_no_resource. : prints a list of champions that are both tank and no resource based"),
       writeln("tank_and_mana. : prints a list of champions that are both tank and mana based"),
       writeln("marksman_and_melee. : prints a list of champions that are both marksman and melee"),
       writeln("marksman_and_ranged. : prints a list of champions that are both marksman and ranged"),
       writeln("marksman_and_jungle. : prints a list of champions that are both marksman and jungle"),
       writeln("marksman_and_stealth. : prints a list of champions that are both marksman and stealth"),
       writeln("marksman_and_energy. : prints a list of champions that are both marksman and energy based"),
       writeln("marksman_and_mana. : prints a list of champions that are both marksman and mana based"),
       writeln("melee_and_ranged. : prints a list of champions that are both melee and ranged"),
       writeln("melee_and_jungle. : prints a list of champions that are both melee and jungle"),
       writeln("melee_and_stealth. : prints a list of champions that are both melee and stealth"),
       writeln("melee_and_health. : prints a list of champions that are both melee and health based"),
       writeln("melee_and_energy. : prints a list of champions that are both melee and energy based"),
       writeln("melee_and_fury. : prints a list of champions that are both melee and fury based"),
       writeln("melee_and_no_resource. : prints a list of champions that are both melee and no resource based"),
       writeln("melee_and_mana. : prints a list of champions that are both melee and mana based"),
       writeln("ranged_and_jungle. : prints a list of champions that are both ranged and jungle"),
       writeln("ranged_and_stealth. : prints a list of champions that are both ranged and stealth"),
       writeln("ranged_and_health. : prints a list of champions that are both ranged and health based"),
       writeln("ranged_and_energy. : prints a list of champions that are both ranged and energy based"),
       writeln("ranged_and_fury. : prints a list of champions that are both ranged and fury based"),
       writeln("ranged_and_mana. : prints a list of champions that are both ranged and mana based"),
       writeln("jungle_and_stealth. : prints a list of champions that are both jungle and stealth"),
       writeln("jungle_and_health. : prints a list of champions that are both jungle and health based"),
       writeln("jungle_and_energy. : prints a list of champions that are both jungle and energy based"),
       writeln("jungle_and_fury. : prints a list of champions that are both jungle and fury based"),
       writeln("jungle_and_mana. : prints a list of champions that are both jungle and mana based"),
       writeln("stealth_and_energy. : prints a list of champions that are both stealth and energy based"),
       writeln("stealth_and_fury. : prints a list of champions that are both stealth and fury based"),
       writeln("stealth_and_mana. : prints a list of champions that are both stealth and mana based").
%-----------------
