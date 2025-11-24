<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['admin-login'])) {
    $username = $_POST['admin-username'] ?? '';
    $password = $_POST['admin-password'] ?? '';
    
    if ($username === 'ADMIN' && $password === 'admin123') {
        $_SESSION['admin_logged_in'] = true;
        header('Location: gestion_de_parc.php');
        exit;
    }
}
?>
<!DOCTYPE html>>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Comptes</title>
    </head>
    <style>
        html, body {
                height: 100%;
                margin: 0;
            }
            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                font-family: inherit;
            }
            main {
                flex: 1 0 auto;
                display: flex;
                align-items: center; /* centre vertical */
                justify-content: center; /* centre horizontal */
                padding: 2rem;
                box-sizing: border-box;
            }
            .login-container {
                width: 100%;
                max-width: 800px;
                margin: 0 auto;
            }
            .login-form-wrapper {
                box-shadow: 0 2px 12px rgba(0,0,0,0.08);
                border-radius: 12px;
                overflow: hidden;
                display: flex;
                margin-bottom: 1rem;
            }
            .login-section {
                display: none;
            }
            .login-section.active {
                display: flex;
            }
            .admin-link {
                text-align: center;
                margin-top: 1rem;
            }
            .admin-link a {
                color: #43a047;
                text-decoration: none;
                font-weight: bold;
                cursor: pointer;
                font-size: 0.9rem;
            }
            .admin-link a:hover {
                text-decoration: underline;
            }
            @media (max-width: 700px) {
                .login-container { flex-direction: column; }
                .login-section { padding: 1.5rem; }
            }
    </style>
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
            <div class="login-container">
                <div class="login-form-wrapper">
                    <!-- Partie Admin -->
                    <div class="login-section" id="admin-section" style="flex:1; background:rgba(10, 14, 39, 0.95); padding:2rem; flex-direction:column; align-items:center; justify-content:center;">
                        <h2>Administrateur</h2>
                        <form method="POST" style="width:100%; max-width:300px;">
                            <div style="margin-bottom:1rem;">
                                <label for="admin-username">Nom d'utilisateur</label>
                                <input type="text" id="admin-username" name="admin-username" placeholder="Admin" style="width:100%; padding:0.5rem;" required>
                            </div>
                            <div style="margin-bottom:1rem;">
                                <label for="admin-password">Mot de passe</label>
                                <input type="password" id="admin-password" name="admin-password" placeholder="Mot de passe" style="width:100%; padding:0.5rem;" required>
                            </div>
                            <button type="submit" name="admin-login" style="width:100%; padding:0.7rem; background:#43a047; color:white; border:none; border-radius:4px; font-weight:bold;">Connexion</button>
                        </form>
                    </div>
                    <!-- Partie Client -->
                    <div class="login-section active" id="client-section" style="flex:1; background:rgba(10, 14, 39, 0.95); padding:2rem; flex-direction:column; align-items:center; justify-content:center;">
                        <h2>Client</h2>
                        <form style="width:100%; max-width:300px;">
                            <div style="margin-bottom:1rem;">
                                <label for="client-email">Email</label>
                                <input type="email" id="client-email" name="client-email" placeholder="Votre email" style="width:100%; padding:0.5rem;">
                            </div>
                            <div style="margin-bottom:1rem;">
                                <label for="client-password">Mot de passe</label>
                                <input type="password" id="client-password" name="client-password" placeholder="Mot de passe" style="width:100%; padding:0.5rem;">
                            </div>
                            <button type="submit" style="width:100%; padding:0.7rem; background:#43a047; color:white; border:none; border-radius:4px; font-weight:bold;">Connexion</button>
                        </form>
                    </div>
                </div>
                <div class="admin-link">
                    <a onclick="toggleAdmin()" id="toggle-link">Admin</a>
                </div>
            </div>
        </main>
        <script>
            function toggleAdmin() {
                const clientSection = document.getElementById('client-section');
                const adminSection = document.getElementById('admin-section');
                const toggleLink = document.getElementById('toggle-link');
                
                // Basculer l'affichage
                clientSection.classList.toggle('active');
                adminSection.classList.toggle('active');
                
                // Changer le texte du lien
                if (clientSection.classList.contains('active')) {
                    toggleLink.textContent = 'Admin';
                } else {
                    toggleLink.textContent = 'Client';
                }
            }
        </script>
    </body>
    <footer>
        <p style="color: var(--text-secondary);">© 2024 TechSolutions. Tous droits réservés.</p>
        <p style="color: var(--text-secondary); margin-top: 0.5rem; font-size: 0.9rem;">
                📍 Brive, France | 📧 contact@techsolutions.fr | 📞 +33 1 23 45 67 89
        </p>
    </footer>
</html>