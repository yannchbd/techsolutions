<!DOCTYPE php>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualitées</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
        <nav>
            <div class="logo">
                <img src="logo_TechSolutions.jpg" alt="Logo TechSolutions" style="height:40px; vertical-align:middle; margin-right:8px;">
            </div>
            <ul class="nav-links">
                <li><a href="index.php">Accueil</a></li>
                <li><a href="about.php">Actualitées</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="login.php">Comptes</a></li>
            </ul>
        </nav>
    </header>
            
        <main>
            <h1>Actualités</h1>
            <section class="news-container">
                <article class="news-item">
                    <div class="news-header">
                        <h2>Lancement de notre suite logicielle « CloudSync Pro »</h2>
                        <p class="news-date">15 novembre 2024</p>
                    </div>
                    <p class="news-content">
                        Nous sommes fiers d'annoncer la sortie officielle de CloudSync Pro, notre nouvelle solution de gestion de données 
                        en cloud. Développée par notre équipe d'ingénieurs spécialisés, cette application offre une synchronisation 
                        sécurisée et en temps réel de vos fichiers sur plusieurs appareils.
                    </p>
                    <p class="news-content">
                        CloudSync Pro intègre un chiffrement de bout en bout, une interface intuitive et une API robuste pour les 
                        développeurs. Disponible sur Windows, macOS et Linux, elle révolutionne la façon de collaborer en équipe. 
                        Essai gratuit de 30 jours à partir d'aujourd'hui !
                    </p>
                </article>

                <article class="news-item">
                    <div class="news-header">
                        <h2>TechSolutions remporte le prix du Meilleur Logiciel d'Entreprise 2024</h2>
                        <p class="news-date">10 novembre 2024</p>
                    </div>
                    <p class="news-content">
                        Notre entreprise a été récompensée lors du concours international « Tech Innovation Awards » pour la qualité 
                        et l'innovation de nos solutions logicielles. Ce prix reconnaît notre expertise en développement d'applications 
                        performantes et sécurisées.
                    </p>
                    <p class="news-content">
                        Nos développeurs ont créé des solutions qui simplifient la vie de millions d'utilisateurs à travers le monde. 
                        Cette distinction nous pousse à continuer l'innovation et l'excellence dans tous nos projets futurs.
                    </p>
                </article>

                <article class="news-item">
                    <div class="news-header">
                        <h2>Nouveau framework JavaScript « TechFlow » en bêta publique</h2>
                        <p class="news-date">5 novembre 2024</p>
                    </div>
                    <p class="news-content">
                        TechSolutions annonce la disponibilité en bêta de TechFlow, un framework JavaScript moderne conçu pour 
                        accélérer le développement d'applications web réactives. Cet outil intègre la gestion d'état optimisée, 
                        le rendu côté serveur et une compilation ultra-rapide.
                    </p>
                    <p class="news-content">
                        TechFlow est open-source et bénéficie du soutien actif de notre communauté de développeurs. Des formations 
                        gratuites et une documentation complète sont disponibles sur notre plateforme. Rejoignez la révolution du 
                        développement web moderne !
                    </p>
                </article>
            </section>
        </main>

    </body>
    <style>
        main {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 10rem 5% 2rem 5%;
            margin-top: 5rem;
        }
        
        main h1 {
            text-align: center;
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 3rem;
            position: relative;
            color: var(--text-primary);
        }
        
        main h1::after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: var(--gradient-tech);
            margin: 1rem auto 0;
            border-radius: 2px;
        }
        
        .news-container {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }
        
        .news-item {
            background: var(--card-bg);
            border-left: 5px solid var(--primary-color);
            border-radius: 15px;
            padding: 2rem;
            transition: var(--transition);
            border: 1px solid rgba(0, 212, 255, 0.1);
            position: relative;
            overflow: hidden;
        }
        
        .news-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: var(--gradient-tech);
            transform: scaleX(0);
            transition: var(--transition);
        }
        
        .news-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary-color);
        }
        
        .news-item:hover::before {
            transform: scaleX(1);
        }
        
        .news-header h2 {
            color: var(--text-primary);
            margin: 0 0 0.75rem 0;
            font-size: 1.6rem;
            font-weight: 700;
        }
        
        .news-date {
            color: var(--primary-color);
            font-size: 0.85rem;
            margin: 0;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .news-content {
            color: var(--text-secondary);
            line-height: 1.8;
            margin: 1.25rem 0;
            font-size: 1rem;
        }
        
        @media (max-width: 768px) {
            main {
                padding: 1rem 5%;
            }
            
            main h1 {
                font-size: 2rem;
                margin-bottom: 2rem;
            }
            
            .news-item {
                padding: 1.5rem;
            }
            
            .news-header h2 {
                font-size: 1.3rem;
            }
        }
    </style>
    <footer>
        <p style="color: var(--text-secondary);">© 2024 TechSolutions. Tous droits réservés.</p>
            <p style="color: var(--text-secondary); margin-top: 0.5rem; font-size: 0.9rem;">
                📍 Brive, France | 📧 contact@techsolutions.fr | 📞 +33 1 23 45 67 89
            </p>
    </footer>
</html>