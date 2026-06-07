import 'package:flutter/material.dart';
import 'main.dart';
import 'auth_screen.dart';

// ─────────────────────────────────────────
// HOME SCREEN (DAFTAR SISWA)
// ─────────────────────────────────────────

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Siswa> _daftarSiswa = [
    Siswa(
      nis: '2024001',
      nama: 'Budi Santoso',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '15/03/2008',
      kelas: 'X IPA 1',
      alamat: 'Jl. Merdeka No. 12, Bandung',
      noTelepon: '081234567890',
    ),
    Siswa(
      nis: '2024002',
      nama: 'Siti Rahayu',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '22/07/2008',
      kelas: 'X IPS 2',
      alamat: 'Jl. Sudirman No. 45, Bandung',
      noTelepon: '082345678901',
    ),
    Siswa(
      nis: '2024003',
      nama: 'Rizky Firmansyah',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '05/11/2007',
      kelas: 'XI IPA 2',
      alamat: 'Jl. Diponegoro No. 8, Bandung',
      noTelepon: '083456789012',
    ),
    Siswa(
      nis: '2024004',
      nama: 'Dewi Anggraeni',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '30/01/2008',
      kelas: 'X IPA 2',
      alamat: 'Jl. Ahmad Yani No. 77, Cimahi',
      noTelepon: '084567890123',
    ),
    Siswa(
      nis: '2024005',
      nama: 'Arif Hidayat',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '19/06/2007',
      kelas: 'XI IPS 1',
      alamat: 'Jl. Pasteur No. 23, Bandung',
      noTelepon: '085678901234',
    ),
    Siswa(
      nis: '2024006',
      nama: 'Nurul Fadillah',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '08/09/2008',
      kelas: 'X IPS 1',
      alamat: 'Jl. Soekarno Hatta No. 101, Bandung',
      noTelepon: '086789012345',
    ),
    Siswa(
      nis: '2024007',
      nama: 'Dani Prasetyo',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '14/04/2007',
      kelas: 'XI IPA 1',
      alamat: 'Jl. Cihampelas No. 56, Bandung',
      noTelepon: '087890123456',
    ),
    Siswa(
      nis: '2024008',
      nama: 'Putri Maharani',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '27/12/2007',
      kelas: 'XI IPS 2',
      alamat: 'Jl. Buahbatu No. 34, Bandung',
      noTelepon: '088901234567',
    ),
    Siswa(
      nis: '2024009',
      nama: 'Fajar Ramadhan',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '03/07/2008',
      kelas: 'X IPA 1',
      alamat: 'Jl. Riau No. 18, Bandung',
      noTelepon: '089012345678',
    ),
    Siswa(
      nis: '2024010',
      nama: 'Anisa Permatasari',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '11/02/2008',
      kelas: 'X IPS 2',
      alamat: 'Jl. Gatot Subroto No. 62, Bandung',
      noTelepon: '081123456789',
    ),
    Siswa(
      nis: '2024011',
      nama: 'Hendra Kusuma',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '25/08/2006',
      kelas: 'XII IPA 1',
      alamat: 'Jl. Terusan Buah Batu No. 9, Bandung',
      noTelepon: '082234567890',
    ),
    Siswa(
      nis: '2024012',
      nama: 'Mega Wulandari',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '17/05/2006',
      kelas: 'XII IPS 1',
      alamat: 'Jl. Kopo No. 44, Bandung',
      noTelepon: '083345678901',
    ),
    Siswa(
      nis: '2024013',
      nama: 'Gilang Saputra',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '09/10/2006',
      kelas: 'XII IPA 2',
      alamat: 'Jl. Margahayu No. 71, Bandung',
      noTelepon: '084456789012',
    ),
    Siswa(
      nis: '2024014',
      nama: 'Rini Oktaviani',
      jenisKelamin: 'Perempuan',
      tanggalLahir: '21/03/2007',
      kelas: 'XI IPA 2',
      alamat: 'Jl. Setiabudhi No. 15, Bandung',
      noTelepon: '085567890123',
    ),
    Siswa(
      nis: '2024015',
      nama: 'Yusuf Alfaridzi',
      jenisKelamin: 'Laki-laki',
      tanggalLahir: '13/01/2008',
      kelas: 'X IPA 2',
      alamat: 'Jl. Antapani No. 29, Bandung',
      noTelepon: '086678901234',
    ),
  ];

  // Tambah siswa baru
  void _tambahSiswa(Siswa siswa) {
    setState(() => _daftarSiswa.add(siswa));
  }

  // Edit siswa di index tertentu
  void _editSiswa(int index, Siswa siswaEdited) {
    setState(() => _daftarSiswa[index] = siswaEdited);
  }

  // Hapus siswa
  void _hapusSiswa(int index) {
    setState(() => _daftarSiswa.removeAt(index));
  }

  // Konfirmasi hapus
  void _konfirmasiHapus(int index) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Hapus Data'),
        content: Text('Hapus data siswa "${_daftarSiswa[index].nama}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _hapusSiswa(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Data siswa berhasil dihapus'),
                  backgroundColor: Colors.red.shade700,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Hapus'),
          ),
        ],
      ),
    );
  }

  // Navigasi ke form TAMBAH
  Future<void> _bukaFormTambah() async {
    final result = await Navigator.push<Siswa>(
      context,
      MaterialPageRoute(builder: (_) => const FormSiswaPage()),
    );
    if (result != null) _tambahSiswa(result);
  }

  // Navigasi ke form EDIT
  Future<void> _bukaFormEdit(int index) async {
    final result = await Navigator.push<Siswa>(
      context,
      MaterialPageRoute(
        builder: (_) => FormSiswaPage(siswaEdit: _daftarSiswa[index]),
      ),
    );
    if (result != null) _editSiswa(index, result);
  }

  // Logout
  void _logout() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Konfirmasi Logout'),
        content: const Text('Apakah Anda yakin ingin keluar?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const OutScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final jumlahLaki =
        _daftarSiswa.where((s) => s.jenisKelamin == 'Laki-laki').length;
    final jumlahPerempuan =
        _daftarSiswa.where((s) => s.jenisKelamin == 'Perempuan').length;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Daftar Siswa',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('Sistem Pendaftaran Siswa',
                style: TextStyle(fontSize: 11, color: Colors.white70)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            tooltip: 'Logout',
            onPressed: _logout,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          // Banner statistik
          Container(
            color: const Color(0xFF1565C0),
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                _infoCard('Total Siswa', '${_daftarSiswa.length}',
                    Icons.groups_rounded),
                const SizedBox(width: 10),
                _infoCard(
                    'Laki-laki', '$jumlahLaki', Icons.male_rounded),
                const SizedBox(width: 10),
                _infoCard(
                    'Perempuan', '$jumlahPerempuan', Icons.female_rounded),
              ],
            ),
          ),

          // List siswa
          Expanded(
            child: _daftarSiswa.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_off_outlined,
                            size: 64, color: Colors.grey.shade400),
                        const SizedBox(height: 12),
                        Text('Belum ada data siswa',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16)),
                        const SizedBox(height: 4),
                        Text('Tap tombol + untuk menambahkan',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13)),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _daftarSiswa.length,
                    itemBuilder: (ctx, i) => _SiswaCard(
                      siswa: _daftarSiswa[i],
                      onEdit: () => _bukaFormEdit(i),
                      onHapus: () => _konfirmasiHapus(i),
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _bukaFormTambah,
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        icon: const Icon(Icons.person_add_rounded),
        label: const Text('Tambah Siswa'),
      ),
    );
  }

  Widget _infoCard(String label, String value, IconData icon) {
    return Expanded(
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                Text(label,
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────
// WIDGET KARTU SISWA
// ─────────────────────────────────────────

class _SiswaCard extends StatelessWidget {
  final Siswa siswa;
  final VoidCallback onEdit;
  final VoidCallback onHapus;

  const _SiswaCard({
    required this.siswa,
    required this.onEdit,
    required this.onHapus,
  });

  @override
  Widget build(BuildContext context) {
    final isLaki = siswa.jenisKelamin == 'Laki-laki';
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(16, 8, 4, 8),
        leading: CircleAvatar(
          radius: 26,
          backgroundColor:
              isLaki ? const Color(0xFFBBDEFB) : const Color(0xFFF8BBD0),
          child: Icon(
            isLaki ? Icons.male_rounded : Icons.female_rounded,
            color: isLaki
                ? const Color(0xFF1565C0)
                : const Color(0xFFC2185B),
            size: 28,
          ),
        ),
        title: Text(
          siswa.nama,
          style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 2),
            Row(children: [
              const Icon(Icons.badge_outlined,
                  size: 13, color: Colors.grey),
              const SizedBox(width: 4),
              Text('NIS: ${siswa.nis}',
                  style:
                      const TextStyle(fontSize: 12, color: Colors.grey)),
            ]),
            const SizedBox(height: 2),
            Row(children: [
              const Icon(Icons.class_outlined,
                  size: 13, color: Colors.grey),
              const SizedBox(width: 4),
              Text(siswa.kelas,
                  style:
                      const TextStyle(fontSize: 12, color: Colors.grey)),
            ]),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Tombol detail
            IconButton(
              icon: const Icon(Icons.info_outline_rounded,
                  color: Color(0xFF1565C0)),
              onPressed: () => _lihatDetail(context),
              tooltip: 'Detail',
            ),
            // Tombol edit
            IconButton(
              icon: const Icon(Icons.edit_outlined,
                  color: Color(0xFF388E3C)),
              onPressed: onEdit,
              tooltip: 'Edit',
            ),
            // Tombol hapus
            IconButton(
              icon: Icon(Icons.delete_outline_rounded,
                  color: Colors.red.shade400),
              onPressed: onHapus,
              tooltip: 'Hapus',
            ),
          ],
        ),
      ),
    );
  }

  void _lihatDetail(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Detail Siswa',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1565C0))),
            const Divider(height: 20),
            _row(Icons.badge_outlined, 'NIS', siswa.nis),
            _row(Icons.person_outline, 'Nama', siswa.nama),
            _row(Icons.wc_outlined, 'Jenis Kelamin', siswa.jenisKelamin),
            _row(Icons.cake_outlined, 'Tanggal Lahir', siswa.tanggalLahir),
            _row(Icons.class_outlined, 'Kelas', siswa.kelas),
            _row(Icons.home_outlined, 'Alamat', siswa.alamat),
            _row(Icons.phone_outlined, 'No. Telepon', siswa.noTelepon),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _row(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: const Color(0xFF1565C0)),
          const SizedBox(width: 12),
          SizedBox(
            width: 110,
            child: Text(label,
                style:
                    const TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          Expanded(
            child: Text(value,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────
// FORM TAMBAH / EDIT SISWA
// ─────────────────────────────────────────

class FormSiswaPage extends StatefulWidget {
  /// Jika [siswaEdit] diisi → mode Edit. Jika null → mode Tambah.
  final Siswa? siswaEdit;

  const FormSiswaPage({super.key, this.siswaEdit});

  @override
  State<FormSiswaPage> createState() => _FormSiswaPageState();
}

class _FormSiswaPageState extends State<FormSiswaPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nisController;
  late final TextEditingController _namaController;
  late final TextEditingController _tglLahirController;
  late final TextEditingController _kelasController;
  late final TextEditingController _alamatController;
  late final TextEditingController _noTelpController;
  late String _jenisKelamin;

  bool get _isEditMode => widget.siswaEdit != null;

  @override
  void initState() {
    super.initState();
    final s = widget.siswaEdit;
    // Pre-fill data jika mode edit
    _nisController = TextEditingController(text: s?.nis ?? '');
    _namaController = TextEditingController(text: s?.nama ?? '');
    _tglLahirController =
        TextEditingController(text: s?.tanggalLahir ?? '');
    _kelasController = TextEditingController(text: s?.kelas ?? '');
    _alamatController = TextEditingController(text: s?.alamat ?? '');
    _noTelpController =
        TextEditingController(text: s?.noTelepon ?? '');
    _jenisKelamin = s?.jenisKelamin ?? 'Laki-laki';
  }

  @override
  void dispose() {
    _nisController.dispose();
    _namaController.dispose();
    _tglLahirController.dispose();
    _kelasController.dispose();
    _alamatController.dispose();
    _noTelpController.dispose();
    super.dispose();
  }

  Future<void> _pilihTanggal() async {
    DateTime initial = DateTime(2008);
    // Parse tanggal yang sudah ada jika mode edit
    if (_tglLahirController.text.isNotEmpty) {
      final parts = _tglLahirController.text.split('/');
      if (parts.length == 3) {
        initial = DateTime(
          int.tryParse(parts[2]) ?? 2008,
          int.tryParse(parts[1]) ?? 1,
          int.tryParse(parts[0]) ?? 1,
        );
      }
    }
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme:
              const ColorScheme.light(primary: Color(0xFF1565C0)),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      setState(() {
        _tglLahirController.text =
            '${picked.day.toString().padLeft(2, '0')}/'
            '${picked.month.toString().padLeft(2, '0')}/'
            '${picked.year}';
      });
    }
  }

  void _simpan() {
    if (!_formKey.currentState!.validate()) return;

    final siswa = Siswa(
      nis: _nisController.text.trim(),
      nama: _namaController.text.trim(),
      jenisKelamin: _jenisKelamin,
      tanggalLahir: _tglLahirController.text.trim(),
      kelas: _kelasController.text.trim(),
      alamat: _alamatController.text.trim(),
      noTelepon: _noTelpController.text.trim(),
    );

    Navigator.pop(context, siswa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        title: Text(
          _isEditMode ? 'Edit Data Siswa' : 'Form Pendaftaran Siswa',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Banner mode edit
              if (_isEditMode)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 10),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF9C4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFF9A825)),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.edit_note_rounded,
                          color: Color(0xFFF57F17)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Mode Edit — ubah data yang ingin diperbarui lalu simpan.',
                          style: TextStyle(
                              color: Color(0xFFF57F17), fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),

              // ── Bagian Data Identitas ──
              _sectionCard(
                title: 'Data Identitas',
                icon: Icons.badge_rounded,
                children: [
                  // NIS
                  TextFormField(
                    controller: _nisController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'NIS (Nomor Induk Siswa) *',
                      prefixIcon: Icon(Icons.numbers_rounded),
                      hintText: 'cth: 2024001',
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'NIS tidak boleh kosong';
                      if (v.length < 5) return 'NIS minimal 5 digit';
                      if (!RegExp(r'^\d+$').hasMatch(v))
                        return 'NIS hanya boleh berisi angka';
                      return null;
                    },
                  ),
                  const SizedBox(height: 14),

                  // Nama
                  TextFormField(
                    controller: _namaController,
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      labelText: 'Nama Lengkap *',
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      hintText: 'cth: Budi Santoso',
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'Nama tidak boleh kosong';
                      if (v.length < 3) return 'Nama minimal 3 karakter';
                      if (!RegExp(r"^[a-zA-Z\s']+$").hasMatch(v))
                        return 'Nama hanya boleh mengandung huruf';
                      return null;
                    },
                  ),
                  const SizedBox(height: 14),

                  // Jenis Kelamin
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jenis Kelamin *',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 13)),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile<String>(
                                value: 'Laki-laki',
                                groupValue: _jenisKelamin,
                                onChanged: (v) => setState(
                                    () => _jenisKelamin = v!),
                                title: const Text('Laki-laki',
                                    style: TextStyle(fontSize: 13)),
                                activeColor: const Color(0xFF1565C0),
                                contentPadding: EdgeInsets.zero,
                                dense: true,
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<String>(
                                value: 'Perempuan',
                                groupValue: _jenisKelamin,
                                onChanged: (v) => setState(
                                    () => _jenisKelamin = v!),
                                title: const Text('Perempuan',
                                    style: TextStyle(fontSize: 13)),
                                activeColor: const Color(0xFF1565C0),
                                contentPadding: EdgeInsets.zero,
                                dense: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Tanggal Lahir
                  TextFormField(
                    controller: _tglLahirController,
                    readOnly: true,
                    onTap: _pilihTanggal,
                    decoration: const InputDecoration(
                      labelText: 'Tanggal Lahir *',
                      prefixIcon: Icon(Icons.cake_outlined),
                      hintText: 'Pilih tanggal lahir',
                      suffixIcon: Icon(Icons.calendar_today_outlined),
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'Tanggal lahir tidak boleh kosong';
                      return null;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // ── Bagian Akademik & Kontak ──
              _sectionCard(
                title: 'Data Akademik & Kontak',
                icon: Icons.school_rounded,
                children: [
                  // Kelas
                  TextFormField(
                    controller: _kelasController,
                    textCapitalization: TextCapitalization.characters,
                    decoration: const InputDecoration(
                      labelText: 'Kelas *',
                      prefixIcon: Icon(Icons.class_outlined),
                      hintText: 'cth: X IPA 1',
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'Kelas tidak boleh kosong';
                      return null;
                    },
                  ),
                  const SizedBox(height: 14),

                  // Alamat
                  TextFormField(
                    controller: _alamatController,
                    maxLines: 2,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      labelText: 'Alamat *',
                      prefixIcon: Icon(Icons.home_outlined),
                      hintText: 'cth: Jl. Merdeka No. 12, Bandung',
                      alignLabelWithHint: true,
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'Alamat tidak boleh kosong';
                      if (v.length < 10) return 'Alamat terlalu pendek';
                      return null;
                    },
                  ),
                  const SizedBox(height: 14),

                  // No Telepon
                  TextFormField(
                    controller: _noTelpController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'No. Telepon *',
                      prefixIcon: Icon(Icons.phone_outlined),
                      hintText: 'cth: 081234567890',
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty)
                        return 'No. telepon tidak boleh kosong';
                      if (!RegExp(r'^[0-9+\-\s]+$').hasMatch(v))
                        return 'Format nomor telepon tidak valid';
                      if (v.replaceAll(RegExp(r'\D'), '').length < 10)
                        return 'No. telepon minimal 10 digit';
                      return null;
                    },
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Tombol Simpan
              SizedBox(
                height: 52,
                child: ElevatedButton.icon(
                  onPressed: _simpan,
                  icon: Icon(_isEditMode
                      ? Icons.save_as_rounded
                      : Icons.save_rounded),
                  label: Text(
                    _isEditMode
                        ? 'SIMPAN PERUBAHAN'
                        : 'SIMPAN DATA SISWA',
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isEditMode
                        ? const Color(0xFF388E3C)
                        : const Color(0xFF1565C0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.cancel_outlined),
                  label: const Text('Batal'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey.shade700,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionCard({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              children: [
                Icon(icon, color: const Color(0xFF1565C0), size: 20),
                const SizedBox(width: 8),
                Text(title,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1565C0))),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: children),
          ),
        ],
      ),
    );
  }
}