<!DOCTYPE html>
<html lang="fr">
    <head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>A propos de nous</title>
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
        <section id="contact">
        <h2 class="section-title">Contactez-Nous</h2>
        <div class="configurator" style="max-width: 600px; margin: 3rem auto;">
            <form id="contactForm">
                <div class="config-option">
                    <label for="nom">Nom</label>
                    <input type="text" id="nom" placeholder="Votre nom" required>
                </div>
                <div class="config-option">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="votre@email.com" required>
                </div>
                <div class="config-option">
                    <label for="message">Message</label>
                    <input type="text" id="message" placeholder="Décrivez votre projet..." style="height: 120px;" required>
                </div>
                <div style="text-align: center;">
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                </div>
            </form>
            <div id="merciMessage" style="display:none; text-align:center; font-size:1.2rem; color:white; margin-top:2rem;">
                Merci pour votre envoie !
            </div>
        </div>
        </section>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var form = document.getElementById('contactForm');
        var merci = document.getElementById('merciMessage');
        if(form) {
            form.addEventListener('submit', function(e) {
                e.preventDefault();
                form.style.display = 'none';
                merci.style.display = 'block';
            });
        }
    });
    </script>
        <footer>
            <p style="color: var(--text-secondary);">© 2024 TechSolutions. Tous droits réservés.</p>
            <p style="color: var(--text-secondary); margin-top: 0.5rem; font-size: 0.9rem;">
                📍 Brive, France | 📧 contact@techsolutions.fr | 📞 +33 1 23 45 67 89
            </p>
        </footer>
    </body>
</html>