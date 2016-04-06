#=======DUO FOR A JOB============================
title = 'Rédaction d\'une convention de partenariat avec les entreprises'
skills = 'Droit, Stratégie'
status = 'staffed'
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
volunteer = Volunteer.first

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
  volunteer: volunteer
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
status = 'open'
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
  suggested_format: suggested_format
  )
