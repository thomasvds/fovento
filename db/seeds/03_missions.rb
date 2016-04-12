# NOTE: MISSION CANNOT BE MARKED AS STARTED W/O LOGBOOK AVAILABLE!!!

#=======DUO FOR A JOB============================
title = 'Rédaction d\'une convention de partenariat avec les entreprises'
skills = 'Droit, Stratégie'
status = '40_accomplished'
author = 'Thomas'
full_title = 'Rédaction d’une convention de partenariat standard avec les entreprises, concernant l’affectation partielle d’employés à un rôle de mentor Duo for a Job'
impact = 'Contribue à créer de nouveaux duos, menant à plus de cohésion sociale'
objectives = '<p>Parmi la variété de sources considérées et exploitées par Duo for a Job pour attirer de nouveaux mentors, les entreprises constituent une opportunité intéressante pour l’ASBL. Celles-ci peuvent en effet identifier de nouveaux mentors potentiels parmi leurs employés en fin de carrière. De plus, l’offre de Duo for a Job représente un atout pour les entreprises dans leur offre à leurs employés.</p>
<p>Pour ces raisons, Duo for a Job est pour l’instant en train d’explorer avec des entreprises la possibilité de mettre sur pied une forme de partenariat dans lequel l’ASBL serait rémunérée par l’entreprise pour chaque employé affecté partiellement à un rôle de mentor.</p>
<p>Des réflexions ont déjà été engagées sur la forme que pourrait prendre un tel partenariat, déjà défini dans ses grands axes. L’objectif de la mission est à présent de  détailler tous les aspects de ce partenariat et de les consigner dans une convention à valeur contractuelle.</p>
<p>Il est à noter que le périmètre de cette mission couvre la convention qui pourra exister entre Duo for a Job et une entreprise au sujet d’un ou plusieurs mentors. Le périmètre de cette mission ne couvre pas la relation contractuelle entre le mentor et son entreprise (dont la définition est à charge de l’entreprise), ni l’accord entre le mentor et Duo for a Job (couvert dans une charte séparée).</p>'
outcomes = '<li>Une convention de partenariat standard prête au partage avec les entreprises a été rédigée et validée avec Duo for a Job (format Word)</li>
<li>La convention de partenariat est robuste sur le plan stratégique : son contenu est en adéquation avec les ambitions et principes de Duo for a Job</li>
<li>La convention de partenariat est robuste sur le plan opérationnel : sa mise en œuvre est réaliste et sans équivoque en toutes circonstances raisonnablement envisageables</li>
<li>La convention de partenariat est robuste sur le plan légal : elle adhère aux législations en place et protège Duo for a Job durant son exécution</li>
<li>La convention de partenariat est robuste sur le plan financier : elle est conforme avec les objectifs d’autofinancement de Duo for a Job (note : l’ASBL ayant déjà procédé à un exercice de pricing du partenariat, cette partie relève plus du ‘challenging’ que du calcul à proprement parler)</li>'
suggested_start_date = 'Dès que possible, car Duo for a Job est présentement en contact avec des entreprises pour mettre en œuvre des premiers partenariats'
suggested_end_date = 'Mi-mars'
picture = 'picture-duo-for-a-job-1.png'
suggested_duration = 'Un demi-jour équivalent temps-plein'
suggested_format = 'Réunion de briefing, travail individuel du bénévole, réunion de clôture'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Duo for a Job'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Adrien").first
  )

# CREATE MISSIONS
title = 'Interprétariat arabe lors des inscriptions aux cours de français'
impact = 'Contribue à une meilleure intégration en facilitant l\'accès aux cours de français'
skills = 'Traduction'
picture = 'picture-le-maitre-mot-1.jpg'
full_title = 'Interprétariat oral arabe lors des sessions d’inscriptions aux cours de français'
objectives = '<p>Un des piliers d’action du Maître Mot est la tenue de cours de français langue étrangère (FLE). Par nature, la communication aux participants potentiels ne peut initialement pas se faire en français. Cela est particulièrement vrai lors de l’inscription aux cours, lorsqu’il s’agit d’orienter les participants vers les cours les plus adaptés.<p>
<p>Les membres de l’asbl peuvent déjà compter sur une solide base de connaissance de plusieurs langues (anglais, italien, espagnol…) pour parer à cette difficulté initiale. La langue arabe cependant n’est pas maîtrisée en interne, malgré sa prévalence chez les participants potentiels.<p>
<p>Pour lui permettre d’assurer au mieux les séances d’orientation et inscription initiales, le Maître Mot est donc à la recherche de bénévoles arabophones prêts à passer quelques heures à l’asbl lors de ces séances, qui ont typiquement lieu le samedi matin. Une aide même ponctuelle sera très appréciée de la part de l’équipe aussi bien que des participants potentiels.<p>'
outcomes = '<li>Le/la bénévole a été présent(e) lors d’une ou plusieurs sessions d’inscriptions, et a facilité la communication avec les participants potentiels grâce à sa maîtrise de la langue arabe</li>'
suggested_start_date = 'Mission récurrente, ayant lieu le samedi matin'
suggested_end_date = 'n.a.'
suggested_duration = '3 heures par session'
suggested_format = 'Discussion au téléphone, présence à une ou plusieurs séances d\'inscription'
status = '0_draft'
author = 'Thomas'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Le Maître Mot'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )


# CREATE MISSION
title = 'Automatisation d\'un dashboard opérationnel et financier'
impact = 'Améliore les process de l\'association pour qu\'elle consacre plus de temps aux duos'
skills = 'Excel'
picture = 'picture-duo-for-a-job-2.png'
full_title = 'Automatisation de la création d’un dashboard d’indicateurs opérationnels et financiers'
objectives = '<p>Duo for a Job maintient une vue intégrée des métriques concernant ses
opérations et finances dans un dashboard Excel. Ce dashboard est
notamment utilisé pour communiquer les résultats de l’ASBL à ses
mécènes. Le dashboard contient entre autres les métriques suivantes :
</p>
<ul>
<li>Nombre de duos créés</li>
<li>Nombre de duos suivis par coordinateur de l’ASBL</li>
<li>Métrique de mise à l’emploi des mentees</li>
<li>Dépenses, recettes, et cash flows</li>
<li>Coût marginal par duo crée</li>
<li>Coût marginal par emploi trouvé</li>
</ul>
<p>Actuellement, le processus mensuel de mise à jour de ce dashboard est
fastidieux et nécessite d’agréger une multitude de sources de données
sous différents formats (tables Excel).
</p>
<p>Ce travail répétitif draine du temps de l’équipe de management de
l’ASBL, qui pourrait se consacrer à d’autres activités à plus haute valeur
ajoutée si ce travail était automatisé ou rendu plus aisé pour que
d’autres membres de l’ASBL puissent le réaliser facilement.
</p>
<p>L’objectif de cette mission est donc d’analyser le processus de création
du dashboard, pour rendre celui-ci plus automatisé, et plus facile à
effectuer par d’autre membres de l’ASBL que son management.
</p>'
outcomes = '<li>Le processus de création du dashboard a été automatisé au
maximum, de manière robuste et répétable</li>
<li>Les étapes nécessaires à la création du dashboard ont été détaillées
et documentées à un niveau suffisamment explicite pour que tout
membre de l’équipe Duo for a Job soit capable d’effectuer une mise
à jour (en particulier, plusieurs essais fructueux de mise à jour ont
été réalisés par la personne qui sera vraisemblablement responsable
de la mise à jour)
</li>
<li>Eventuellement, des améliorations de contenu et / ou de format ont
été apportées au dashboard</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = 'Un (demi-)jour équivalent temps-plein'
suggested_format = 'Réunion de briefing, travail individuel du bénévole,
échanges par mail et téléphone, réunion de clôture avec formation au nouveau dashboard.'

mission = Mission.create(title: title,
  skills: skills,
  status: '20_staffed',
  nonprofit_profile: NonprofitProfile.find_by_name('Duo for a Job'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Thomas").last
  )


# CREATE MISSION
title = 'Analyse et segmentation des questions des adolescents'
impact = 'Equiper l\'association pour répondre au mieux aux détresses des ados'
skills = 'Excel, Analyse de données'
picture = 'picture-paroles-d-ados-1.jpg'
full_title = 'Analyse et segmentation des données liées aux questions posées par les adolescents sur le site de l’association'
objectives = '<p>Actuellement, les questions posées par les adolescents sur le site sont
catégorisées selon une dizaine de catégories (Adolescence, Sexualité,
Relations, Santé, Mal-être, Accro, Maltraitance, Droits / Lois, Aide sur
le site). L’association pourrait bénéficier d’une segmentation plus fine
au sein de ces catégories, pour plusieurs raisons :</p>
<ul>
<li>Compréhension des tendances et thèmes les plus récurrents
au sein des questions pour mieux aider les adolescents, avec
analyses et statistiques démographiques</li>
<li>Quantification du soutien apporté par thème (e.g., « Combien
de jeunes avons-nous aidés sur la thématique du suicide ? »)
pour démarcher des donateurs potentiels intéressés par l’un
ou l’autre sujet en particulier</li>
<li>Potentiellement, implémentation dans le futur d’une fonction
de catégorisation directement sur la plate-forme</li>
</ul>
<p>L’analyse prendrait la forme d’un fichier Excel et d’une proposition de
catégorisation, avec en sortie plusieurs graphiques et conclusions-clés
sur le contenu des questions. Idéalement, le modèle devrait être
réutilisable pour permettre des analyses futures.</p>'
outcomes = '<li>Une proposition de segmentation plus fine a été réalisée</li>
  <li>Le contenu des questions a été analysé à la lumière de cette segmentation</li>
  <li>Les résultats-clés et graphiques ont été documentés</li>
  <li>Idéalement, un modèle répétable d’analyse a été mis en place</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '1-2 équivalents jours pleins'
suggested_format = 'Réunion de briefing, travail individuel du bénévole, réunion de présentation des résultats.'

mission = Mission.create(title: title,
  skills: skills,
  status: '40_accomplished',
  nonprofit_profile: NonprofitProfile.find_by_name('Paroles d\'Ados'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Laurent").first
  )


# CREATE MISSION
title = 'Réalisation d\'une présentation de pitch aux donateurs'
impact = 'Assurer la pérennité financière de l\'association, pour continuer à répondre aux détresses des ados'
skills = 'PowerPoint'
picture = 'picture-paroles-d-ados-2.jpg'
full_title = 'Réalisation d’une présentation PowerPoint pour supporter les rencontres avec de potentiels donateurs financiers'
objectives = '<p>L’association est actuellement en train d’accomplir des démarches
avec divers organismes publics et privés pour collecter des fonds
destinés à soutenir ses opérations.</p>
<p>Le matériel de communication utilisé aujourd’hui consiste en un
PowerPoint focalisé surtout sur le rapport d’activités de l’association.
Il est vraisemblable qu’une présentation plus « marketing »
permettrait de supporter plus efficacement les messages à faire passer
lors des discussions avec les donateurs.</p>
<p>Les éléments à inclure dans la présentation seraient par exemple (liste
non exhaustive) :</p>
<ul>
<li>Mise en évidence du problème / besoin adressé par
l’association, montrant l’impératif pour l’association de
pouvoir continuer à exercer ses activités</li>
<li>Présentation visuelle/schématique des activités de
l’association, mettant notamment en évidence les flux
financiers et les efforts / personnes engagés dans les activités</li>
<li>Résultats des analyses sur les thèmes traités sur le site, pour cibler les donateurs intéressés
spécifiquement par l’un ou l’autre thème</li>
<li>Explication concrète de la manière dont chaque don compte :
« Avec €20, vous permettez que la question d’un adolescent
soit prise en charge »…</li>
<li>Tout autre message destiné à supporter la discussion avec les
donateurs (la présentation ne devrait pas faire plus de ~10-15
slides)</li>
</ul>'
outcomes = '<li>Une présentation PowerPoint de support aux discussions de collecte
de fonds a été réalisée, en collaboration avec l’association</li>
<li>L’association se sent à l’aise d’utiliser ce matériel pour les prochaines
discussions, et constate que les messages sont passés plus aisément</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '1 équivalent jour plein'
suggested_format = 'Réunion de briefing, travail individuel du bénévole, réunion de présentation des résultats.'


mission = Mission.create(title: title,
  skills: skills,
  status: '40_accomplished',
  nonprofit_profile: NonprofitProfile.find_by_name('Paroles d\'Ados'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Thomas").first
  )

# CREATE MISSION
title = 'Recherche d’un local avec appartement à Bruxelles'
impact = 'Supporter l\'association dans la croissance de ses activités'
skills = 'Immobilier'
picture = 'picture-operation-thermos-1.png'
full_title = 'Recherche d’un local avec appartement à Bruxelles'
objectives = '<p>L\'association occupe actuellement un local en location, ce qui n’est pas
optimal. Elle  pourrait envisager de consacrer les fonds mis de côté au
cours des dernières années en vue d’un projet social à l’achat d’un
local aux critères bien particuliers.</p>
<p>La mission consiste à faire une recherche immobilière et une
éventuelle proposition de lieux, selon les critères suivants identifiés
par l\'association:</p>
<ul>
<li>En Région Bruxelloise, avec une préférence pour les alentours
de la Station de métro Botanique</li>
<li>Local pouvant contenir une cuisine, de nombreux rangements
et frigos et permettant l’entrée d’une remorque</li>
<li>Le fait de cuisiner doit y être autorisée</li>
<li>Un appartement y sera de préférence lié</li>
<li>Si un lieu était trouvé, un conseil/soutien pour la transaction serait le
bienvenu.</li>
</ul>'
outcomes = '<li>Un ou plusieurs biens potentiels ont été identifiés</li>
<li>Un graphisme clair et des outils de communication appropriés ont été
développés pour communiquer avec efficacité et cohérence tant en
interne qu\'avec les différents partenaires externes.</li>'
suggested_start_date = 'Le plus rapidement possible'
suggested_end_date = 'n.a.'
suggested_duration = '1 équivalent jour plein'

mission = Mission.create(title: title,
  skills: skills,
  status: '30_started',
  nonprofit_profile: NonprofitProfile.find_by_name('Opération Thermos'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Xavier").first
  )



# CREATE MISSION
title = 'Business Plan de collaboration entre Opération Thermos et Housing First'
impact = 'Contribue au développement de l\'offre de logement aux sans-abris'
skills = 'Stratégie, Management'
picture = 'picture-operation-thermos-2.png'
full_title = 'Elaboration d\'un "business plan" de collaboration entre Opération Thermos et Housing First.'
objectives = '<p>L\'activité principale d\'Opération Thermos est la distribution
quotidienne de repas chauds aux sans-abris.</p>
<p>L\'association aimerait construire sur ces acquis et sur les liens qu\'elle a
tissés avec les plus démunis afin de développer un volet d\'aide au logement. Pour ce faire, Opération Thermos aimerait par exemple
collaborer avec Housing First, une association qui vise l\'insertion par le
logement et l\'accompagnement.</p>
<p>La mission du bénévole consistera à:</p>
<ul>
<li>Identifier les points sur lesquels les 2 associations pourraient
unir leurs forces</li>
<li>Détailler le plus précisément possible le processus de
fonctionnement de cette collaboration</li>
<li>Conseiller Opération Thermos sur de possibles investissements dans le domaine</li>
</ul>'
outcomes = '<li>Opération thermos réussit, en collaboration avec Housing First, à faire
bénéficier les sans-abris présents aux repas d\'une aide complémentaire
pour trouver un logement.</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '4-5 équivalents jour plein'

mission = Mission.create(title: title,
  skills: skills,
  status: '30_started',
  nonprofit_profile: NonprofitProfile.find_by_name('Opération Thermos'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Kevin").first
  )

# CREATE MISSION
title = 'Analyse des ventes pour améliorer la distribution'
impact = 'Contribue au développement d\'une presse indépendante de qualité en Belgique'
skills = 'Stratégie, Excel'
picture = 'picture-24h01-1.jpg'
full_title = 'Analyse des ventes des numéros de 24h01, pour améliorer la distribution des futurs numéros'
objectives = '<p>Actuellement, 24h01 est distribué à travers 95 points de ventes, par
abonnements et par commandes directement sur le site web du mook.
Les données liées aux ventes par ces canaux sont disponibles, mais très
peu d’analyses ont pour l’instant été réalisées sur base de ces données.</p>

<p>La mission consiste à explorer ces données, pour mettre en évidence
des conclusions permettant d’améliorer la distribution.</p>

<p>Les analyses potentielles devraient être concrétisées à travers une
série de graphes Excel ou PowerPoint facilement partageables et
interprétables pour l’équipe.</p>

<p>Analyses suggérées :</p>
<ul>
<li>Répartition des ventes par canaux</li>
<li>Répartition des ventes par géographie</li>
<li>Répartition des ventes par type de point de vente physiques</li>
<li>Analyse de l’historique des ventes</li>
<li>Proposition d’une segmentation des points de ventes</li>
</ul>
<p>La mission pourrait déboucher ultérieurement sur la mise en œuvre des suggestions d’amélioration de la distribution.</p>'
outcomes = '<li>Les données relatives aux ventes ont été analysées et visualisées</li>
            <li>Des conclusions ont été tirées pour améliorer la distribution</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '1 équivalent jour plein'
suggested_format = "n.a."

mission = Mission.create(title: title,
  skills: skills,
  status: '0_draft',
  nonprofit_profile: NonprofitProfile.find_by_name('24h01'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Schola ULB============================
title = 'Mise au point d\'un power point pour les déplacements dans les écoles'
skills = 'PowerPoint, Communication'
status = '10_open'
author = 'Thomas'
full_title = 'Mise au point d\'un support power point efficace et percutant à destination des élèves et des enseignants pour les déplacements dans les écoles.'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises. '
objectives = '<p>Pour communiquer le projet Tutorat (soutien scolaire gratuit) dans les écoles, Schola ULB présente à l\'aide de Power Point son projet. Cette communication se fait soit envers les enseignants (explication projet, enjeux de leur implication) soit envers les élèves (l\'aide proposée, sous quelle forme, quels engagements pour eux).</p>
<p>Le Power point utilisé date de quelques années, une maîtrise de l\'outil serait utile afin de le rendre le plus clair et attrayant possible.</p>
<p>L’objectif de cette mission est de moderniser le Power Point utilisé et de pouvoir mettre en évidence certains éléments de communication peut-être sous-estimés.</p>
<p>Pour ce faire, une très bonne connaissance de l\'outil Power Point est essentielle.</p>
<p>En pratique, le fichier consiste en un document de 15 slides. Le ou la bénévole sera chargé(e) de le moderniser et de le rendre le plus attrayant possible.'
outcomes = '<li>Le Power Point est facile d\'utilisation, lisible et facile à dupliquer</li>'
suggested_start_date = 'Pas de préférence'
suggested_end_date = '31/08/2016 afin d\'avoir une ppt pour les réunions d\'information de septembre'
picture = 'https://dl.dropboxusercontent.com/s/6votteeoksssovj/SliderSchola_.jpg?dl=0'
suggested_duration = 'Un demi-jour équivalent temps-plein'
suggested_format = 'Discussion d\'introduction et présentation du document actuel, Travail de recherche du bénévole, partage des résultats'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

# CREATE MISSION
title = 'Analyse et optimisation du plan de création d\'un numéro de 24h01'
impact = 'Contribue au développement d\'une presse indépendante de qualité en Belgique'
skills = 'Project management'
picture = 'picture-24h01-3.jpg'
full_title = 'Analyse du plan de création d’un numéro de 24h01 (processus, intervenants, délais) pour une potentielle augmentation de la
fréquence d’édition (passer de 2 à 4 numéros par an)'
objectives = '<p>Depuis sa création il y  a 2 ans, l’équipe de 24h01 n’a cessé de se
professionnaliser et de monter en compétences, chaque numéro étant
réalisé de manière plus efficace que le précédent.</p>

<p>A l’horizon 2017, l’équipe envisage de passer à la vitesse supérieure en
publiant 4 numéros par an et en engageant 2 mi-temps
supplémentaires.</p>

<p>La mission pourrait consister en plusieurs étapes (pouvant déboucher
sur d’autres missions) :</p>
<ul>
<li>Inventaire de l’ensemble des activités menant à la création
d’un numéro de 24h01, concrétisées dans un plan visuel et
simple à interpréter (Gantt chart par exemple)
<ul>
<li>Activités (quels sont les objectifs et livrables ?)</li>
<li>Intervenants (qui sont les parties internes et externes
impliquées, quel contrôle est possible sur ces parties ?)</li>
<li>Délais (quelles sont les activités les plus
chronophages ?)</li>
<li>Chemin critique (quelles sont les activités
incontournables ?)</li>
<li>Dépendances (quelles sont les étapes devant
impérativement observer une séquence définie ?)</li>
</ul>
</li>
<li>Discussion sur l’opportunité de compresser dans le temps
certaines activités, pour augmenter la fréquence d’édition de 2
à 4 numéros par an</li>
</ul>
<p>Il est à noter que cette mission analyse par essence l’aspect
opérationnel de la création d’un numéro de 24h01 – sans considérer
l’aspect financier. La décision d’augmenter la fréquence d’édition doit
en effet impérativement passer par la réalisation d’un Business Case
détaillé (qui se basera en partie sur les trouvailles de l’analyse des
activités). Ce Business Case pourrait faire l’objet d’une mission
ultérieure.</p>'
outcomes = '<li>L’ensemble des activités menant à la création d’un numéro de 24h01
ont été inventoriées dans un plan visuel et simple à interpréter</li>
<li>Une discussion a été engagée avec l’équipe de rédaction sur
l’opportunité d’augmenter la fréquence d’édition, supportée par le
plan réalisé.</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '2-3 équivalents jour plein'

mission = Mission.create(title: title,
  skills: skills,
  status: "30_started",
  nonprofit_profile: NonprofitProfile.find_by_name('24h01'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Edouard").first
  )

# CREATE MISSION
title = 'Mise à jour du contrat standard des bénévoles des festivals'
impact = 'Contribue à développer les fondations structurelles de l\'association'
skills = 'Droit'
picture = 'picture-vpt-1.jpg'
full_title = 'Mise à jour du contrat standard des bénévoles participant aux festivals au profit de l\'association'
objectives = '<p>Pour pouvoir financer les camps avec les enfants, Vacances pour Tous est active durant toute l\'année à travers différentes actions générant des revenus.
Une source majeure de revenus est la collaboration avec les festivals estivaux belges (ex: Dour, Francofolies...). Durant ces festivals, des bénévoles de Vacances pour Tous
travaillent sur le terrain (ex: sécurité, logistique...). En contrepartie, les festivals rémunèrent directement Vacances pour Tous pour le travail des bénévoles.</p>
<p>L\'accord signé avec chaque bénévole repose pour l\'instant sur un contrat standard qui gagnerait à être revu en profondeur
pour encadrer au mieux l\'activité bénévole, et protéger l\'association de tracas potentiels.</p>
<p>L\'objectif de cette mission est de parcourir et revoir le contrat existant pour l\'améliorer, en reflétant aussi les nouveaux besoins
apparus depuis la première version du document (le volume de bénévoles s\'est en effet beaucoup accru depuis).</p>'
outcomes = '<li>Le contrat standard avec les bénévoles a été mis à jour</li>
            <li>La nouvelle version du contrat anticipe les besoins futurs de l\'association, en particulier en ce qui concerne sa future croissance potentielle</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '5 heures'
suggested_format = "Réunion de briefing pour parler du contrat existant, travail du bénévole et suivi par mail, réunion de clôture."

mission = Mission.create(title: title,
  skills: skills,
  status: "10_open",
  nonprofit_profile: NonprofitProfile.find_by_name('Vacances pour Tous'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )


# CREATE MISSION
title = 'Rédaction d\'un contrat standard avec les organisateurs de festivals'
impact = 'Contribue à développer les fondations structurelles de l\'association'
skills = 'Droit'
picture = 'picture-vpt-2.jpg'
full_title = 'Rédaction d\'un contrat standard avec les organisateurs de festivals'
objectives = '<p>Pour pouvoir financer les camps avec les enfants, Vacances pour Tous est active durant toute l\'année à travers différentes actions générant des revenus.
Une source majeure de revenus est la collaboration avec les festivals estivaux belges (ex: Dour, Francofolies...). Durant ces festivals, des bénévoles de Vacances pour Tous
travaillent sur le terrain (ex: sécurité, logistique...). En contrepartie, les festivals rémunèrent directement Vacances pour Tous pour le travail des bénévoles.</p>
<p>Pour l\'instant, la participation de Vacances pour Tous à chaque festival est systématiquement régie par les conditions énoncées dans des contrats rédigés par les organisateurs des festivals.
L\'association aimerait améliorer cette situation en consignant dans un document standard à valeur contractuelle l\'ensemble de ses attentes envers les organisateurs (ex: protection de la réputation de l\'association, pérénnité de la collaboration...)</p>
<p>L\'objectif de cette mission est d\'accompagner l\'association dans la formulation de ses demandes par rapport aux organisateurs de festivals, et consigner ceux-ci dans un contrat standard réutilisable.</p>'
outcomes = '<li>L\'association a clairement articulé ses demandes par rapports aux organisateurs des festivals<p>
            <li>Un contrat standard reprenant ses demandes a été rédigé</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '~5-10 heures'
suggested_format = "Réunion de briefing pour parler du contrat existant, travail du bénévole et suivi par mail, réunion de clôture."

mission = Mission.create(title: title,
  skills: skills,
  status: "10_open",
  nonprofit_profile: NonprofitProfile.find_by_name('Vacances pour Tous'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Schola ULB============================
title = 'Mise à jour du listing de contacts presse et communication'
skills = 'Communication, Journalisme'
status = '10_open'
author = 'Thomas'
full_title = 'Mise à jour du listing de contacts presse dans le cadre de la communication des activités de l\'association'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises'
objectives = '<p>Pour communiquer au sujet des différentes activités organisées par l’association, Schola ULB est régulièrement en contact avec une série d’acteurs du monde de la presse (offline et online).</p>
<p>Les coordonnées de ces acteurs sont répertoriées dans un fichier mis sur pied il y a déjà quelques années. Ce fichier compte une petite centaine de contacts, répartis à travers la presse généraliste, spécialisée, locale…Les secteurs couverts en particulier sont ceux de l’éducation, de l’enfance, et du social.</p>
<p>L’objectif de cette mission est de remettre le fichier de contact à jour, pour s’assurer de couvrir tous les acteurs pertinents, et disposer des bonnes coordonnées pour les acteurs déjà listés. Pour ce faire, une connaissance du milieu de la presse belge sera un très bon atout (ex : qui contacter au sujet de l’éducation dans quelle rédaction ?). </p>
<p>En pratique, le fichier consiste en un Excel que le ou la bénévole sera chargé(e) de compléter et remettre à jour. </p>'
outcomes = '<li>Le fichier de contact presse a été mis à jour (coordonnées correctes pour tous les acteurs listés)</li>
<li>Eventuellement, le fichier a été étendu pour inclure de nouveaux contacts pertinents pour les activités de Schola ULB</li>'
suggested_start_date = 'Pas de préférence'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/gq080oqvuke5roq/ScholaULB_TutoratPrimaire-21.jpg?dl=0'
suggested_duration = 'Un demi-jour équivalent temps-plein'
suggested_format = 'Discussion d\'introduction et présentation du document actuel, Travail de recherche du bénévole, partage des résultats'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: "10_open",
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

# CREATE MISSION
title = 'Optimisation des outils de collaboration de l\'équipe de rédaction'
impact = 'Contribue au développement d\'une presse indépendante de qualité en Belgique'
skills = 'Outils de collaboration'
picture = 'picture-24h01-2.jpg'
full_title = 'Optimisation de l’ensemble des outils informatiques de collaboration
de l’équipe 24h01'
objectives = '<p>Actuellement, l’équipe de la rédaction de 24h01 utilise une série
d’outils de collaboration, dont certains remplissent des fonctionnalités
similaires (e.g., utilisation parallèle de Dropbox et Google Drive). Par
ailleurs, certaines tâches et activités de collaboration gagneraient à
être supportées par des outils librement disponibles en ligne. Un
exemple est la gestion de projets : dans le passé, l’équipe a tenté sans
succès d’assurer le suivi des tâches / to-do lists via Trello. Ceci conduit
à des inefficiences et des délais dans les activités de l’équipe.</p>

<p>La mission consiste en plusieurs étapes :</p>
<ul>
<li>Mapping des outils actuellement utilisés, compréhension de
l’historique des outils précédents</li>
<li>Diagnostic des besoins de l’équipe de rédaction</li>
<li>Proposition d’une série d’outils permettant de rencontrer les
besoins de l’équipe, avec avantages et inconvénients des
différents scénarios</li>
<li>Accompagnement de l’évolution vers les nouveaux outils,
incluant un potentiel plan de migration si nécessaire</li>
</ul>
<p>Au-delà de ces étapes, le soutien d’un bénévole expérimenté dans
l’utilisation d’outils de collaboration permettrait d’engager l’équipe
dans des réflexions plus générales sur les modes de travail utilisés
aujourd’hui.</p>'
outcomes = '<li>Les besoins de l’équipe de rédaction en outils de collaboration ont été
compris, et traduits en propositions concrètes d’outils</li>
<li>L’équipe de rédaction a réalisé une migration vers des outils
supportant plus efficacement ses activités</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
suggested_duration = '0.5 équivalent jour plein'
suggested_format = 'Réunion de rencontre, suivie d\'une ou plusieurs sessions avec l\'équipe'

mission = Mission.create(title: title,
  skills: skills,
  status: "10_open",
  nonprofit_profile: NonprofitProfile.find_by_name('24h01'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

# CREATE MISSIONS
title = 'Compilation des dépenses pour justification des budgets'
impact = 'Aide l\'association dans le renouvellement de ses subsides'
skills = 'Word'
picture = 'picture-le-maitre-mot-2.jpg'
full_title = 'Compilation des dépenses pour justification des budgets'
objectives = '<p>Le Maître Mot bénéficie de subsides publics en soutien de ses opérations. Ces subsides sont alloués sur base de budgets prévisionnels soumis par l’association avant attribution. En fin de période budgétaire, l’association est tenue de présenter une compilation de ses dépenses (factures etc.) pour justifier les subsides alloués.</p>
<p>L’objectif de cette mission est de réaliser le dossier compilant l’ensemble des justificatifs sur une période budgétaire. Les justificatifs auront été rassemblés, et le ou la bénévole aura la mission de produire un document Word bien structuré reprenant l’ensemble de ces éléments.</p>
<p>Bien qu’il s’agisse d’une obligation comptable, la réalisation de la mission ne nécessite pas spécialement de connaissance comptables préalables.</p>'
outcomes = '<li>Un document Word compilant l’ensemble des justificatifs de dépenses sur la période budgétaire a été rédigé</p>
<li>Le document répond à toutes les obligations comptables du Maître Mot en ce qui concerne la justification des subsides alloués</p>
<li>Le document est bien structuré et clair à la lecture</p>'
suggested_start_date = 'TBD'
suggested_end_date = 'TBD'
suggested_duration = '1-2 équivalents jours pleins'
suggested_format = 'Réunion de rencontre, suivie d\'une ou plusieurs sessions de travail individuelle ou avec l\'équipe de l\'association.'


mission = Mission.create(title: title,
  skills: skills,
  status: "0_draft",
  nonprofit_profile: NonprofitProfile.find_by_name('Le Maître Mot'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )


# CREATE MISSION
title = 'Perspective externe sur les finances de l\'association'
impact = 'Soutenir le Conseil d\'Administration dans la gestion financière des activités'
skills = 'Finance'
picture = 'picture-le-maitre-mot-3.jpg'
full_title = 'Perspective externe sur les aspects financiers de l’association, et préparation du contenu financier discuté lors de l’Assemblée Générale de l’association'
objectives = '<p>Actuellement, le Conseil d’Administration (CA) de l’association est fort de membres ayant une expérience de terrain des activités de l’association. Cependant, il ne compte pas de personne externe au Maître Mot, qui pourrait apporter un regard nouveau bienvenu sur certains aspects de l’association. Cela est vrai en particulier pour les aspects financiers de l’association, car le CA ne compte pas de membre ayant une expérience professionnelle en finance et comptabilité. </p>
<p>L’objectif de la mission est d’accompagner les membres du CA dans leur lecture des finances et du bilan de l’association. Concrètement, un comptable externe remet en fin d’année un dossier financier à l’association : c’est ce dossier qui gagnerait à être analysé en compagnie des membres du CA.</p>
<p>Par ailleurs, en fonction des disponibilités du ou de la bénévole, ce dossier financier pourrait être mis en forme (typiquement, en PowerPoint) de manière à être présenté clairement et pédagogiquement à l’ensemble des membres de l’Assemblée Générale (AG) de l’association (l’AG comprend un nombre plus large de membres que le CA, et ses membres sont moins régulièrement impliqués dans l’association).</p>'
outcomes = '<li>Le Conseil d’Administration a gagné une compréhension plus claire des résultats financiers de l’association</p>
<li>Une perspective externe a été apportée à ces résultats, déclenchant des conversations intéressantes pour leur amélioration potentielle</p>
<li>Eventuellement, les résultats ont été mis en forme pour présentation à l’Assemblée Générale</p>'
suggested_start_date = 'TBD'
suggested_end_date = 'TBD'
suggested_duration = '1-2 équivalents jours pleins'
suggested_format = 'Une ou plusieurs réunions de travail avec l’association'

mission = Mission.create(title: title,
  skills: skills,
  status: "0_draft",
  nonprofit_profile: NonprofitProfile.find_by_name('Le Maître Mot'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Schola ULB============================
title = 'Analyse du thème WordPress du Forum des Innovations en Education'
skills = 'Wordpress'
status = '10_open'
author = 'Thomas'
full_title = 'Analyse préalable à l’évolution du thème WordPress du site du Forum des Innovations en Education'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises'
objectives = '<p>En tant qu’organisateur principal du Forum des Innovations en Education, Schola ULB maintient un catalogue extensif d’innovations en éducation proposées dans le milieu scolaire et associatif. Ce catalogue, qui compte plus de 1.000 projets, est disponible en ligne sur le site  innovation-education.be.</p>
<p>Ce site est basé sur un thème WordPress qui correspondait aux besoins de l’association lorsqu’il a été mis sur pieds. Cependant, ce thème n’est actuellement plus maintenu par ses fournisseurs. Ceci cause des complexités de gestion (incompatibilité des plugins, failles de sécurité…) qui alourdissent la charge de travail de l’équipe de l’association et menacent la viabilité à long terme du site. Il a donc été décidé de migrer le contenu du site vers un nouveau thème WordPress.</p>
<p>L’objectif de cette mission est d’accompagner l’association dans la recherche d’un nouveau thème WordPress correspondant aux besoins du site du Forum des Innovations en Education. Le ou la bénévole proposera un ou plusieurs thèmes et leur évaluation selon des critères à définir avec l’association. Idéalement, un mapping du contenu de l’ancien thème vers le nouveau thème sera aussi documenté.</p>
<p>Une fois le nouveau thème identifié, ses spécifications pourront être communiquées à un prestataire informatique externe à l’association qui s’occupera de réaliser la migration du contenu.</p>'
outcomes = '<li>Les besoins techniques et fonctionnels du site du Forum des Innovations en Education ont été collectés et consignés dans un cahier des charges</li>
<li>Un ou plusieurs thèmes WordPress répondant à ce cahier des charges ont été identifiés</li>
<li>Les informations nécessaires à la migration vers le nouveau thème ont été rassemblées pour être fournies à un prestataire chargé de réaliser la migration</li>'
suggested_start_date = 'Pas de préférence'
suggested_end_date = '2 mois avant la rentrée scolaire de septembre'
picture = 'https://dl.dropboxusercontent.com/s/t93dxfrt89f4lid/scholaulb_fetesolidarites-10.jpg?dl=0'
suggested_duration = 'Un demi-jour équivalent temps-plein'
suggested_format = 'Discussion d\'introduction et présentation du document actuel, Travail de recherche du bénévole, partage des résultats et itérations potentielles'

mission = Mission.create(title: title,
  skills: skills,
  status: "10_open",
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )


#=======Schola ULB============================
title = 'Comment valoriser au mieux l’expérience du tutorat sur le CV des étudiants ?'
skills = 'Recrutement, RH'
status = '10_open'
author = 'Thomas'
full_title = 'Comment valoriser au mieux l’expérience du tutorat sur le CV des étudiants ?'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises'
objectives = '<p>Les tuteurs qui encadrent les sessions de Schola ULB sont en grande majorité des élèves universitaires de l’ULB. Certains de ces élèves sont sur le point de rentrer sur le marché du travail et rédigent donc leur CV, en y mentionnant leur expérience de tutorat.</p>
<p>L’équipe Schola a eu l’occasion de consulter certains de ces CVs et pense qu’ils gagneraient à ce que l’expérience du tutorat soit mieux mise en valeur. En effet, celle-ci apprend beaucoup aux étudiants dans les domaines de la pédagogie, du leadership, de la responsabilité…</p>
<p>L’objectif de cette mission est de rédiger une ou plusieurs propositions de textes-types que les étudiants pourraient inclure sur leur CV pour valoriser au mieux leur expérience de tutorat. Un petit guide détaillant la manière d’inclure cette expérience sur leur profil LinkedIn serait aussi très apprécié. Enfin, une réflexion sur la manière la plus efficace de communiquer aux étudiants sur ce qu’ils peuvent retirer professionnellement du tutorat pourrait aussi être engagée.</p>'
outcomes = '<li>Une ou plusieurs propositions de textes-types à inclure dans le CV des étudiants a / ont été rédigée(s)</li>
<li>Idéalement, un petit guide détaillant comment inclure l’expérience de tutorat sur LinkedIn a été rédigé</li>
<li>Eventuellement, une réflexion sur la manière de communiquer aux étudiants sur les avantages professionnels du tutorat a été engagée</li>'
suggested_start_date = 'Pas de préférence'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/d4sly7qicyyyvce/fondation-bernheim-schola-ulb-jeh8765-c-jerome-hubert---schola-ulb.jpg?dl=0'
suggested_duration = '3-4 heures'
suggested_format = 'Réunion de briefing, Travail individuel du bénévole, Réunion de validation et clôture'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )


#=======Repair Café============================
title = 'Quel modèle de rémunération pour un nouvel administrateur de l’asbl?'
skills = 'RH, Droit'
status = '10_open'
author = 'Thomas'
full_title = 'Quelles sont les différents modèles de rémunération pour un nouvel administrateur de l’asbl?'
impact = 'Promeut la consommation responsable et le vivre ensemble'
objectives = '<p>Le réseau des Repair Cafés connaît actuellement une forte croissance. Suite à cette croissance, l’équipe porteuse de l’asbl doit faire face à une charge de travail grandissante. Pour parer au mieux à ce challenge, l’opportunité d’accueillir dans l’équipe un nouvel administrateur est à présent considérée.</p>
<p>Ce nouvel administrateur serait notamment chargé de mener à bien certaines missions assez consommatrices en temps. Pour valoriser cela, l’asbl désire rémunérer l’administrateur.</p>
<p>L’objectif de cette mission est d’éclairer l’équipe sur les différents modèles de rémunérations pouvant être mis en place pour un administrateur au sein d’une asbl, avec la particularité que l’administrateur sera aussi directement impliqué dans les activités de terrain.</p>
<p>Idéalement, cet éclairage prendra la forme d’un petit rapport présentant les différents modèles de rémunérations envisageables, avec leurs avantages, inconvénients, et modalités de mise en place. Une recommandation pour un modèle particulier pourra potentiellement être émise en collaboration avec l’équipe de l’asbl (en se basant notamment sur les expériences d’autres associations).</p>'
outcomes = '<li>Les différents modèles de rémunération ont été analysés en collaboration avec l’équipe de l’asbl</li>
<li>Potentiellement, une recommandation pour un modèle particulier a été émise</li>'
suggested_start_date = 'Dès que possible'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/jpgokrnfzf2t4xk/Repair%20cafe.jpg?dl=0'
suggested_duration = '1 demi-journée équivalent temps plein'
suggested_format = 'Discussion d\'introduction au contexte de l\'association, Travail de recherche du bénévole, Partage des résultats.'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Repair Café'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======ONA============================
title = 'Rédaction d\'un cahier des charges pour l\'évolution des bases de données'
skills = 'Bases de données, Opérations'
status = '10_open'
author = 'Thomas'
full_title = 'Rédaction d\'un cahier des charges pour un potentiel outil permettant l\'intégration de multiples bases de données en un système global'
impact = 'Contribue à l\'intégration et l\'autonomie des personnes déficientes visuelles'
objectives = '<p>Dans le cadre de sa mission, l\'ONA fait appel à différents publics: collaborateurs, bénéficiaires, bénévoles, donateurs, partenaires...</p>
<p>Les services de l\'association sont amenés à communiquer avec ces différents publics, ce qui implique de gérer à la fois la communication, le suivi, et la logistique. Pour ce faire, l\'ONA dispose de multiples bases de données, qui sont actuellement gérées via des outils séparés. Par exemple :</p>
<ul>
<li>Les bénéficiaires et volontaires sont gérés via différents fichiers Excel (par antenne, par année...)</li>
<li>Les donateurs sont gérés via un logiciel propre, hébergé chez un fournisseur externe.</li>
<li>Les lecteurs de la bibliothèque sont également repris dans un logiciel spécifique.</li>
</ul>
<p>A l\'heure actuelle, il n\'existe pas de réelle coordination sur ces bases de données, et l\'ONA ne dispose pas, en interne, de personne dédiée à cette tâche. Tout le monde peut y faire des modifications, sauf lorsque les bases de données sont hébergées via des logiciels spécifiques, qui sont souvent propres aux services concernés (par exemple : base de données lecteurs pour la bibliothèque, ou base de données donateurs pour la communication).
L\'ONA souhaite donc établir une solution unique et centralisée permettant de réunir toutes les bases de données en un seul outil auquel tout le monde pourrait avoir accès (permettre un accès partagé).</p>
<p>L\'objectif de cette mission est d\'accompagner l\'association dans la rédaction du cahier des charges de cette solution. Le cahier des charges sera ensuite remis à un prestataire informatique qui développera l\'outil et réalisera la migration des données.</p>'
outcomes = '
<li>Un cahier des charges a été rédigé, détaillant les fonctionnalités telles que: gestion des contacts, gestion des cotisations, création de listings pour envoi de courriers, impression des documents, réalisation de statistiques, export de données en Excel, gestion et envoi de newsletters, réalisation d\'enquêtes en ligne, organisation d\'événements...</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/bmmq0ayxqw0vtdr/ONA%20mission1.jpg?dl=0'
suggested_duration = '1,5 journées équivalent temps plein'
suggested_format = 'Discussion d\'introduction et présentation des fichiers actuels, Travail d\'intégration de la part du bénévole, Partage des résultats'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Oeuvre Nationale des Aveugles'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======RCR============================
title = 'Encodage des justificatifs de compatibilité de l\'année écoulée'
skills = 'Administration'
status = '40_accomplished'
author = 'Edouard'
full_title = 'Encodage des justificatifs de compatibilité de l\'année écoulée'
impact = 'Soutiens les initiatives de consommation responsable'
objectives = '<p>En fin d\'année, la comptabilité doit être réalisée. Une grosse partie du travail consiste à encoder les entrées et sorties comptables.</p>
<p> La mission consiste donc à participer à l’encodage de la comptabilité avec un membre de l\'association.</p>'
outcomes = "<li>L'association a progressé dans l'encodage de sa comptabilité</li>"
suggested_start_date = 'Décembre 2015'
suggested_end_date = 'Décembre 2015'
picture = 'https://dl.dropboxusercontent.com/s/dpgegv83dsiy7ge/RCR%20Mission.jpg?dl=0'
suggested_duration = 'Un demi-jour équivalent temps-plein'
suggested_format = 'Une session de travail conjoint'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now
volunteer = Volunteer.where(first_name: "William").first

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Réseau de Consommateurs Responsables'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: volunteer
  )

title = 'Rédaction d\'un cahier des charges pour l\'évolution des bases de données'
impact = 'Soutiens l\'interculturalité par la diffusion des musiques du monde'
skills = 'Bases de données, Opérations'
picture = 'https://dl.dropboxusercontent.com/s/6nzn2imtkydeos1/Muziekpublique_Mission.jpg?dl=0'
full_title = 'Accompagner l\'équipe de Muziekpublique dans la rédaction d\'un cahier des charges concernant la refonte de ses bases de données'
objectives = '    <p>
        Dans le cadre de ses cours et de ses concerts, l\'association maintient une série de bases de données de contact et d\'administration. Ces bases de
        données couvrent notamment les données suivantes:
    </p>
    <ul>
        <li>
            Membres du réseau: 6.000 membres annuellement, 20.000 en cumulé, qui sont régulièrement informés des événements de l\'association
        </li>
        <li>
            Bénévoles: 400 bénévoles, qui sont présents pour apporter leur soutien sur les événements
        </li>
        <li>
            Cours et élèves: 40 cours, comptant au total 400 élèves (dont la plupart sont aussi membres du réseau)
        </li>
        <li>
            Autres contacts: presse, institutions, partenaires, surtout utilisés à des fins de communication sur les événements
        </li>
    </ul>
        <p>
            Actuellement, ces bases de données sont maintenues dans Microsoft Access. Leur intégrité est insuffisante pour garantir un travail vraiment
            efficace de l\'équipe de gestion de l\'association: elles comptent beaucoup de doublons, l\'information est parfois lacunaire, les relations entre les
            différentes tables ne sont pas tenues à jour et mènent à des problèmes de versions, etc. Cela génère aussi de l\'insatisfaction de la part des
            élèves, qui se voient par exemple obligés de refournir chaque année les mêmes données pour leur réinscription aux cours.
        </p>
    <p>
        En réaction à cette situation, l\'équipe de Muziekpublique a décidé de procéder à une revue de ses besoins liés aux bases de données pour assainir leurs
        fondations. Cette revue n\'a pas encore débouché sur des résultats actionnables, faute d\'avoir pu aligner tous les utilisateurs des données sur une base
        de fonctionnalités commune.
    </p>
<p>
    L\'objectif de cette mission est d\'accompagner l\'équipe de Muziekpublique dans la rédaction d\'un cahier de charge concernant la refonte de ses bases de
    données. Ce cahier des charges sera ensuite transmis à un prestataire informatique externe qui réalisera la refonte et la migration des données.
    Concrètement, cette mission nécessitera de comprendre et structurer les besoins de chacun des membres de l\'équipe par rapport aux données, pour ensuite les
    consolider dans une vision commune. Le travail déjà existant à ce sujet pourra bien sûr être valorisé pour accélérer le démarrage de la mission.
</p>'
outcomes = '<li>Un cahier des charges répondant aux besoins de l\'association a été validé en vue d\'être transmis à un partenaire externe'
suggested_start_date = 'n.a'
suggested_end_date = 'n.a.'
suggested_duration = '1,5 journées équivalent temps plein'
suggested_format = 'Discussion d\'introduction et présentation des fichiers actuels, Travail d\'intégration de la part du bénévole, Partage des résultats'
status = '10_open'
author = 'Thomas'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Muziekpublique'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Musiekpublique============================
title = 'Perspective externe sur la communication de l\'association'
skills = 'Communication'
status = '10_open'
author = 'Thomas'
full_title = 'Perspective externe sur la communication autour des concerts et des cours'
impact = 'Soutiens l\'interculturalité par la diffusion des musiques du monde'
objectives = '<p>La communication menée par l\'équipe de Muziekpublique autour de ses événements est assez particulière, car elle doit viser à la fois un public de niche (les fans de certains styles de musique du monde) et assez large (les personnes intéressées de découvrir la musique du monde en général). Actuellement, l\'association gère cette communication notamment à travers des partenariats avec d\'autres associations (surtout pour les concerts spécifiques), et via des campagnes d\'affichage dans Bruxelles (pour les \'saisons\' de concerts), mais aussi via des brochures, facebook, etc. </p>
<p>Ce processus n\'est pas encore entièrement formalisé et demande beaucoup d\'énergie à l\'équipe.</p>
<p>L\'objectif de cette mission est de réaliser une ou plusieurs session(s) de revue et brainstorming sur la communication actuelle, pour identifier des pistes d\'amélioration en termes d\'audience touchée et d\'efficacité de l\'approche. L\'équipe est très ouverte aux perspectives externes sur son approche de la part d\'un ou une bénévole professionnel(le) en communication.<p>'
outcomes = '<li>Un avis critique a été apporté par le bénévole sur le modèle de communication</li>
<li>Des pistes d\'amélioration pour le futur modèle ont été partagées</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/k3w5yna881woajw/Musiekpublique%20Mission%203.jpg?dl=0'
suggested_duration = '1/2 jour équivalent temps plein'
suggested_format = 'Discussion d\'introduction et présentation du modèle actuel, Réflexion du bénévole, Partage des résultats'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Muziekpublique'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

title = 'Rédaction d\'un cahier des charges pour la refonte du site de l\'association'
impact = 'Soutiens la diffusion des musiques du monde'
skills = 'Opérations'
picture = 'https://dl.dropboxusercontent.com/s/y87nyz3hhuxppvu/Muziekpublique%20Mission%202.jpg?dl=0'
full_title = 'Accompagnement de l\'équipe de Muziekpublique dans la rédaction d\'un cahier de charge pour le nouveau site de l\'association'
objectives = '    <p>
        Dans le cadre de ses cours, de ses concerts et évènement, l\'association a besoin d\'un site plus adapté a ses activités. L\'association gère pour l\'instant :
    </p>
    <ul>
        <li>
            Membres du réseau: 6.000 membres annuellement, 20.000 en cumulé, qui sont régulièrement informés des événements de l\'association
        </li>
        <li>
            Bénévoles: 400 bénévoles, qui sont présents pour apporter leur soutien sur les événements
        </li>
        <li>
            Cours et élèves: 40 cours, comptant au total 400 élèves (dont la plupart sont aussi membres du réseau)
        </li>
        <li>
            Autres contacts: presse, institutions, partenaires, surtout utilisés à des fins de communication sur les événements
        </li>
    </ul>
        <p>
            Actuellement, le site ne permet de garantir un travail vraiment efficace des activité de l\'association en plus de cela son administration est compliquée.
        </p>
    <p>
        En réaction à cette situation, l\'équipe de Muziekpublique a décidé de procéder à une revue de ses besoins lié au site Internet.
    </p>
<p>
    L\'objectif de cette mission est d\'accompagner l\'équipe de Muziekpublique dans la rédaction d\'un cahier de charge concernant la refonte de son site internet. Ce cahier des charges sera ensuite transmis à un prestataire informatique externe qui réalisera la refonte et la migration des données.
    Concrètement, cette mission nécessitera de comprendre et structurer les besoins de chacun des membres de l\'équipe par rapport aux sites internet, pour ensuite les
    consolider dans une vision commune.
</p>'
outcomes = '<li>Un cahier des charges répondant aux besoins de l\'association a été validé en vue d\'être transmis à un partenaire externe'
suggested_start_date = 'n.a'
suggested_end_date = 'n.a.'
suggested_duration = '2,5 journées équivalent temps plein'
suggested_format = 'Discussion d\'introduction, Travail d\'intégration de la part du bénévole, Partage des résultats'
status = '10_open'
author = 'Thomas'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Muziekpublique'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Muziekpublique============================
title = 'Initiation à Google AdWords et au marketing digital'
skills = 'AdWords, Marketing digital'
status = '10_open'
author = 'Thomas'
full_title = 'Initiation à Google AdWords'
impact = 'Soutiens l\'interculturalité par la diffusion des musiques du monde'
objectives = '<p>Afin d\'élargir l\'audience de sa communication sur les concerts et les cours, MuziekPublique envisage de commencer à utiliser Google AdWords.</p>
<p>L\'objectif de cette mission est de donner une rapide formation à l\'équipe de l\'association sur la manière optimale d\'utiliser ce service. Idéalement, ce serait aussi l\'occasion de coacher l\'équipe sur d\'autres tips & tricks concernant le marketing digital en général, en passant par exemple en revue ce qui est utilisé actuellement par l\'association.</p>'
outcomes = '<li>L\'association a compris le fonctionnement d\'AdWords et est prête à utiliser le service</li>
<li>D\'éventuelles pistes d\'améliorations sur les outils de marketing existants ont été proposées</li>'
suggested_start_date = 'n.a.'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/f4ryjpysdp8zr2h/Muziekpublique%20Mission%204.jpeg?dl=0'
suggested_duration = '1/2 jour équivalent temps plein'
suggested_format = 'Séance d\'initiation au nouveau logiciel, Echange sur d\'éventuelles pistes d\'améliorations'

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Muziekpublique'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

title = 'Mise sur pied de la structure juridique de l\'association'
impact = 'Soutiens une initiative citoyenne pour inspirer d\'autres citoyens!'
skills = 'Droit'
full_title = 'Accompagnement de l\'équipe Fovento dans la rédaction de ses suppport juridiques'
objectives = '    <p>Dans le cadre de son activité en tant qu\'ASBL et en tant que plateforme de bénévolat de compétences, Fovento a des besoins juridiques. En effet, elle doit rédiger:</p>
<ul>
<li> Tous les documents liés à sa constitution légale </li>
<li> Les conditions générales de la plateforme </li>
<li> Les conditions d\'utilisation</li>
</ul>
<p>L\'objectif de cette mission est donc que Fovento puisse avoir ces documents afin de pouvoir publier les statuts au Moniteur et intégrer les conditions à sa plateforme.
</p>'
outcomes = '<li>Les statuts ont été rédigés</li> <li>Les conditions générales et d\'utilisation ont été rédigées</li>'
suggested_start_date = 'Juillet 2015'
suggested_end_date = 'Avril 2016'
suggested_duration = '3 journées équivalent temps plein'
suggested_format = 'Discussion d\'introduction, Travail de rédaction de la part du bénévole, Partage des résultats'
status = '40_accomplished'
author = 'Edouard'
picture = 'https://dl.dropboxusercontent.com/s/g3zzd8308tasmp1/flagey.jpg?dl=0'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Fovento'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: Volunteer.where(first_name: "Eric Pascal").first
  )

# CREATE MISSIONS BruSel
title = 'Mise à jour et structuration de la charte des membres du SEL'
impact = 'Soutiens l\'échange de services et le renforcement des liens sociaux'
skills = 'Rédaction, Management'
picture = 'https://dl.dropboxusercontent.com/s/ozhk8a7ggbwac1y/BruSel%20mission%201.jpg?dl=0'
full_title = 'Mise à jour et structuration de la charte des membres du SEL pour en faire un document clair facile et lisible'
objectives = '<p>
    Les activités du SEL sont régies par une charte à laquelle adhèrent tous les membres participants lorsqu’ils rejoignent le réseau. Cette charte décrit les
    grands principes de fonctionnement du réseau, ainsi que les détails liés à la mise en œuvre de ses activités.
</p>
<p>
    La charte actuelle contient une vingtaine d’articles (~2 pages), et est le résultat d’une série d’itérations sur des versions successives. Au cours du
    temps, ces itérations ont amené de la complexité dans la lecture et la compréhension de la charte, ainsi que dans sa maintenabilité. Au final, le document
    est devenu une sorte de patchwork dont la pertinence ne satisfait pas l’équipe de coordination du réseau.
</p>
<p>
    L’objectif de cette mission est de restructurer la charte, pour en faire un document clair et facilement lisible, et en permettant aussi que d’éventuelles
    modifications futures soient plus facilement réalisables. A priori, il s’agira de repartir à zéro pour la structure du document, tout en s’assurant que les
    points importants de la charte existante sont bien reflétés dans le nouveau document. L’équipe de coordination du SEL sera disponible pour orienter et
    valider la proposition de nouveau document conformément aux besoins du réseau.
</p>'
outcomes = '<li>Une version mise à jour de la charte a été rédigée et validée avec l’association</li>'
suggested_start_date = 'n.a'
suggested_end_date = 'n.a'
suggested_duration = '0,5 journée équivalent temps plein'
suggested_format = 'Discussion d\'introduction, Présentation de la charte actuelle, Travail individuel du bénévole, Partage et amendements du document mis à jour'
status = '0_draft'
author = 'Thomas'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('BruSEL'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Schola ULB============================
title = 'Conseils sur le processus de recrutement et les entretiens collectifs'
skills = 'RH, Recrutement'
status = '10_open'
author = 'Thomas'
full_title = 'Conseils sur le processus de recrutement et les entretiens collectifs'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises'
objectives = '<p>Schola recrute les étudiants tuteurs lors d’entretiens collectifs.
<p>L\'objectif de la mission est d\'améliorer ce processus d’entretien collectif en donnant un avis éclairé sur :
<ul>
<li>Le format (durée, taille du groupe ?)</li>
<li>Les compétences observées (pertinence ?)</li>
</ul>'
outcomes = '<li>Une nouvelle grille de lecture des compétences des tuteurs a été établie</li>
<li>D\'éventuels changements ont été apportés dans le format des entretiens</li>'
suggested_start_date = '12/04; 18/05; 02/06 (dates des prochaines séances d\'entretien à observer'
suggested_end_date = 'Septembre 2016'
picture = 'https://dl.dropboxusercontent.com/s/4qhltn9msogjxj9/Schola%20Mission%204.jpg?dl=0'
suggested_duration = '1 jour équivalent temps-plein'
suggested_format = '2h de présentation de notre processus de recrutement, 2h d’observation de notre séance d’information suivie de l’entretien collectif, 2h de débriefing + conseils avec la référente volontariat, 1h de feedback (tél, mail) pour évaluer l’impact des changements apportés'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: volunteer
  )

# CREATE MISSIONS BruSel mission 2
title = 'Analyse de l’historique des données de transactions du SEL'
impact = 'Soutiens l\'échange de services et le renforcement des liens sociaux'
skills = 'Analyse de données'
picture = 'https://dl.dropboxusercontent.com/s/0te3kiiym6plha5/Sel%20mission%202.PNG?dl=0'
full_title = 'Analyse de l’historique des données de transactions du SEL pour en retirer des analyses et statistiques intéressantes'
objectives = '<p>
    Comme le SEL repose sur une plate-forme en ligne pour le suivi des transactions de services, toutes ces transactions sont enregistrées dans une base de
    données. Cette base de données contient l’historique des transactions à partir de 2012.
</p>
<p>
    Chaque transaction est répertoriée selon la catégorie à laquelle elle appartient, le nombre d’heures de travail humain fournies, les deux personnes
    participant à la transaction, et la date de celle-ci.
</p>
<p>
    Bien que la plate-forme dispose d’outils d’analyse des transactions, ceux-ci sont assez sommaires (nombre et proportion de transactions dans chaque
    catégorie, visibles pour chaque année séparément).
</p>
<p>
    L’équipe de coordination du SEL serait intéressée qu’un(e) bénévole se penche sur toutes les données disponibles, et en retire des analyses et statistiques
    intéressantes pour la gestion du réseau (visualisation et volumétrie, tendances, métriques…). Cette mission est donc assez exploratoire, et il appartiendra
    au ou à la bénévole de définir les pistes intéressantes à creuser, en collaboration avec l’équipe du SEL.
</p>'
outcomes = '<li>Une série d’analyses et statistiques ont été réalisées sur les données de transactions du SEL, et ont fourni à l’équipe de coordination une perspective
    intéressante sur les activités du réseau</li>
   <li> Eventuellement, des axes d’évolution du SEL ont été identifiés suite aux résultats des analyses</li>
 '
suggested_start_date = 'n.a'
suggested_end_date = 'n.a'
suggested_duration = '0,5 journée équivalent temps plein'
suggested_format = 'Discussion d\'introduction, Présentation des données disponibles, Travail d\'analyse du bénévole, Partage des résultatset discussion'
status = '0_draft'
author = 'Thomas'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('BruSEL'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  )

#=======Schola ULB============================
title = 'Valorisation du tutorat dans la recherche professionnelle'
skills = 'RH, Recrutement'
status = '10_open'
author = 'Thomas'
full_title = 'Accompagnement des tuteurs dans la valorisation de leur engagement dans leur recherche d\'emploi'
impact = 'Soutiens le développement du tutorat dans les écoles bruxelloises'
objectives = '<p>Les étudiants tuteurs sont des maillons essentiels dans le fonctionnement de Schola.</p>
<p>Nous aimerions promouvoir le tutorat et ainsi développer le réseau potentiel d\'étudiants volontaires.<p>
<p>L\'objectif de la mission est donc de rendre attractif le rôle de tuteur en abordant le tutorat comme un atout majeur dans la recherche d\'emploi.<p>'
outcomes = '<li>L\'étudiant possède un bon aperçu de la manière de valoriser son expérience de tutorat dans sa recherche d\'emploi et est prêt à mettre cet apprentissage en action</li>'
suggested_start_date = '1 matinée - 1ère semaine de juillet / 1ère semaine de septembre (9h-13h30)'
suggested_end_date = 'n.a.'
picture = 'https://dl.dropboxusercontent.com/s/e6mxteu4vocq5as/Schola%20Mission%207.jpg?dl=0'
suggested_duration = '1 jour équivalent temps-plein'
suggested_format = 'Préparation (1/2 j); Rencontre avec un groupe de 10-15 étudiants tuteurs (2h); Travail sur la valorisation du tutorat sur un CV (identification des mots-clés et compétences phare; Travail sur la valorisation du tutorat dans un entretien.'
published_at = Time.now
staffed_at = Time.now
started_at = Time.now
closed_at = Time.now

mission = Mission.create(title: title,
  skills: skills,
  status: status,
  nonprofit_profile: NonprofitProfile.find_by_name('Schola ULB'),
  author: author,
  published_at: published_at,
  staffed_at: staffed_at,
  started_at: started_at,
  closed_at: closed_at,
  full_title: full_title,
  objectives: objectives,
  outcomes: outcomes,
  suggested_start_date: suggested_start_date,
  suggested_end_date: suggested_end_date,
  picture: picture,
  impact: impact,
  suggested_duration: suggested_duration,
  suggested_format: suggested_format,
  volunteer: volunteer
  )
