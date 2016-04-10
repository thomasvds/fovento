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

name = 'Réseau de Consommateurs Responsables (RCR)'
sector = 'Consommation'
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
<li>Les sytèmes d\échanges locaux, les réseaux d’échanges réciproques de savoirs, les potagers collectifs, les donneries, les groupes d’achats alimentaires, les Repair Cafés</li>
</ul>'
website = 'http://www.asblrcr.be'
email = 'info@asblrcr.be'
map_frame = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2539.785515863631!2d4.868177216055592!3d50.463718594289226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c19912a98dc035%3A0x42ed2d188eea6418!2sPlace+de+l&#39;Ilon+13%2C+5000+Namur!5e0!3m2!1sfr!2sbe!4v1460285435911" width="100" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>'
logo = 'https://www.dl.dropboxusercontent.com/s/alzbiazs0xtqgdl/LOGO_ScholaULB2.png?dl=0'
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
