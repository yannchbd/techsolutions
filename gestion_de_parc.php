<?php
require_once __DIR__ . '/includes/db.php';

$pcs = pdo()->query('SELECT id, name, image_url FROM pcs ORDER BY id')->fetchAll();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechSolutions</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .card {
            display: flex;
            flex-direction: column;
            height: 100%;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }
        .card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            display: block;
        }
        .card .p {
            flex: 1;
            display: flex;
            flex-direction: column;
            padding: 1rem;
        }
        .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
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
                <li><a href="gestion_de_parc.php">Gestion de parc</a></li>
            </ul>
        </nav>
    </header>
    <body>
<h1>Nos PC</h1>
<section class="grid">
  <div class="cards-grid">
    <?php foreach ($pcs as $pc): ?>
      <article class="card">
        <img src="<?= e($pc['image_url']) ?>" alt="Photo de <?= e($pc['name']) ?>">
        <div class="p">
          <h3><?= e($pc['name']) ?></h3>
          <details>
            <summary>Voir les composants</summary>
            <ul>
              <?php
                $stmt = pdo()->prepare('
                  SELECT c.name, c.description
                  FROM pc_components pc
                  JOIN components c ON c.id = pc.component_id
                  WHERE pc.pc_id = ?
                ');
                $stmt->execute([(int)$pc['id']]);
                foreach ($stmt->fetchAll() as $row): ?>
                  <li><?= e($row['description']) ?> -> <?= e($row['name']) ?></li>
              <?php endforeach; ?>
            </ul>
          </details>
        </div>
      </article>
    <?php endforeach; ?>
</section>
<footer>
        <div class="footer-content">
            </div>
            <p style="color: var(--text-secondary);">© 2024 TechSolutions. Tous droits réservés.</p>
            <p style="color: var(--text-secondary); margin-top: 0.5rem; font-size: 0.9rem;">
                📍 Brive, France | 📧 contact@techsolutions.fr | 📞 +33 1 23 45 67 89
            </p>
        </div>
</body>
</html>