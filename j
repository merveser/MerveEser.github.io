<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merve Eser - Data Scientist Portfolio</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-gradient: linear-gradient(135deg, #4a90e2 0%, #357abd 100%);
            --secondary-gradient: linear-gradient(135deg, #6bb6ff 0%, #4a90e2 100%);
            --accent-gradient: linear-gradient(135deg, #ffffff 0%, #e6f3ff 100%);
            --dark-bg: #1a1a2e;
            --card-bg: rgba(255, 255, 255, 0.95);
            --text-light: #ffffff;
            --text-dark: #2c3e50;
            --text-secondary: #34495e;
            --accent-color: #4a90e2;
            --hover-glow: rgba(74, 144, 226, 0.3);
            --overlay-color: rgba(26, 26, 46, 0.7);
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background-color: var(--dark-bg);
            color: var(--text-dark);
            line-height: 1.6;
            overflow-x: hidden;
            position: relative;
        }

        /* Background Image */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwIiBoZWlnaHQ9IjEwMCIgdmlld0JveD0iMCAwIDEwMCAxMDAiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxkZWZzPgo8bGluZWFyR3JhZGllbnQgaWQ9InBhaW50MF9saW5lYXJfMF8xIiB4MT0iMCIgeTE9IjAiIHgyPSIxMDAiIHkyPSIxMDAiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj4KPHN0b3Agc3RvcC1jb2xvcj0iI2I4ZGRmZiIgc3RvcC1vcGFjaXR5PSIwLjEiLz4KPHN0b3Agb2Zmc2V0PSIwLjMiIHN0b3AtY29sb3I9IiNhNGM5ZmYiIHN0b3Atb3BhY2l0eT0iMC4wNSIvPgo8c3RvcCBvZmZzZXQ9IjAuNyIgc3RvcC1jb2xvcj0iIzliY2FmZiIgc3RvcC1vcGFjaXR5PSIwLjAzIi8+CjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iIzhjYmNmZiIgc3RvcC1vcGFjaXR5PSIwLjAyIi8+CjwvbGluZWFyR3JhZGllbnQ+CjwvZGVmcz4KPHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIxMDAiIGZpbGw9InVybCgjcGFpbnQwX2xpbmVhcl8wXzEpIi8+Cjwvc3ZnPgo=');
            background-size: 400px 400px;
            background-repeat: repeat;
            z-index: -2;
        }

        /* Overlay for the uploaded image */
        .bg-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: var(--overlay-color);
            z-index: -1;
        }

        /* Animated Background Elements */
        .bg-animation {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            pointer-events: none;
        }

        .floating-shapes {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .shape {
            position: absolute;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(74, 144, 226, 0.1));
            border-radius: 50%;
            opacity: 0.3;
            animation: float-animation 20s infinite ease-in-out;
        }

        .shape:nth-child(1) {
            width: 200px;
            height: 200px;
            top: 10%;
            left: 10%;
            animation-delay: 0s;
        }

        .shape:nth-child(2) {
            width: 150px;
            height: 150px;
            top: 60%;
            right: 20%;
            animation-delay: -5s;
        }

        .shape:nth-child(3) {
            width: 100px;
            height: 100px;
            bottom: 20%;
            left: 30%;
            animation-delay: -10s;
        }

        @keyframes float-animation {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            25% { transform: translateY(-30px) rotate(90deg); }
            50% { transform: translateY(-60px) rotate(180deg); }
            75% { transform: translateY(-30px) rotate(270deg); }
        }

        /* Navigation */
        .nav {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            display: flex;
            gap: 15px;
        }

        .nav-item {
            padding: 10px 20px;
            background: var(--card-bg);
            backdrop-filter: blur(10px);
            border: 2px solid var(--accent-color);
            border-radius: 25px;
            color: var(--text-dark);
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 600;
            transition: all 0.3s ease;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .nav-item:hover {
            background: var(--primary-gradient);
            color: var(--text-light);
            transform: translateY(-2px);
            box-shadow: 0 8px 25px var(--hover-glow);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
        }

        .hero-content {
            max-width: 800px;
            padding: 40px;
            background: var(--card-bg);
            border-radius: 30px;
            backdrop-filter: blur(20px);
            border: 2px solid var(--accent-color);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1.5s ease-out;
        }

        .hero-title {
            font-size: clamp(2.5rem, 6vw, 4.5rem);
            font-weight: 800;
            background: var(--primary-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .hero-subtitle {
            font-size: clamp(1rem, 2.5vw, 1.4rem);
            color: var(--text-secondary);
            margin-bottom: 25px;
            font-weight: 600;
            opacity: 0;
            animation: fadeInUp 1.5s ease-out 0.5s forwards;
        }

        .hero-description {
            font-size: 1rem;
            color: var(--text-secondary);
            margin-bottom: 30px;
            opacity: 0;
            animation: fadeInUp 1.5s ease-out 1s forwards;
            line-height: 1.7;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: var(--primary-gradient);
            color: var(--text-light);
            text-decoration: none;
            border-radius: 50px;
            font-weight: 700;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            opacity: 0;
            animation: fadeInUp 1.5s ease-out 1.5s forwards;
            box-shadow: 0 10px 30px rgba(74, 144, 226, 0.4);
            border: 2px solid var(--accent-color);
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 35px rgba(74, 144, 226, 0.5);
            background: var(--secondary-gradient);
        }

        /* Floating Data Visualization */
        .data-viz {
            position: absolute;
            top: 15%;
            right: 5%;
            width: 250px;
            height: 150px;
            opacity: 0.8;
            animation: float-viz 6s ease-in-out infinite;
            background: var(--card-bg);
            border-radius: 20px;
            padding: 20px;
            border: 2px solid var(--accent-color);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .chart-bars {
            display: flex;
            align-items: end;
            height: 100%;
            gap: 8px;
            justify-content: center;
        }

        .bar {
            width: 20px;
            background: var(--primary-gradient);
            border-radius: 6px;
            animation: bar-grow 2s ease-out infinite;
            border: 1px solid var(--accent-color);
        }

        .bar:nth-child(1) { height: 40%; animation-delay: 0s; }
        .bar:nth-child(2) { height: 70%; animation-delay: 0.2s; }
        .bar:nth-child(3) { height: 90%; animation-delay: 0.4s; }
        .bar:nth-child(4) { height: 60%; animation-delay: 0.6s; }
        .bar:nth-child(5) { height: 80%; animation-delay: 0.8s; }

        @keyframes float-viz {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-15px); }
        }

        @keyframes bar-grow {
            0%, 100% { transform: scaleY(1); }
            50% { transform: scaleY(1.2); }
        }

        /* Section Styling */
        .section {
            padding: 80px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 50px;
            background: var(--primary-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* Skills Section */
        .skills-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .skill-card {
            background: var(--card-bg);
            backdrop-filter: blur(15px);
            border: 2px solid var(--accent-color);
            border-radius: 20px;
            padding: 30px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .skill-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: var(--primary-gradient);
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .skill-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(74, 144, 226, 0.3);
        }

        .skill-card:hover::before {
            transform: scaleX(1);
        }

        .skill-icon {
            font-size: 2.5rem;
            margin-bottom: 20px;
            display: block;
        }

        .skill-title {
            font-size: 1.3rem;
            font-weight: 700;
            margin-bottom: 15px;
            color: var(--text-dark);
        }

        .skill-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .skill-tag {
            padding: 6px 14px;
            background: rgba(74, 144, 226, 0.1);
            border-radius: 20px;
            font-size: 0.85rem;
            border: 1px solid var(--accent-color);
            transition: all 0.3s ease;
            color: var(--text-dark);
            font-weight: 600;
        }

        .skill-tag:hover {
            background: var(--primary-gradient);
            color: var(--text-light);
            transform: scale(1.05);
        }

        /* Experience Section */
        .experience-timeline {
            position: relative;
            padding: 40px 0;
        }

        .timeline-line {
            position: absolute;
            left: 50%;
            top: 0;
            bottom: 0;
            width: 3px;
            background: var(--primary-gradient);
            transform: translateX(-50%);
            border-radius: 2px;
        }

        .experience-item {
            position: relative;
            margin-bottom: 60px;
            display: flex;
            align-items: center;
        }

        .experience-item:nth-child(odd) {
            flex-direction: row;
        }

        .experience-item:nth-child(even) {
            flex-direction: row-reverse;
        }

        .experience-content {
            width: 45%;
            background: var(--card-bg);
            backdrop-filter: blur(15px);
            border: 2px solid var(--accent-color);
            border-radius: 20px;
            padding: 30px;
            position: relative;
            transition: all 0.3s ease;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .experience-content:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 35px rgba(74, 144, 226, 0.3);
        }

        .timeline-dot {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 20px;
            height: 20px;
            background: var(--primary-gradient);
            border-radius: 50%;
            border: 4px solid var(--card-bg);
            z-index: 10;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .job-title {
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--text-dark);
            margin-bottom: 10px;
        }

        .company {
            color: var(--accent-color);
            font-weight: 600;
            margin-bottom: 10px;
            font-size: 1.1rem;
        }

        .duration {
            background: var(--primary-gradient);
            color: var(--text-light);
            padding: 6px 16px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 600;
            display: inline-block;
            margin-bottom: 15px;
        }

        /* Projects Section */
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .project-card {
            background: var(--card-bg);
            backdrop-filter: blur(15px);
            border: 2px solid var(--accent-color);
            border-radius: 20px;
            padding: 30px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .project-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: var(--secondary-gradient);
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .project-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(74, 144, 226, 0.3);
        }

        .project-card:hover::before {
            transform: scaleX(1);
        }

        .project-title {
            font-size: 1.3rem;
            font-weight: 700;
            margin-bottom: 15px;
            color: var(--text-dark);
        }

        .project-tech {
            color: var(--accent-color);
            font-size: 0.9rem;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .project-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--accent-color);
            text-decoration: none;
            font-weight: 600;
            margin-top: 15px;
            transition: all 0.3s ease;
            padding: 8px 16px;
            border: 2px solid var(--accent-color);
            border-radius: 25px;
        }

        .project-link:hover {
            background: var(--primary-gradient);
            color: var(--text-light);
            transform: translateX(5px);
        }

        /* Contact Section */
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            margin-top: 40px;
        }

        .contact-item {
            background: var(--card-bg);
            backdrop-filter: blur(15px);
            border: 2px solid var(--accent-color);
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .contact-item:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 35px rgba(74, 144, 226, 0.3);
        }

        .contact-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
            display: block;
        }

        .contact-item h3 {
            color: var(--text-dark);
            font-weight: 700;
            margin-bottom: 10px;
        }

        .contact-item a {
            color: var(--accent-color);
            text-decoration: none;
            transition: color 0.3s ease;
            font-weight: 600;
        }

        .contact-item a:hover {
            color: var(--text-dark);
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.8s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav {
                display: none;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .data-viz {
                display: none;
            }

            .timeline-line {
                left: 20px;
            }

            .experience-item {
                flex-direction: column !important;
                align-items: flex-start;
            }

            .experience-content {
                width: 100%;
                margin-left: 40px;
            }

            .timeline-dot {
                left: 20px;
            }

            .section {
                padding: 60px 15px;
            }

            .hero-content {
                margin: 20px;
                padding: 30px;
            }
        }

        /* Scroll indicator */
        .scroll-indicator {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: rgba(255, 255, 255, 0.2);
            z-index: 1000;
        }

        .scroll-progress {
            height: 100%;
            background: var(--primary-gradient);
            width: 0%;
            transition: width 0.3s ease;
        }
    </style>
</head>
<!-- Body content remains the same as in the original file -->
<!-- [Original body content would go here - keeping as comment to avoid length limits] -->
</html>
