class ProjectsUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? webLink;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.webLink,
  });
}
List<ProjectsUtils> hobbyProjectUtils = [
  ProjectsUtils(
    image: 'projects/3.png',
    title: 'eCommerce Website', 
    subtitle: "Platform untuk penjualan produk secara online dengan sistem katalog dan pembayaran digital.",
    webLink: "localhost:8000"
  ),
  ProjectsUtils(
    image: 'projects/4.png',
    title: 'Chat Website Laravel', 
    subtitle: "Aplikasi berbasis web untuk komunikasi real-time antara pengguna menggunakan Laravel.",
    webLink: "localhost:8000"
  ),
  ProjectsUtils(
    image: 'projects/5.png',
    title: 'Rekapitulasi Absensi Siswa', 
    subtitle: "Sistem untuk mencatat dan merekap data absensi siswa secara terstruktur.",
    webLink: "localhost:8000"
  ),
  ProjectsUtils(
    image: 'projects/6.png',
    title: 'Admin Apoteker', 
    subtitle: "Dashboard admin untuk mengelola user (admin atau kasir), stok obat, dan transaksi apotek.",
    webLink: "localhost:8000"
  ),
];

List<ProjectsUtils> workProjectUtils = [
  ProjectsUtils(
    image: 'projects/1.png',
    title: 'Tryou X',
    subtitle: "Platform tryout online untuk persiapan ujian dengan berbagai soal latihan.",
    webLink: "localhost:8000"
  ),
  ProjectsUtils(
    image: 'projects/2.png',
    title: 'Dk Lestari Catering',
    subtitle: "Sistem pemesanan dan manajemen catering dengan berbagai pilihan menu.",
    webLink: "localhost:8000"
  ),
];
