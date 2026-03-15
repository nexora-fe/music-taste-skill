# 🎵 music-taste-skill

A Claude Code skill for generating Spotify-style playlist concepts, genre analysis, and mood-based music recommendations — in Turkish.

Covers everything from RYM-style descriptors and Spotify audio features to TikTok micro-aesthetics, activity-based profiling, language filtering, genre fusion recipes, and playlist naming with borrowed vocabulary.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/nexora-fe/music-taste-skill/main/install.sh | bash
```

Restart Claude Code after installation.

## Trigger Phrases

The skill activates automatically when you use:

**Playlist requests:**
- `playlist yap` — "sabah koşusu için playlist yap"
- `müzik öner`, `şarkı listesi`, `dinleme listesi`
- `vibes` — "Brezilya tatili vibes"
- `bu sanatçıya benzer` — "Radiohead'e benzer bir şeyler"

**Activity-based:**
- `arabada`, `koşarken`, `bale yaparken`, `ders çalışırken`
- `yemek yaparken`, `uyumadan önce`, `yoga`, `gym`

**TikTok / Gen-Z aesthetics:**
- `balkan nights`, `fairuz nights`, `istanbul nights`
- `villain arc`, `main character`, `dark academia`, `coquette`
- `phonk`, `sped-up`, `y2k vibes`, `dreamcore`, `liminal space`

**Genre fusion:**
- `jazz ama enerjik`, `elektronik ama organik`, `arabesk ama modern`
- `X + Y karışımı`, `ikisi arası bir şey`

**Language filter:**
- `türkçe`, `yabancı`, `fransızca şarkılar`, `instrumental`, `karışık`

## Features

| Feature | Açıklama |
|---------|----------|
| **5-Eksenli Analiz** | Genre/Style · Mood · Theme/Aktivite · Descriptor/Tekstür · Dil |
| **Playlist Naming** | 7 formül + Borrowed vocabulary (Latince, Fransızca, Japonca, Almanca, Türkçe...) |
| **Genre Füzyon** | Uyumluluk matrisi + 5 hazır tarif + bridge track teorisi |
| **Micro-Aesthetics** | 15 sahne bazlı + 17 TikTok micro + 6 Türk micro-aesthetic |
| **TikTok / Gen-Z** | "[Place] Nights" haritası (18 şehir) + 22 Gen-Z estetik eşleştirmesi |
| **Aktivite Rehberi** | 25+ aktivite: bale, koşu, ders, gece sürüşü, meditasyon, araba, yoga... |
| **Dil Filtresi** | Mono-TR/EN/FR/JP · Global · Multi-language · Dil estetiği · Instrumental |
| **Kültürel Kimlik** | 8 ülke profili + Türkçe dominant genre haritası |
| **2025-2026 Radar** | PluggnB, Afrofuturism, Nu-Metal Revival, WorldPop, Türk Trap/Drill |
| **Spotify Audio Features** | Tam 7 feature tablosu (energy, valence, danceability, acousticness, instrumentalness, liveness, speechiness) |
| **Playlist Narrative Flow** | Apple Music prensibi: Açılış → Build → Zirve → Gerileme → Kapanış |
| **RYM Descriptors** | Atmosfer, tekstür, enerji eğrisi, lirik ton katmanları |
| **AllMusic 3-Boyut** | Genre/Style + Mood + Theme her genre için ayrı |
| **Spotify Entegrasyonu** | `spotify-api` skili ile gerçek playlist oluşturma + `/recommendations` audio feature hedefleme |

## Reference Files

```
music-taste-skill/
├── SKILL.md                      # Ana skill tanımı
└── references/
    ├── world-music.md            # Bölgesel genre rehberi (Afrika, Latin, MENA, Türkiye, Asya, Avrupa)
    ├── decades.md                # Dönem rehberi (1960s–2020s) + Türkiye notları
    ├── tiktok-aesthetics.md      # "[Place] Nights" haritası + Gen-Z estetik + audio feature hedefleri
    ├── activities.md             # 25+ aktivite profili (BPM, energy, genre, Türkçe kalıp tanıma)
    ├── languages.md              # Dil filtresi (7 mod, genre→dil haritası, dil estetiği)
    └── custom-mix.md             # Genre füzyon + micro-aesthetics + sahne bazlı harita
```

## Spotify Integration (Optional)

To create real Spotify playlists, install the `spotify-api` skill and trigger with:
- `"playlist yap ve Spotify'a ekle"`
- `"Spotify'da oluştur"` / `"hesabıma ekle"`

The skill uses Spotify's `/recommendations` endpoint with `target_energy`, `target_valence`, `target_danceability`, `target_tempo` for accurate results. Falls back to concept-only mode if `spotify-api` is unavailable.

## Example Output

```
🎵 vice versa nights
📝 Arabesk'in kentsel hüznü, elektronik prodüksiyonun soğuk yüzeyine çarpıyor.

🏷️ SPOTIFY TAGS
#arabesk #turkish-electronic #late-night #melancholic #slow-burn #turkish

🌍 VIBE
Sparse ve warm — sazın teli dijital reverb'e sarılıyor. Dark, introspective,
analog warmth içinde kaybolan bir kentsel melankoli. Istanbul gecesi, 2025.

🎤 SANATÇI ÖNERİLERİ
- Hüsnü Şenlendirici → Arabesk'i elektronikle buluşturan köprü
- Müslüm Gürses → Orijinal hüzün kaynağı
...

🎶 AÇILIŞA YAKIŞAN ŞARKILAR
1. Orhan Gencebay - Batsın Bu Dünya
2. ...
```

## License

MIT
