В файл Vagrant добавлен:
1. 5ый диск
2.  скрипт mk_raid.sh для создания RAID-6 из 5 дисков
3.  скрипт mk_fs.sh для создания и монтирования разделов
4.  скрипт ed_fstab.sh для монтирования созданных разделов при загрузке

Итог: имеем ВМ с RAID-6 и 5 автоматически монтирующимися разделами EXT4, созданными на этом рэйде, после перезагрузки.
