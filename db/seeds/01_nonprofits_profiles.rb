# ************CREATE NONPROFITS******************
#
# ===DUO FOR A JOB===
name = 'Duo for a Job'
sector = 'Insertion socio-professionnelle'
description= '<p>Duo for a Job organise du coaching intergénérationnel pour l\'emploi en mettant en contact à Bruxelles des jeunes chercheurs d\'emploi issus de l\'immigration (‘mentees’) avec des professionnels (pré)retraités bénévoles (‘mentors’), idéalement du même secteur d\'activité, afin que ces derniers les soutiennent et les encadrent dans leur recherche d\'emploi.</p>
<p>Objectifs de l’association :
<ul>
<li>Favoriser la mise à l\'emploi des jeunes issus de l\'immigration à Bruxelles en proposant une démarche complémentaire aux initiatives publiques pour l\'emploi</li>
<li>Encourager les rencontres interculturelles et intergénérationnelles</li>
<li>Recréer du lien social et des solidarités de proximité</li>
<li>Encourager le vieillissement actif</li>
<li>Sensibiliser la population à la discrimination à l\'embauche et à toutes autres formes d\'inégalités d\'accès au marché du travail</li>
</ul>
</p>'
website = 'http://www.duoforajob.be'
email = 'contact@duoforajob.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.721427540532!2d4.358578551119553!3d50.83632366726613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c48891c479f3%3A0x9a31f2db1f4aa2f!2sDUO+for+a+JOB!5e0!3m2!1sen!2sbe!4v1458671725843" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-duo-for-a-job.jpg'
address = 'Rue de Stassart, 48, 1050 Ixelles'
neighbourhood = '1050 Ixelles'
phone_number = '02 203 02 31'


duoforajob = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===LE MAITRE MOT===
name = 'Le Maître Mot'
sector = 'Education'
description ='<p><emph>\'Ce sont les petits ruisseaux qui font les grandes rivières\'</emph></p>
<p>Depuis 20 ans, l\'asbl le Maître Mot travaille avec les enfants et les adultes autour de la langue française, du plaisir des mots, de lire et d\'inventer afin de les aider à trouver leur place dans la société.</p>
<p>L’asbl est organisée autour de 3 piliers d’actions :</p>
<ul>
<li>Français en Poche:
<ul>
<li>Cours de français langue étrangère pour adultes  ( FLE )</li>
<li>Atelier du vendredi: Table de conversation - Initiation à l\'informatique  -  Atelier citoyen - Atelier Livre</li>
</ul>
</li>
<li>Plaisir d\'Apprendre (école de devoirs):
<ul>
<li>Atelier lecture du lundi </li>
<li>Soutien scolaire</li>
<li>Atelier thématique du mercredi</li>
<li>Stage de vacances</li>
</ul>
</li>
<li>Espace Livres
<ul>
<li>Actions au sein du Maître Mot (interaction avec Français en Poche et Plaisir d\'Apprendre):</li>
<li>Actions en dehors du Maître Mot avec différents partenaires (Bibliothèque d\'Ixelles, Musée d\'Ixelles, Ecoles, ATD Quart Monde, etc.)</li>
</ul>
</li>
</ul>'
website = 'http://www.lemaitremot.be'
email = 'coordination@lemaitremot.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.7433426304024!2d4.37513655111958!3d50.83591776729554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c497689e6335%3A0x176b7465d7c2c92!2sChauss%C3%A9e+de+Wavre+282%2C+1000+Ixelles!5e0!3m2!1sen!2sbe!4v1458767883463" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-le-maitre-mot.jpg'
address = 'Chaussée de Wavre 282, 1050 Ixelles'
phone_number = '02 649 05 15'
neighbourhood = '1050 Ixelles'

lemaitremot = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

#==== PAROLES D'ADOS ===
name = 'Paroles d\'Ados'
sector = 'Aide à la jeunesse'
description ='<p>Site internet, gratuit, anonyme et professionnel mis à la disposition des ados de 10 à 18 ans.</p>
<p>Les ados ont la possibilité de poser leurs questions librement et en tout anonymat. Notre équipe s’efforce d’y répondre endéans les 72 heures. Toutes les questions sont traitées par des spécialistes de diverses disciplines : pédopsychiatre, psychologue, médiateur, gynécologue, avocat, médecin, AS…</p>
<p>« Sois capitaine de ta vie » est le message que l’on communique aux jeunes à travers différents espaces d’information, de discussions, de guidance, de prévention et ce dans le respect de chacun. Les principaux thèmes abordés sont le harcèlement, le suicide, l’homosexualité, la scarification, la scolarité, la contraception, le mal-être, etc.</p>
<p>En 2014: 31000 utilisateurs</p>'
website = 'http://www.parolesdados.be'
email = 'marinodewulf@hotmail.com'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.4921186841298!2d4.4123679510158755!3d50.84057066695856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3db56b27ecc1d%3A0x72808f52f5b2e91c!2sAvenue+de+Broqueville+116%2C+1200+Woluwe-Saint-Lambert!5e0!3m2!1sen!2sbe!4v1458772895037" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-paroles-d-ados.png'
phone_number = ''
neighbourhood = '1970 Wezembeek-Oppem'
address = 'Rue du ruisseau, 10, 1970 Wezembeek-Oppem'

parolesdados = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

#==== OPERATION THERMOS ===
name = 'Opération Thermos'
sector = 'Soutien aux sans-abris'
description ='<p>L’opération thermos est née en décembre 1987 à l’initiative d’animateurs scouts. Sensibilisés par la détresse des clochards, rencontrés à la descente du train, ils s’attaquèrent à leur apporter chaque soir dans les gares des thermos de cafés et des sandwichs.</p>
  <p>Le lendemain, ils recommencèrent et puis toute la semaine,tout le mois.
En janvier, dépassés par l’ampleur des besoins et fatigués par la lourdeur de leur tâche, ils firent appel via les médias à d’autres bénévoles. C’est ainsi que se constituèrent plusieurs équipes.
Mais ils ne peuvent faire cela tout seuls, ils demandent de l’aide…</p>
<p>Les équipes se créent et les repas s’agrandissent. Les plus démunis viennent de plus en plus nombreux. Les Thermos de café distribuent des litres de café bien chaud.</p>
<p>Aujourd’hui, ce sont 30 équipes qui se succèdent pour offrir un repas aux sans-abris de la gare centrale dès le 1er novembre et ce jusqu’au 30 avril. Chaque équipe fonctionne avec ses propres moyens.
L’asbl n’est pas subsidiée et donc ne peut compter que sur les dons des particuliers et entreprises qui adhèrent à la philosophie de l’Opération Thermos.</p>'
website = 'http://www.operationthermos.be'
mail = 'info@operationthermos.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2521.986461951363!2d4.4160189511181205!3d50.794359470305366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3dadb5cac84ff%3A0xd129e7e9c1d71146!2sOp%C3%A9ration+Thermos+asbl!5e0!3m2!1sen!2sbe!4v1458802957385" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-operation-thermos.png'
phone_number = ''
address = ''
neighbourhood = '1000 Bruxelles'

operationthermos = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

#==== 24H01 ===
name = '24h01'
sector = 'Presse indépendante'
description ='<p>24h01 (lire Vingt-quatre heures une) est une revue semestrielle de
pages et sans pub qui traite de sujets de société sous forme de textes
longs, d\'illustrations, de photographies et de BD. Ce sont des histoires
vraies qui vous emportent, des récits de vie un peu fous comme l\'esprit
belge, pour une info intense et colorée que vous ne trouverez nulle
part ailleurs.</p>
<p>24h01 en quelques chiffres :</p>
<ul>
<li>14.000 exemplaires vendus</li>
<li>6 numéros publiés</li>
<li>40 contributeurs par numéro</li>
<li>95 points de vente en France et en Belgique</li>
<li>85 articles web/papier, émissions radio ou télé qui en parlent</li>
<li>147 écoles secondaires qui l\'utilisent comme outil</li>
</ul>'
website = 'http://www.24h01.be'
email = 'info@24h01.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2526.00128237844!2d4.511753751011358!3d50.719915375692715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c17e77c929bba3%3A0xb8a8cc2009cd62de!2s24h01!5e0!3m2!1sen!2sbe!4v1458848889646" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-24h01.png'
address = 'Avenue Franklin Roosevelt, 104, 1330 Rixensart'
phone_number = '+32 (0)472 81 59 79'
neighbourhood = '1330 Rixensart'

_24h01 = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

#==== VPT ===
name = 'Vacances pour Tous'
sector = 'Aide à la jeunesse'
description ='<p>A côté des professionnels de la (ré)insertion tels que sont les CPAS, les Maisons d\'enfants, nous proposons des vacances avec l\'espoir d\'aider de plus en plus d\'enfants blessés dans leur vie affective et sociale et de les sortir de leur quotidien. Bénévolat, écoute, enthousiasme, échanges, espaces de réflexion sont les principes essentiels de notre approche.</p>
<p>Les enfants qui viennent à nos camps et week-ends sont issus de milieux défavorisés, enfants du juge ou viennent de maisons d\'accueil. Ils sont de tous les horizons sans distinction d\'origines ou de cultures,...</p>
<p>Témoignage de Myriam : "Les camps VPT sont trop chouette parce que je vois des poules, des vaches,... et je m\'amuse super bien avec les autres enfants". Ils s\'épanouissent très bien dans les environnements où nous les emmenons et s\'amusent comme des fous aussi bien avec les enfants qu\'avec les animateurs bénévoles.</p>
<p>Un simple mail ou coup de téléphone et votre enfant sera pris en charge par notre équipe de bénévole. Nous avons à coeur de partager des valeurs et des instants magiques avec eux. Ce que nous leur offrons, ils nous le rendent souvent en mille. Quel animateur n\'a pas eu à un moment donné, durant son camp, ce genre de discussion : "Tu sais Bambi, je n\'ai pas de Papa. Hé bien moi, j\'aimerais bien que tu sois mon papa."</p>'
website = 'http://www.vpt.be'
email = 'info@vpt.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.996423329536!2d4.4344723510155335!3d50.831230167635304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3db692fa6c9bb%3A0x54444a7a53f4d51b!2sAvenue+Edmond+Parmentier+19%2C+1150+Woluwe-Saint-Pierre!5e0!3m2!1sen!2sbe!4v1458855326253" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'logo-vpt.jpg'
phone_number = '0471048353'
address = 'Avenue E. Parmentier, 19 boîte 12, 1150 Woluwé-Saint-Pierre'
neighbourhood = '1150 Woluwé-Saint-Pierre'

vpt = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===Schola ULB===

name = 'Schola ULB'
sector = 'Education'
description= '<p>Schola ULB est une association sans but lucratif qui mène des actions en éducation, en particulier dans le domaine du soutien scolaire, en gérant quotidiennement le Programme Tutorat,  et de l’innovation, en organisant annuellement le Forum des Innovations en Éducation.</p>
<p><strong>Programme Tutorat :</strong></p>
<p>Schola ULB est une association sans but lucratif qui mène des actions en éducation, en particulier dans le domaine du soutien scolaire, en gérant quotidiennement le Programme Tutorat,  et de l’innovation, en organisant annuellement le Forum des Innovations en Éducation. En 25 ans, le Programme Tutorat a permis à près de 26 000 élèves d’être aidés par quelque 2600 étudiants-tuteurs. Il est aujourd’hui présent dans 1 école sur 3 à Bruxelles, étant ainsi le plus important programme de soutien scolaire.</p>
<p><strong>Forum des innovation en Education :</strong></p>
<p>Ce grand rendez-vous annuel du monde de l’éducation présente des pratiques innovantes mises en place dans les écoles primaires et secondaires de la Fédération Wallonie-Bruxelles. Avec 7 éditions du Forum au compteur depuis 2006, Schola ULB a recensé près de 1000 projets obtenant ainsi la plus grande base de données en Europe de pratiques innovantes.</p>
</p>'
website = 'http://www.schola-ulb.be'
email = 'info@schola-ulb.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2521.037080567775!2d4.3804282160639545!3d50.811951669131254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4dc41f60d1b%3A0xdc5a1254495e54cd!2sSchola+ULB+Asbl!5e0!3m2!1sfr!2sbe!4v1460282957802" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/qs14tsesvdztz0d/Vq9oDrZ2_400x400.jpeg?dl=0'
address = 'Avenue F.D. Roosevelt, 50'
neighbourhood = '1050 Bruxelles'
phone_number = '02 650 36 44'


scholaulb = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===Réseau de Consommateurs Responsables (RCR)===

name = 'Réseau de Consommateurs Responsables'
sector = 'Consommation responsable'
description= '<p>L’asbl Réseau de Consommateurs Responsables (RCR) fait la promotion active d’initiatives locales, collectives et autogérées de « consommation alternative »,
qui permettent de remettre l’humain et l’environnement au centre des préoccupations et de reconstruire un système viable sur le long terme.</p>
<p><strong> Les trois axes d’action principaux </strong></p>
<ul>
<li>Aide à la création de nouvelles initiatives citoyennes de consommation alternative, soutien et renforcement</li>
<li>Sensibilisation et information du grand public</li>
<li>Mise en réseau des initiatives citoyennes</li>
</ul>
<p><strong>Actuellement, les initiatives promues sont :</strong>
<ul>
<li>Les sytèmes d\'échanges locaux, les réseaux d’échanges réciproques de savoirs, les potagers collectifs, les donneries, les groupes d’achats alimentaires, les Repair Cafés</li>
</ul>'
website = 'http://www.asblrcr.be'
email = 'info@asblrcr.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2539.785515863631!2d4.868177216055592!3d50.463718594289226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c19912a98dc035%3A0x42ed2d188eea6418!2sPlace+de+l&#39;Ilon+13%2C+5000+Namur!5e0!3m2!1sfr!2sbe!4v1460285435911" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/66i3bapvr3474b9/rcr.png?dl=0'
address = 'Place de l\'Ilon, 13'
neighbourhood = '5000 Namur'
phone_number = '081 22 69 50'


rcr = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

name = 'Muziekpublique'
sector = 'Culture'
description= '<p>Muziekpublique est une asbl qui promeut et défend les musiques du monde, plus particulièrement celles qui ont un lien avec les musiques acoustiques, traditionnelles, populaires, folk, métissées, classiques, jazz et "nu:trad". Ce travail se réalise autours de quatre axes : </p>
<ul>
<li>L’organisation de concerts</li>
<li>L\'organisation de cours</li>
<li>La production de cd</li>
<li>La production des créations.</li>
</ul>
<p>Il est difficile de mettre un nom sur la stylistique des projets musicaux de l’asbl, on peut néanmoins aisément reconnaître une politique culturelle forte. L’idée étant de défendre des groupes dont la musique ne contribue pas à l’exotisation et à la stigmatisation des "cultures". L’idée étant aussi d’inviter d’excellents instrumentistes et compositeurs, peu importe qu’ils soient connus ou pas. L’association s’impose une couverture large des stylistiques tout en essayant de décloisonner son public.</p>
<p>Outre ses collaborations internationales, Muziekpublique travaille activement sur le réseau belge des musiques du monde. Pour le consolider et par souci de proposer une offre complémentaire aux académies, l’asbl propose une quarantaine de cours d’instruments et de danse. L’asbl met aussi ses infrastructures à disposition pour des résidences, des créations, et des enregistrements.
</p>'
website = 'http://www.muziekpublique.be'
email = 'info@muziekpublique.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.615467722677!2d4.360114116099611!3d50.83828616722337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c486148fdc03%3A0x52f5de16cdb03f3a!2sSquare+du+Bastion!5e0!3m2!1sfr!2sbe!4v1460286767792" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/z0bd9q4d39xanlj/Muziekpublique.jpg?dl=0'
address = 'Galerie de la Porte de Namur, 3 Square du Bastion'
neighbourhood = '1050 Bruxelles'
phone_number = '02 217 26 00'


muziekpublique = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===ONA===

name = 'Oeuvre Nationale des Aveugles'
sector = 'Handicap'
description= '
<p>L’ONA asbl a été créée en 1922 et couvre la partie francophone de la Belgique.
Elle agit pour l’autonomie des personnes déficientes visuelles et leur pleine participation à la vie sociale.
Grâce à ses antennes locales, l’association propose des activités et des services de proximité aux personnes déficientes visuelles.
Enfin, l’ONA réalise un travail de sensibilisation auprès de la population et des pouvoirs publics sur les différentes problématiques du handicap visuel.
</p>
<p><strong>Quelques actions:</strong></p>
<ul>
<li>Une des missions premières de l’ONA est d’accueillir, d’écouter, d’informer et d’accompagner les personnes aveugles et malvoyantes</li>
<li>Notre équipe, composée de psychologues, d’éducateurs, de pédagogues et logopèdes, accompagne les jeunes qui ont fait le choix de suivre tout ou partie de leur scolarité dans l’enseignement ordinaire</li>
<li> Notre centre de documentation dispose de nombreuses publications consultables sur place</li>
<li>Notre bibliothèque est ouverte à toute personne se trouvant dans l’incapacité de lire un livre « ordinaire »</li>
<li>Le centre de transcription transcrit et adapte une multitude de documents pour les rendre accessibles aux personnes aveugles et malvoyantes</li>
</ul>
'
website = 'http://www.ona.be/'
email = 'info@ona.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13714.240312981196!2d4.4308238577750485!3d50.839747795472796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3db671bc9130f%3A0x5a9f7442977097e9!2sBoulevard+de+la+Woluwe+34%2C+1150+Woluwe-Saint-Pierre%2C+Belgique!5e0!3m2!1sfr!2sus!4v1460295563849" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/lyyc51yvjkwq6hu/ONA.jpg?dl=0'
address = 'Boulevard de la Woluwe 34 bte 1'
neighbourhood = '1200 Bruxelles'
phone_number = '02 241 65 68 '


ona = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)


# ===Repair Café===

name = 'Repair Café'
sector = 'Consommation responsable'
description= '
<p>Réparer ensemble, c’est l’idée des Repair Cafés ; des rencontres ouvertes à tous dont l’entrée est libre. Outils et matériel sont disponibles là où est organisé le Repair Café, pour faire toutes les réparations possibles et imaginables. Vêtements, meubles, appareils électriques, bicyclettes, vaisselle, objets utiles, jouets, et autres. Des experts en la matière sont aussi au rendez-vous, électriciens, couturières, menuisiers, réparateurs de bicyclettes.</p>
<p>On y apporte les choses en mauvais état qu’on a chez soi. Et on se met à l’ouvrage avec les gens du métier. Il y a toujours quelque chose à apprendre au Repair Café. Qui n’a rien à réparer, prend un café ou un thé. Ou aide à réparer quelque chose appartenant à un autre. On peut toujours aussi y trouver des idées à la table de lecture, proposant des ouvrages sur la réparation et le bricolage.</p>
<p>Le Repair Café apprend aux gens à voir autrement ce qu’ils possèdent, à en redécouvrir la valeur. Le Repair Café favorise un changement de mentalité, qui est la condition première à une société durable construite par tous.</p>
'
website = 'http://www.repaircafe.be/'
email = 'contact@repaircafe.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d42720.16820446179!2d4.308434275510801!3d50.828305418319005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4873e07a55f%3A0xc13c085608dd5d!2s1000+Bruxelles%2C+Belgique!5e0!3m2!1sfr!2sus!4v1460298351452" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/2uvzeuufvnogp5u/repair-cafe.png?dl=0'
address = 'Bruxelles'
neighbourhood = 'Bruxelles'
phone_number = ''


repaircafé = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===Fovento===

name = 'Fovento'
sector = 'Citoyenneté'
description= '
<p>Fovento est cette super plate-forme web de bénévolat de compétences sur laquelle tu navigues actuellement ! On espère du coup que tu sais de quoi il s\'agit :)</p>
'
website = 'http://www.fovento.be/'
email = 'contact@fovento.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2520.2191264327516!2d4.370610315676772!3d50.82710496803425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c493465074db%3A0x7739f8c4fca893b8!2sPlace+Eug%C3%A8ne+Flagey+18%2C+1050+Ixelles%2C+Belgique!5e0!3m2!1sfr!2sus!4v1460299341931" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/1rj4oepx8i3gerz/fovlogomissions.png?dl=0'
address = 'Bruxelles'
neighbourhood = 'Bruxelles'
phone_number = ''


fovento = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)

# ===BruSel===

name = 'BruSEL'
sector = 'Citoyenneté'
description= '<p>
    «Système d’Echange Local» sur Bruxelles 19 communes et ses environs.
</p>
<p>
    Un Sel est une association dont les membres échangent entre eux des services, des savoirs et/ou des biens dans le désir d’évoluer vers plus de citoyenneté
et de solidarité. Les échanges sont mesurés dans une unité qui se réfère au temps, (les « Blés, Bonheurs, Grains, Flheures, Radis …. »). Au BruSEL,    <em>1 heure de service = 60 BLEs</em>.
</p>
<p>
    Pour certains, le SEL permet de suivre un cours, de donner un coup de main, de donner ou de partager des objets dans un cadre convivial sans toucher à son
    porte-monnaie. Pour d’autres, le SEL répond à une philosophie et est un choix de vie.
</p>
<p>
    L’expérience prouve que le SEL permet de rencontrer des nouvelles personnes qui partagent votre philosophie et qu’il encourage le don mais qui n’est pas
    destiné à répondre aux personnes qui attendent exclusivement de briser leur solitude.
</p>'
website = 'http://www.brusel.be/'
email = 'info@brusel.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d42720.16820446179!2d4.308434275510801!3d50.828305418319005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4873e07a55f%3A0xc13c085608dd5d!2s1000+Bruxelles%2C+Belgique!5e0!3m2!1sfr!2sus!4v1460298351452" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://dl.dropboxusercontent.com/s/1yf0rr2cd1meo6m/Brusel%20logo.jpg?dl=0'
address = 'Bruxelles'
neighbourhood = 'Bruxelles'
phone_number = '0475 375 009'


brusel = NonprofitProfile.create(name: name,
  sector: sector,
  description: description,
  website: website,
  email: email,
  map_frame: map_frame,
  neighbourhood: neighbourhood,
  phone_number: phone_number,
  logo: logo)
