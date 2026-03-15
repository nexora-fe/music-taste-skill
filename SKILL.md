---
name: music-taste
description: >
  Kullanıcı bir playlist konsepti oluşturmak istediğinde, müzik önerisi, genre/mood analizi veya
  Spotify-style tag listesi talep ettiğinde bu skili kullan. Tetikleyici ifadeler: "playlist yap",
  "müzik öner", "şarkı listesi", "dinleme listesi", "bu mood için müzik", "road trip müziği",
  "çalışma müziği", "sabah playlist", "genre nedir", "Spotify tag", "bu sanatçıya benzer",
  "vibes", "atmosfer için müzik", "akşam müziği". Ayrıca TikTok/Gen-Z estetik terimleri:
  "balkan nights", "fairuz nights", "villain arc", "main character", "coquette", "dark academia",
  "cottagecore", "old money", "healing era", "phonk", "sped-up", "y2k vibes", "that girl".
  Kullanıcı herhangi bir duygu durumu, aktivite, ortam, dönem, coğrafya veya TikTok estetiği
  ile birlikte müzik istediğinde kesinlikle tetikle.
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

## Spotify Genre & Tag Sistemi — Kapsamlı Referans

### Ana Genre Kümeleri (Tam Liste)

| Küme | Alt Türler |
|------|-----------|
| **Electronic** | ambient, drone, dark ambient · techno, industrial techno · house (deep, tech, progressive, afro) · lo-fi hip-hop · synthwave, retrowave, chillwave · hyperpop · drum & bass, jungle · UK garage, grime · dubstep, future bass · IDM, glitch, EBM · trance, psytrance · hardstyle · phonk, Memphis rap · jersey club, footwork |
| **Rock** | indie rock, alternative rock · shoegaze, dream pop · post-rock · math rock · grunge, seattle sound · emo, pop-punk · punk, hardcore, post-hardcore · metalcore, deathcore · psychedelic rock, stoner rock · prog rock · classic rock · glam rock · new wave, post-punk · surf rock |
| **Metal** | doom, sludge · black metal · death metal · thrash · power metal · folk metal, viking metal · symphonic metal · progressive metal · nu-metal · post-metal · math metal |
| **Hip-Hop / Rap** | boom bap, East Coast · trap, Atlanta · drill (UK, Chicago, NY) · conscious rap, art rap · gangsta, West Coast · lo-fi hip-hop · cloud rap, emo rap · phonk · pluggnb · turntablism |
| **R&B / Soul** | neo soul · alternative R&B · classic soul, Motown soul · funk · gospel · blues · rhythm & blues · indie R&B · afro R&B |
| **Folk / Acoustic** | folk, singer-songwriter · chamber folk · Americana, roots · bluegrass · freak folk · Celtic, Irish folk · country folk · acoustic pop |
| **Country** | classic country · outlaw country · country pop · alt-country, Americana · bro-country · country rap |
| **Jazz** | bebop · cool jazz · hard bop · modal jazz · free jazz · jazz fusion · acid jazz · nu jazz · jazz hop · smooth jazz · Bossa Nova (bkz. World) |
| **Classical / Orchestral** | baroque · classical · romantic · contemporary classical · minimalism (Glass, Reich) · neoclassical · film score, cinematic · ambient classical |
| **Pop** | dream pop · synth-pop · art pop · bedroom pop · indie pop · hyperpop · power pop · bubblegum pop · sophisti-pop · electropop · K-pop · J-pop (bkz. World) |
| **Reggae / Dancehall** | roots reggae · dancehall · ska · dub · reggaeton (bkz. World/Latin) |
| **Experimental** | noise · avant-garde · musique concrète · drone · harsh noise · lowercase · plunderphonics · spoken word |
| **World / Global** | Afrobeat, Amapiano, Highlife · Latin (cumbia, salsa, tango, sertanejo) · MENA (Arap klasik, mahraganat, fado) · Türk (türkü, arabesk, Anadolu rock, Türk trap) · Asya (J-pop, City pop, K-pop, Bollywood) · Balkan brass → detay: `references/world-music.md` |

### Mood Tag'leri (Spotify'da yaygın)

**Enerji Ekseninde:**
`#energetic` `#chill` `#melancholic` `#uplifting` `#dark` `#peaceful` `#intense` `#dreamy` `#euphoric` `#angry` `#romantic` `#bittersweet`

**Aktivite Ekseninde:**
`#workout` `#study` `#sleep` `#commute` `#party` `#focus` `#road-trip` `#dinner` `#morning-routine` `#late-night` `#running` `#meditation` `#pregame`

**Estetik Ekseninde:**
`#cottagecore` `#cyberpunk` `#vintage` `#cinematic` `#lo-fi` `#vaporwave` `#dark-academia` `#coquette` `#villain-arc` `#main-character` `#old-money` `#coastal` `#hyperpop-baddie`

### Spotify Audio Features — Playlist Hedefleri

Spotify her parçayı 0–1 arası puanlar. `spotify-api` varken `/recommendations` çağrısında bunları kullan:

| Audio Feature | Düşük (0.0–0.3) | Orta (0.4–0.6) | Yüksek (0.7–1.0) |
|---------------|-----------------|----------------|------------------|
| **Energy** | Ambient, drone, klasik | Indie pop, lo-fi, folk | Techno, metal, trap |
| **Valence** (mutluluk) | Dark, sad, melancholic | Bittersweet, chill | Happy, party, uplifting |
| **Danceability** | Drone, classical, folk | Indie rock, R&B | House, reggaeton, afrobeats |
| **Acousticness** | Electronic, metal | Indie rock, lo-fi | Folk, classical, arabesk |
| **Instrumentalness** | Rap, pop, vocal | Trip-hop, ambient pop | Techno, classical, jazz |

> **Spotify Playlist Akışı:** Açılış → mood set et (orta enerji) → zirve (%40-60 arası) → kapanış (enerji düşür).
> `spotify-api` kullanıyorsan `target_energy`, `target_valence`, `target_danceability`, `target_tempo` parametrelerini `/recommendations` endpoint'ine geçir.

### Tempo / Enerji Tag'leri — BPM Rehberi

| BPM Aralığı | Tag | Örnek Genre | Hissettirdiği |
|-------------|-----|-------------|---------------|
| 0–60 | `#very-slow` | Ambient, Drone, Dark Folk | Meditasyon, uyku, ağır melankolik |
| 60–90 | `#slow-burn` | Lo-fi, Soul, Bossa Nova, Arabesk | Sakin odak, kahve molası, gece sonu |
| 90–110 | `#mid-tempo` | Indie Pop, R&B, Acoustic, City Pop | Gündelik akış, öğleden sonra |
| 110–130 | `#uptempo` | House, Indie Rock, Synth-pop, K-pop | Dans, yürüyüş, motivasyon |
| 130–160 | `#high-energy` | Techno, Drum & Bass, Phonk, Hardstyle | Antrenman, rave, sürüş |
| 160+ | `#extreme` | Hardcore, Speedcore, Hyperpop (sped-up) | Ekstrem yoğunluk, mosh pit |

---

## TikTok & Gen-Z Estetik Vibes

Kullanıcı TikTok dili, estetik terimler veya "[Yer] Nights" formatı kullandığında:
→ `references/tiktok-aesthetics.md` dosyasını oku ve o bölümü uygula.

### "[Place] Nights" Format Tespiti

Bu kalıplardan biri varsa → tiktok-aesthetics.md'nin "[Place] Nights" haritasına git:
> "Balkan nights", "fairuz nights", "istanbul nights", "paris nights", "rome nights", "tokyo nights",
> "cairo nights", "athens nights", "berlin nights", "lisbon nights", "havana nights" vb.

### Gen-Z Estetik Tespiti

Bu kelimelerden biri varsa → tiktok-aesthetics.md'nin "Estetik Dili" tablosuna git:
> villain arc, main character, healing era, coquette, dark academia, cottagecore, mob wife,
> quiet luxury, old money, coastal grandmother, barbiecore, hot girl summer, that girl,
> clean girl, glow up, rizz, delulu, soft launch, hyperpop baddie, sapphic vibes

### TikTok Viral Sesleri

> phonk, sped-up, slowed reverb, trending sound, tiktok made me listen, y2k, 90s teen movie

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
2. **Audio features hedefle** — genre/estetikten `tiktok-aesthetics.md` audio features tablosunu kullanarak `target_energy`, `target_valence`, `target_danceability`, `target_tempo` değerlerini belirle
3. **spotify-api skilini devreye al** — `spotify-api` skill'ini çağır
4. **Playlist yarat** — konsept adı ve açıklamasıyla boş playlist oluştur
5. **Track ara** — önerilen şarkıları `search` ile bul **VEYA** `/recommendations` endpoint'ine audio features + seed artists/genres geçerek Spotify'ın kendi öneri motorunu kullan
6. **Ekle** — bulunan track'leri playlist'e ekle; akışı aç → zirve → kapat şeklinde sırala
7. **Kapak sanatı** (isteğe bağlı) — spotify-api'nin SVG kapak özelliğini kullanabilirsin

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

**"Fairuz Nights playlist"** →
Tags: `#arabic` `#lebanese` `#nostalgic` `#classical` `#late-night` `#acoustic` — tiktok-aesthetics.md → "[Place] Nights"

**"Villain arc playlist yap"** →
Tags: `#dark` `#intense` `#cinematic` `#empowering` `#villain-arc` — tiktok-aesthetics.md → Gen-Z Estetik Dili

**"Cottagecore sabah"** →
Tags: `#cottagecore` `#folk` `#acoustic` `#nature` `#morning` `#peaceful` — tiktok-aesthetics.md → Gen-Z Estetik Dili

**"Phonk sürüş gecesi"** →
Tags: `#phonk` `#dark-trap` `#driving` `#late-night` `#aggressive` — 2025-2026 Trend Radar + tiktok-aesthetics.md

**"Balkan nights party"** →
Tags: `#balkan` `#brass` `#dance` `#energetic` `#folk` `#late-night` — tiktok-aesthetics.md → "[Place] Nights" + world-music.md
