---
name: music-taste
description: >
  Kullanıcı bir playlist konsepti oluşturmak istediğinde, müzik önerisi, genre/mood analizi veya
  Spotify-style tag listesi talep ettiğinde bu skili kullan. Tetikleyici ifadeler: "playlist yap",
  "müzik öner", "şarkı listesi", "dinleme listesi", "bu mood için müzik", "road trip müziği",
  "çalışma müziği", "sabah playlist", "genre nedir", "Spotify tag", "bu sanatçıya benzer",
  "vibes", "atmosfer için müzik", "akşam müziği". Kullanıcı herhangi bir duygu durumu, aktivite,
  ortam, dönem veya coğrafya ile birlikte müzik istediğinde kesinlikle tetikle.
---

# 🎵 Music Taste Skill

Playlist konsepti oluşturma, Spotify-style tag ve genre analizi için kapsamlı müzik rehberi.

---

## Genel Yaklaşım

1. Kullanıcının isteğini **3 boyutta** analiz et:
   - **Mood / Duygu**: nasıl hissettirmeli?
   - **Bağlam / Aktivite**: nerede, ne yapılırken dinlenecek?
   - **Estetik / Dönem**: vintage mi, modern mi, bölgesel mi?

2. Spotify-style çıktı üret (aşağıdaki format)
3. Somut sanatçı ve şarkı önerileri ekle
4. Gerekirse dünya müziği referanslarına başvur (bkz. `references/world-music.md`)

---

## Kişiselleştirme

İstek belirsiz veya eksik eksen içeriyorsa, direkt playlist üretmeden önce **3 kısa soru** sor:

1. **Favori sanatçı / referans**: "Bu listeye yakın bir sanatçı veya şarkı var mı?"
2. **Kaçınılacak genre**: "Kesinlikle istemediğin bir tarz var mı?" (örn. metal, rap, klasik)
3. **Enerji seviyesi**: "Sakin mi, orta mı, yoksa enerjik mi olsun?"

**Soruları atla ve direkt üret** eğer istek zaten şu 3 ekseni de içeriyorsa:
- Mood / duygu (örn. "hüzünlü", "enerjik", "sakin")
- Bağlam / aktivite (örn. "koşu", "çalışma", "akşam yemeği")
- Estetik / dönem (örn. "80'ler", "vintage", "elektronik")

Örnek: "sabah koşusu için enerjik indie rock" → 3 eksen tamam, direkt üret.
Örnek: "güzel bir şeyler istiyorum" → belirsiz, soruları sor.

---

## Çıktı Formatı

Her playlist konsepti şu yapıda olmalı:

```
🎵 [PLAYLIST ADI]
📝 [1-2 cümle konsept açıklaması]

🏷️ SPOTIFY TAGS
#[genre] #[subgenre] #[mood] #[aktivite] #[dönem/estetik] #[tempo/enerji]

🌍 VIBE
[2-3 cümle: ses paleti, enstrümanlar, atmosfer]

🎤 SANATÇI ÖNERİLERİ
- [Sanatçı] → [neden bu listeye uyuyor]
- [Sanatçı] → [neden bu listeye uyuyor]
- [Sanatçı] → [neden bu listeye uyuyor]
(min. 5, max. 10 sanatçı)

🎶 AÇILIŞA YAKIŞAN ŞARKILAR
1. [Sanatçı - Şarkı]
2. [Sanatçı - Şarkı]
3. [Sanatçı - Şarkı]

💡 DERİNLEŞMEK İSTEYENLERE
[İlgili genre, dönem veya coğrafya hakkında 1-2 cümle ek bağlam. Gerekirse world-music.md veya decades.md'ye yönlendir.]
```

---

## Spotify Genre & Tag Sistemi — Temel Referans

### Ana Genre Kümeleri

| Küme | Örnekler |
|------|----------|
| **Electronic** | ambient, techno, house, lo-fi, synthwave, chillwave, hyperpop |
| **Rock** | indie rock, shoegaze, post-rock, math rock, grunge, emo |
| **Hip-Hop / R&B** | boom bap, trap, neo soul, alternative r&b, conscious rap |
| **Folk / Acoustic** | folk, singer-songwriter, chamber folk, Americana, freak folk |
| **Jazz** | bebop, modal jazz, nu jazz, jazz fusion, acid jazz |
| **Classical / Neoclassical** | baroque, minimalism, contemporary classical, cinematic |
| **World / Global** | afrobeat, latin, fado, bossa nova, flamenco, cumbia → detay için `references/world-music.md` |
| **Pop** | dream pop, synth-pop, art pop, bedroom pop, indie pop |
| **Metal** | doom metal, black metal, post-metal, math metal |
| **Experimental** | noise, avant-garde, musique concrète, glitch |

### Mood Tag'leri (Spotify'da yaygın)

**Enerji Ekseninde:**
`#energetic` `#chill` `#melancholic` `#uplifting` `#dark` `#peaceful` `#intense` `#dreamy`

**Aktivite Ekseninde:**
`#workout` `#study` `#sleep` `#commute` `#party` `#focus` `#road-trip` `#dinner`

**Estetik Ekseninde:**
`#cottagecore` `#cyberpunk` `#vintage` `#cinematic` `#lo-fi` `#vaporwave` `#dark-academia`

### Tempo / Enerji Tag'leri — BPM Rehberi

| BPM Aralığı | Tag | Örnek Genre | Hissettirdiği |
|-------------|-----|-------------|---------------|
| 0–60 | `#very-slow` | Ambient, Drone, Dark Folk | Meditasyon, uyku, ağır melankolik |
| 60–90 | `#slow-burn` | Lo-fi, Soul, Bossa Nova | Sakin odak, kahve molası, gece sonu |
| 90–110 | `#mid-tempo` | Indie Pop, R&B, Acoustic | Gündelik akış, öğleden sonra |
| 110–130 | `#uptempo` | House, Indie Rock, Synth-pop | Dans, yürüyüş, motivasyon |
| 130+ | `#high-energy` | Techno, Drum & Bass, Metal | Antrenman, rave, yoğun odak |

> **Not:** spotify-api skili mevcutsa, bir parçanın tam BPM'ini `tempo` audio feature ile doğrulayabilirsin.

---

## Dönem Rehberi

Her on yılın hızlı etiketi — detaylar için `references/decades.md`:

| Dönem | Hızlı Etiketler |
|-------|----------------|
| **1960s** | psychedelic, British Invasion, Motown, folk revival, garage rock |
| **1970s** | progressive rock, disco, punk, Krautrock, funk, Anadolu rock |
| **1980s** | synth-pop, new wave, post-punk, hair metal, hip-hop doğuşu |
| **1990s** | grunge, Britpop, trip-hop, gangsta rap, shoegaze, rave |
| **2000s** | indie sleaze, post-punk revival, emo, crunk, nu-metal |
| **2010s** | hyperpop, lo-fi aesthetic, trap, bedroom pop, normcore |
| **2020s** | post-internet, ambient pop, drill, neo-soul revival, digicore |

> **Türkiye'ye özgü dönem notları** (Anadolu Rock, Arabesk, Özgün müzik, 2000'ler pop patlaması) `references/decades.md`'de ayrı bölüm olarak yer alıyor.

---

## Dünya Müziği İsteklerinde

Kullanıcı bölgesel/kültürel müzik istediğinde (Afrika, Latin Amerika, Orta Doğu, Asya, Balkanlar vb.):
→ `references/world-music.md` dosyasını oku, oradaki genre + bağlam bilgisiyle zenginleştirilmiş çıktı üret.

---

## Kültürel Müzik Kimliği

Kullanıcı "Türk", "Japon", "Brezilyalı", "Koreli" gibi kültürel referanslar verdiğinde bu tabloyu uygula.
Ülkenin 2025 dominant sesini, kültürel kimlik sinyallerini ve daha derin araştırma için referansı belirtir.

| Ülke/Kültür | Dominant Genre 2025 | Kültürel Kimlik İpuçları | Referans |
|-------------|---------------------|--------------------------|----------|
| **Türkiye** | Türk Trap / Drill | Top 100'ün %98'i Türkçe; BLOK3, Ati242, Lvbel C5 zirve; Sezen Aksu en çok dinlenen kadın | world-music.md → Türkiye & Balkanlar |
| **Japonya** | J-Pop / City Pop revival | YOASOBI, Official HIGE DANdism dominant; nostaljik City Pop yeniden keşfi devam ediyor | world-music.md → Güney & Doğu Asya |
| **Nijerya** | Afrobeats global | Burna Boy, Wizkid, Tems dünya sahnesi; Amapiano etkisi artıyor | world-music.md → Afrika |
| **Brezilya** | Sertanejo + Funk Carioca | En büyük yerli genre sertanejo; funk carioca kent kültürü | world-music.md → Latin Amerika |
| **G. Kore** | K-Pop + K-indie | K-pop %51 yerli pay; idol sistemi + bağımsız sahne ikili yapısı | world-music.md → Güney & Doğu Asya |
| **ABD** | Hip-Hop + Country | Hip-Hop %30.7, Rock +%29 artış, Country +%20; TikTok cross-genre keşifleri | decades.md → 2020s |
| **Almanya** | Techno + Schlager | Berlin techno sahnesi küresel; geleneksel Schlager hâlâ iç piyasada güçlü | world-music.md → Avrupa |
| **Hindistan** | Bollywood Pop + Indie | AR Rahman etkisi; yeni nesil Hindustani füzyon ve desi hip-hop yükseliyor | world-music.md → Güney & Doğu Asya |

> Daha derin bölgesel bağlam için her zaman `references/world-music.md` dosyasını oku.

---

## Spotify Entegrasyonu

**Tetikleyici ifadeler:** "Spotify'a ekle", "gerçekten oluştur", "playlistimi yap", "Spotify'da yap", "direkt ekle", "hesabıma ekle"

Bu ifadelerden biri geldiğinde şu akışı uygula:

### Akış

1. **Konsept oluştur** — önce tam playlist konseptini (yukarıdaki format) üret
2. **spotify-api skilini devreye al** — `spotify-api` skill'ini çağır
3. **Playlist yarat** — konsept adı ve açıklamasıyla boş playlist oluştur
4. **Track ara** — önerilen şarkıları tek tek `search` ile bul, Spotify URI'lerini topla
5. **Ekle** — bulunan track'leri playlist'e ekle
6. **Kapak sanatı** (isteğe bağlı) — spotify-api'nin SVG kapak özelliğini kullanabilirsin

### Hata Toleransı

- `spotify-api` skili yüklü değilse veya erişilemiyorsa: sessizce **konsept moduna geç**, kullanıcıya "Spotify entegrasyonu için `spotify-api` skilini yüklemen gerekiyor" mesajını ver
- Bir şarkı bulunamazsa: en yakın alternatifi ara, yoksa o satırı atla
- Token yoksa veya auth gerekiyorsa: kullanıcıyı `spotify-api` kurulum adımlarına yönlendir

### Örnek Tetikleyici

```
"80'ler synthpop gece sürüşü için playlist yap ve Spotify'a ekle"
→ Konsept üret → spotify-api → playlist oluştur → track ekle
```

---

## 2025-2026 Trend Radar

Yeni ortaya çıkan ve yükselen genre'lar — kullanıcı bu tarzları talep ettiğinde veya "güncel", "yeni çıkan", "2025 trendi" gibi ifadeler kullandığında bu bölümü uygula.

| Genre | Tanım | Öncü Sanatçılar | Spotify Tags |
|-------|-------|-----------------|--------------|
| **PluggnB** | Dreamy plugg trap + 90s R&B füzyonu; melankolik ama dans edilebilir | Summrs, SoFaygo, Yeat (erken) | `#pluggnb` `#plugg` `#dreamy-trap` `#r&b` `#chill` |
| **Afrofuturism** | Geleneksel Afrika enstrümanları + futuristik elektronik prodüksiyon | Mdou Moctar, Ebo Krdum, Burna Boy | `#afrofuturism` `#african-electronic` `#experimental` `#world` |
| **Nu-Metal Revival** | Deftones/Korn/SOAD TikTok yeniden keşfi; yeni kuşak ağır ses | Spiritbox, Bad Omens, Knocked Loose | `#nu-metal` `#metal` `#heavy` `#alternative` `#2000s-revival` |
| **WorldPop** | Latin + Afrobeats + EDM füzyonu; Gen-Z cross-kültürel keşfi | Peso Pluma + Burna Boy collabs, Rema | `#worldpop` `#latin` `#afrobeats` `#global` `#dance` |
| **African Electronic** | Amapiano + Afro House küresel yayılım (+700% büyüme) | DJ Maphorisa, Uncle Waffles, Black Coffee | `#amapiano` `#afro-house` `#african-electronic` `#dance` |
| **Hybrid/Maximalism** | Katmanlı, çoklu-etki ses tasarımı; her şeyi aynı anda | Caroline Polachek, Charli XCX, Bladee | `#maximalist` `#art-pop` `#hyperpop` `#experimental` |
| **Türk Trap / Drill** | Lokal trap beat, Türkçe akış; SoundCloud/TikTok ekosistemi | BLOK3, Ati242, Lvbel C5, Era7capone | `#turkish-trap` `#turkish-drill` `#türkçe-rap` `#street` |

> **Not:** Rock genel olarak 2025'te +%29 dinleyici artışıyla sürpriz yaptı. Country da +%20 büyüdü.
> Bu genre'lar için daha geniş bağlam → `references/decades.md` (2020s bölümü).

---

## Örnekler

**"sabah koşusu için bir şeyler yap"** →
Tags: `#running` `#energetic` `#uptempo` `#indie-rock` `#electronic` `#120bpm+`

**"yağmurlu bir akşam için hüzünlü ama güzel"** →
Tags: `#rainy-day` `#melancholic` `#dreamy` `#slowcore` `#ambient` `#singer-songwriter`

**"Brezilya tatili vibes"** →
Tags: `#bossa-nova` `#tropical` `#samba` `#latin` `#beachside` `#chill` — world-music.md'ye bak

**"1970ler Türkiye nostaljisi"** →
Tags: `#turkish-folk` `#anatolian-rock` `#vintage` `#türkü` `#psychedelic` — world-music.md + decades.md'ye bak

**"80'ler synthpop akşam"** →
Tags: `#synth-pop` `#new-wave` `#80s` `#nostalgic` `#evening` `#mid-tempo` — decades.md'ye bak
