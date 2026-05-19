import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6B4FA0),
              Color(0xFF8B6DC0),
              Color(0xFFA68FD8),
              Color(0xFFB8D4E8),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Orbs
              Positioned(top: 40, right: -70, child: _buildOrb(220)),
              Positioned(bottom: 140, left: -50, child: _buildOrb(180)),

              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    // Page Title
                    const Column(
                      children: [
                        Text(
                          "About Aura",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "Wellness",
                          style: TextStyle(fontSize: 13, color: Colors.white70, letterSpacing: 3),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Logo Banner
                    Container(
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white.withOpacity(0.3)),
                      ),
                      child: Row(
                        children: [
                          const Text("🪷", style: TextStyle(fontSize: 48)),
                          const SizedBox(width: 18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Aura",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                "Wellness App",
                                style: TextStyle(color: Colors.white70, fontSize: 13, letterSpacing: 2),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "\"Calm your mind, nurture your soul.\"",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Stats Row
                    Row(
                      children: const [
                        StatBox(number: "50K+", label: "Users"),
                        SizedBox(width: 10),
                        StatBox(number: "200+", label: "Sessions"),
                        SizedBox(width: 10),
                        StatBox(number: "4.9 ⭐", label: "Rating"),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Features
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white.withOpacity(0.25)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "What Aura Offers",
                            style: TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 16),
                          FeatureItem(icon: "🧘", title: "Guided Meditation", desc: "Daily sessions for peace and clarity"),
                          FeatureItem(icon: "🌬️", title: "Breathing Exercises", desc: "Reduce stress in minutes"),
                          FeatureItem(icon: "😴", title: "Sleep Stories", desc: "Drift into deep, restful sleep"),
                          FeatureItem(icon: "📊", title: "Mood Tracking", desc: "Understand your emotional patterns"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Aura Wellness v1.0.0 • Made with 💜",
                      style: TextStyle(color: Colors.white38, fontSize: 12),
                    ),

                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFF6B4FA0).withOpacity(0.75),
          border: const Border(top: BorderSide(color: Colors.white24)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(icon: "🏠", label: "Home"),
            NavItem(icon: "🧘", label: "Meditate"),
            NavItem(icon: "📖", label: "Journal"),
            NavItem(icon: "👤", label: "Profile"),
            NavItem(icon: "⚙️", label: "About", isActive: true),
          ],
        ),
      ),
    );
  }

  Widget _buildOrb(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.07),
      ),
    );
  }
}

class StatBox extends StatelessWidget {
  final String number;
  final String label;
  const StatBox({super.key, required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.16),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withOpacity(0.22)),
        ),
        child: Column(
          children: [
            Text(number, style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w300)),
            Text(label, style: const TextStyle(fontSize: 11, color: Colors.white70, letterSpacing: 1)),
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String icon;
  final String title;
  final String desc;
  const FeatureItem({super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: Center(child: Text(icon, style: const TextStyle(fontSize: 22))),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 15, color: Colors.white)),
                Text(desc, style: const TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isActive;
  const NavItem({super.key, required this.icon, required this.label, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(icon, style: TextStyle(fontSize: 24, color: isActive ? Colors.white : Colors.white60)),
        Text(label, style: TextStyle(fontSize: 10, color: isActive ? Colors.white : Colors.white60)),
      ],
    );
  }
}