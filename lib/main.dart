import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const PremiumBrutalistApp());
}

class PremiumBrutalistApp extends StatelessWidget {
  const PremiumBrutalistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Wasim - Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF0F0F0), // Slight off-white for contrast against pure white cards
        textTheme: GoogleFonts.spaceGroteskTextTheme().apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.white,
        ),
      ),
      home: const PortfolioLayout(),
    );
  }
}

class PortfolioLayout extends StatelessWidget {
  const PortfolioLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Grid Pattern
          Positioned.fill(
            child: CustomPaint(painter: GridPainter()),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 64.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHero(),
                    const SizedBox(height: 64),
                    _buildDivider(),
                    _buildSectionHeader('01', 'PROFESSIONAL SUMMARY'),
                    _buildSummaryCard(),
                    const SizedBox(height: 64),
                    _buildDivider(),
                    _buildSectionHeader('02', 'EXPERIENCE'),
                    _buildExperienceTimeline(),
                    const SizedBox(height: 64),
                    _buildDivider(),
                    _buildSectionHeader('03', 'TECHNICAL PROJECTS'),
                    _buildProjectsGrid(),
                    const SizedBox(height: 64),
                    _buildDivider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('04', 'EDUCATION'),
                              _buildEducationItem('Bachelor of Computer Science', 'Bahauddin Zakariya University\n2022 – June 2026\nCGPA: 3.82/4.00'),
                              const SizedBox(height: 16),
                              _buildEducationItem('FSc Pre-Engineering', 'Punjab College\n2020 – 2022 | Grade: A'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 48),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('05', 'SKILLS & CERTS'),
                              _buildSkillPill('AWS, Azure, GCP, Docker, Terraform'),
                              _buildSkillPill('Next.js, Python, Node.js, C++'),
                              _buildSkillPill('NGINX, PostgreSQL, MongoDB, Git'),
                              const SizedBox(height: 16),
                              _buildListText('• IBM: Containers, K8s & OpenShift'),
                              _buildListText('• Oracle: Cloud Infra Foundations'),
                              _buildListText('• Google Cloud: Security Principles'),
                              _buildListText('• US-DHS: IT & ICS Cybersecurity'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 128),
                    _buildFooter(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHero() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'AHMAD WASIM',
          style: GoogleFonts.spaceGrotesk(
            fontSize: 88,
            fontWeight: FontWeight.w900,
            letterSpacing: -4,
            height: 1.0,
            color: Colors.black,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 24),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: const BoxDecoration(color: Colors.black),
          child: Text(
            'CLOUD & DEVOPS ENGINEER',
            style: GoogleFonts.spaceMono(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
        Row(
          children: [
            _buildContactItem('Lahore/Multan'),
            _buildContactItem('+92 333 6736178'),
            _buildContactItem('mo.ahmedwasiim@gmail.com'),
            _buildContactItem('github.com/ahmedwsiim'),
          ],
        ),
      ],
    );
  }

  Widget _buildContactItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Row(
        children: [
          const Icon(Icons.arrow_forward_ios, size: 12),
          const SizedBox(width: 8),
          SelectableText(
            text,
            style: GoogleFonts.spaceMono(fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 4,
      width: double.infinity,
      color: Colors.black,
      margin: const EdgeInsets.only(bottom: 32),
    );
  }

  Widget _buildSectionHeader(String number, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        children: [
          Text(
            number,
            style: GoogleFonts.spaceMono(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(
        'AWS-focused Cloud & DevOps Engineer with hands-on experience deploying and managing production infrastructure for enterprise clients. Skilled in building highly available environments, automating CI/CD pipelines, and driving digital transformation through modern web architectures. Experienced in full-stack deployments (Next.js, Python, Node.js) and committed to optimizing system performance, streamlining system architecture, and reducing technical debt.',
        style: GoogleFonts.spaceGrotesk(
          fontSize: 20,
          height: 1.6,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildExperienceTimeline() {
    return Column(
      children: [
        _buildExpRow('HashTurn Multan', 'DevOps and Automation Engineer', 'Oct 2025 – May 2026', '• Architected highly available, fault-tolerant cloud infrastructure, provisioning hardened RDP / VPS environments to accelerate team development cycles and ensure secure remote operations.\n• Deployed and managed scalable cross-stack applications (MERN, Python Flask) on EC2 / VPS utilizing NGINX reverse proxies, strict SSL termination, and systemd service management.'),
        _buildExpRow('Systems Limited Lahore', 'DevOps Intern', 'Jul 2025 – Sep 2025', '• Engineered an immutable, globally distributed portfolio via AWS S3, CloudFront, and GitHub Actions, successfully reducing latency by 50% through automated edge invalidation.\n• Provisioned multi-cloud infrastructure (AWS and Azure) utilizing Terraform and secured CI/CD pipelines enforcing least-privilege IAM roles.\n• Orchestrated Dockerized MERN and Flask applications with NGINX reverse proxies and SSL termination for zero-downtime production releases.'),
        _buildExpRow('Intl. Cricket Masters', 'Website & Digital Outreach Coordinator', 'Dec 2024 – Feb 2025', '• Managed cloud platforms and optimized global web infrastructure, directly contributing to a 15-20% increase in digital reach and cross-browser delivery.'),
        _buildExpRow('Faysal Bank Limited', 'Networking & Infrastructure Intern', 'Jul 2024 – Aug 2024', '• Resolved 150+ network and software tickets, achieving and maintaining a 95% first-call resolution rate.\n• Configured enterprise routers and switches, directly improving overarching system uptime by 30%.'),
      ],
    );
  }

  Widget _buildExpRow(String company, String role, String date, String desc) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company.toUpperCase(),
                  style: GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Text(
                  role,
                  style: GoogleFonts.spaceMono(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
                const SizedBox(height: 8),
                Text(
                  date,
                  style: GoogleFonts.spaceMono(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: Text(
              desc,
              style: GoogleFonts.spaceGrotesk(fontSize: 16, height: 1.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsGrid() {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      children: [
        _buildHoverProject('KPRY - Fashion Engine', 'Next.js, AI, Web Scraping', 'AI-powered aggregator for streetwear ecosystem utilizing high-performance Next.js frontend and advanced deduplication.'),
        _buildHoverProject('Secure Data Aggregator', 'Django, PostgreSQL, NGINX', 'Containerized stack on Linux VM. Secured edge routing via NGINX, Cloudflare DDoS mitigation, and Certbot Strict SSL.'),
        _buildHoverProject('HashDash - HR Monitor', 'Electron, Vite, WebRTC', 'Cross-platform desktop HR system with real-time screen monitoring. Deployed backend on Linux VPS with NGINX.'),
        _buildHoverProject('Cloud-Native S3 Uploader', 'Flask, Gunicorn, AWS EC2', 'Application orchestrated with Gunicorn and NGINX for secure, systemd-managed S3 uploads.'),
      ],
    );
  }

  Widget _buildHoverProject(String title, String tech, String desc) {
    return HoverBox(
      child: Container(
        width: 450,
        height: 250,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: GoogleFonts.spaceGrotesk(fontSize: 22, fontWeight: FontWeight.w900, letterSpacing: -0.5),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.black,
              child: Text(
                tech,
                style: GoogleFonts.spaceMono(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Text(
                desc,
                style: GoogleFonts.spaceGrotesk(fontSize: 15, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String degree, String desc) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree.toUpperCase(), style: GoogleFonts.spaceGrotesk(fontSize: 20, fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          Text(desc, style: GoogleFonts.spaceMono(fontSize: 14, height: 1.5)),
        ],
      ),
    );
  }

  Widget _buildSkillPill(String skills) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Text(
        skills,
        style: GoogleFonts.spaceMono(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildListText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(text, style: GoogleFonts.spaceMono(fontSize: 15, fontWeight: FontWeight.w600)),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 64),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black, width: 4)),
      ),
      child: Center(
        child: Text(
          'AHMAD WASIM © 2026',
          style: GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 4),
        ),
      ),
    );
  }
}

// Background Grid Painter for Architectural Feel
class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.05)
      ..strokeWidth = 1.0;

    const double spacing = 40.0;

    for (double i = 0; i < size.width; i += spacing) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }
    for (double i = 0; i < size.height; i += spacing) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Custom Hover interaction widget
class HoverBox extends StatefulWidget {
  final Widget child;

  const HoverBox({super.key, required this.child});

  @override
  State<HoverBox> createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(0, isHovered ? -8 : 0, 0),
        decoration: BoxDecoration(
          boxShadow: isHovered
              ? [
                  const BoxShadow(
                    color: Colors.black,
                    offset: Offset(8, 8),
                    blurRadius: 0,
                  )
                ]
              : [],
        ),
        child: widget.child,
      ),
    );
  }
}
