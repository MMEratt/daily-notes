Basit bir komut satırı not alma uygulaması (Bash). Not ekleme, listeleme, arama ve S3'e yedekleme özellikleri içerir. Proje eğitim amaçlıdır ve Git/Docker/AWS CI akışlarını göstermek için tasarlanmıştır.

## Hızlı Başlangıç

```bash
# Repo klonla (örnek)
git clone https://github.com/YOUR-USERNAME/daily-notes.git
cd daily-notes

# Not ekleme
./notes.sh add "Bugün yeni şeyler öğrendim"

# Notları listele
./notes.sh list

# Notlarda ara
./notes.sh search "öğrendim"
