import 'package:flutter/material.dart';

void main() {
  runApp(const BrutalistPortfolioApp());
}

class BrutalistPortfolioApp extends StatelessWidget {
  const BrutalistPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Wasim - Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Courier', // Monospace font for brutalist look
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.grey,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.w900, color: Colors.black, letterSpacing: -2),
          displayMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Colors.black),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        useMaterial3: true,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeader(),
                const SizedBox(height: 32),
                _buildSectionTitle('PROFESSIONAL SUMMARY'),
                _buildBoxedText(
                    'AWS-focused Cloud & DevOps Engineer with hands-on experience deploying and managing production infrastructure for enterprise clients. Skilled in building highly available environments, automating CI/CD pipelines, and driving digital transformation through modern web architectures. Experienced in full-stack deployments (Next.js, Python, Node.js) and committed to optimizing system performance, streamlining system architecture, and reducing technical debt.'),
                const SizedBox(height: 32),
                _buildSectionTitle('EXPERIENCE'),
                _buildExperienceItem(
                  'HashTurn Multan',
                  'DevOps and Automation Engineer',
                  'Oct 2025 – May 2026',
                  '• Architected highly available, fault-tolerant cloud infrastructure, provisioning hardened RDP / VPS environments to accelerate team development cycles and ensure secure remote operations.\n• Deployed and managed scalable cross-stack applications (MERN, Python Flask) on EC2 / VPS utilizing NGINX reverse proxies, strict SSL termination, and systemd service management.',
                ),
                _buildExperienceItem(
                  'Systems Limited Lahore',
                  'DevOps Intern',
                  'Jul 2025 – Sep 2025',
                  '• Engineered an immutable, globally distributed portfolio via AWS S3, CloudFront, and GitHub Actions, successfully reducing latency by 50% through automated edge invalidation.\n• Provisioned multi-cloud infrastructure (AWS and Azure) utilizing Terraform and secured CI/CD pipelines enforcing least-privilege IAM roles.\n• Orchestrated Dockerized MERN and Flask applications with NGINX reverse proxies and SSL termination for zero-downtime production releases.',
                ),
                _buildExperienceItem(
                  'Intl. Cricket Masters Remote',
                  'Website & Digital Outreach Coordinator',
                  'Dec 2024 – Feb 2025',
                  '• Managed cloud platforms and optimized global web infrastructure, directly contributing to a 15-20% increase in digital reach and cross-browser delivery.',
                ),
                _buildExperienceItem(
                  'Faysal Bank Limited Multan',
                  'Networking & Infrastructure Intern',
                  'Jul 2024 – Aug 2024',
                  '• Resolved 150+ network and software tickets, achieving and maintaining a 95% first-call resolution rate.\n• Configured enterprise routers and switches, directly improving overarching system uptime by 30%.',
                ),
                const SizedBox(height: 32),
                _buildSectionTitle('TECHNICAL PROJECTS'),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    _buildProjectCard('KPRY - Local Fashion Discovery Engine', 'Next.js, AI, Web Scraping', 'Developing an AI-powered aggregator for Pakistan’s streetwear ecosystem utilizing a high-performance Next.js frontend, advanced deduplication scraping logic, and real-time cross-brand search algorithms.'),
                    _buildProjectCard('Secure Full-Stack Data Aggregator', 'Django, PostgreSQL, NGINX', 'Architected a containerized stack on a Linux VM. Secured edge routing via NGINX, Cloudflare DDoS mitigation, and Certbot Strict SSL. Managed as a persistent systemd service.'),
                    _buildProjectCard('HashDash - HR & Live Monitoring', 'Electron, Vite, WebRTC', 'Built a cross-platform desktop HR system with real-time screen monitoring. Deployed backend on a Linux VPS, configured NGINX reverse proxy with SSL.'),
                    _buildProjectCard('RAG-Based Intelligent Query Bot', 'LangChain, FAISS, OpenAI GPT', 'Built an integration with a Streamlit UI for high-accuracy semantic search and document retrieval.'),
                    _buildProjectCard('Cloud-Native Flask S3 Uploader', 'Flask, Gunicorn, AWS EC2', 'Application orchestrated with Gunicorn and NGINX for secure, systemd-managed S3 uploads.'),
                    _buildProjectCard('Immutable Web Orchestration', 'AWS S3, CloudFront, GitHub Actions', 'Integrated distributions with CI/CD for automated, ephemeral web deployments.'),
                    _buildProjectCard('3-Tier MERN Stack Platform', 'MERN, Docker Compose', 'Isolated frontend, backend, and DB environments via Docker Compose with NGINX proxying.'),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildSectionTitle('EDUCATION'),
                          _buildEducationItem('Bachelor of Computer Science', 'Bahauddin Zakariya University\n2022 – June 2026\nCGPA: 3.82/4.00'),
                          _buildEducationItem('FSc Pre-Engineering', 'Punjab College\n2020 – 2022\nGrade: A'),
                          const SizedBox(height: 32),
                          _buildSectionTitle('TECH SKILLS'),
                          _buildSkillRow('OS', 'Ubuntu, Kali and distros'),
                          _buildSkillRow('Cloud', 'AWS, Azure, GCP, Docker, Terraform'),
                          _buildSkillRow('Servers', 'NGINX, Gunicorn, Caddy, WordPress'),
                          _buildSkillRow('Languages', 'Bash, Python, JS, Next.js, PHP, C++'),
                          _buildSkillRow('Databases', 'PostgreSQL, MySQL, MongoDB'),
                          _buildSkillRow('Tools', 'WebRTC, Systemd, Git, GitHub Actions'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildSectionTitle('CERTIFICATIONS'),
                          _buildListItems([
                            'IBM: Containers, K8s & OpenShift',
                            'Oracle: Cloud Infra Foundations',
                            'Postman: API Fundamentals Expert',
                            'Google Cloud: Security Principles',
                            'Google Cloud: Risk Management',
                            'Google Cloud: Core Infrastructure',
                            'US-DHS: IT & ICS Cybersecurity',
                            'US-DHS: Vulnerabilities Analysis',
                            'Coursera: Starting with Docker',
                            'Atlassian: Version Control with Git',
                          ]),
                          const SizedBox(height: 32),
                          _buildSectionTitle('LEADERSHIP & SOFT SKILLS'),
                          _buildListItems([
                            'Co-Founder: Taj Foundation (2021 – Present)',
                            'DevOps Lead: MLSA Multan (2024 – 2025)',
                            'Member: GDSC-BZU (2024 – 2025)',
                            'Excellent Communication',
                            'Strategic Problem Solving',
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                _buildBrutalistFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.black, width: 4),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(8, 8), blurRadius: 0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'AHMAD WASIM',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: -3,
            ),
          ),
          const Text(
            'CLOUD & DEVOPS ENGINEER',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 16),
          Container(height: 4, color: Colors.white),
          const SizedBox(height: 16),
          const Text(
            'Lahore/Multan | +92 333 6736178\nmo.ahmedwasiim@gmail.com | github.com/ahmedwsiim',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 4,
            top: 4,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.grey,
                letterSpacing: -1,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoxedText(String text) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 4),
        boxShadow: const [
          BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 0)
        ],
      ),
      child: Text(text, style: const TextStyle(fontSize: 16, height: 1.5)),
    );
  }

  Widget _buildExperienceItem(String company, String role, String date, String details) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(color: Colors.black, width: 8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(company.toUpperCase(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
              ),
              Text(date, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 4),
          Text(role.toUpperCase(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
          const SizedBox(height: 12),
          Text(details, style: const TextStyle(fontSize: 14, height: 1.6)),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String tech, String desc) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 4),
        boxShadow: const [
          BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: Colors.black,
            child: Text(tech.toUpperCase(), style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 12),
          Text(desc, style: const TextStyle(fontSize: 14, height: 1.4)),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String degree, String details) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 8),
          Text(details, style: const TextStyle(height: 1.4)),
        ],
      ),
    );
  }

  Widget _buildSkillRow(String category, String skills) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(category.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w900)),
          ),
          Expanded(child: Text(skills)),
        ],
      ),
    );
  }

  Widget _buildListItems(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('× ', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            Expanded(child: Text(e, style: const TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildBrutalistFooter() {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.black,
      child: const Center(
        child: Text(
          'END OF FILE.',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 8,
          ),
        ),
      ),
    );
  }
}
