# frozen_string_literal: true

# Find or create Chapter (Surah Al-Fatihah)
chapter = Chapter.find_or_create_by!(
  id: 1
) do |c|
  c.name_arabic = 'ٱلْفَاتِحَة'
  c.name_simple = 'Al-Fatihah'
  c.name_complex = 'Al-Fātiḥah'
  c.revelation_place = 'makkah'
  c.verses_count = 7
  c.pages = '1'
  c.chapter_number = 1
end

# Find or create Verses for Al-Fatihah
[
  ['بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ', 1],
  ['ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَٰلَمِينَ', 2],
  ['ٱلرَّحْمَٰنِ ٱلرَّحِيمِ', 3],
  ['مَٰلِكِ يَوْمِ ٱلدِّينِ', 4],
  ['إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ', 5],
  ['ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ', 6],
  ['صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ', 7]
].each do |text, number|
  Verse.find_or_create_by!(
    chapter_id: chapter.id,
    verse_number: number
  ) do |v|
    v.text_madani = text
  end
end


Language.find_or_create_by!(
  iso_code: 'en',
  name: 'English',
  native_name: 'English',
  direction: 'ltr',
  es_analyzer_default: 'english'
)

Language.find_or_create_by!(
  iso_code: 'ar',
  name: 'Arabic',
  native_name: 'العربية',
  direction: 'rtl',
  es_analyzer_default: 'arabic'
)
