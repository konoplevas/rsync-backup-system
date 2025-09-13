### Домашнее задание к занятию 3 «Резервное копирование» Коноплёв Александр

### Задание 1: Зеркальное копирование домашней директории
- **Команда rsync**: `rsync -av --delete --exclude='.*' -c ~/ /tmp/backup/`
- **Исключение скрытых файлов**: все файлы и директории, начинающиеся с точки
- **Проверка по хэш-суммам**: опция `-c` вместо сравнения по времени/размеру
- **Зеркальная синхронизация**: опция `--delete` для полного соответствия
  Команда rsync и её выполнение (Скриншот 1)
<img width="797" height="220" alt="Задание 1 rsync" src="https://github.com/user-attachments/assets/4169b8eb-882f-49f7-b7c0-c31e712bbff0" />

### Задание 2: Автоматическое резервное копирование
- **Скрипт**: `scripts/backup_home.sh` - автоматическое выполнение бэкапа
  <img width="808" height="589" alt="Скрипт задание 2" src="https://github.com/user-attachments/assets/b8880df9-01de-497e-9eaa-d651953dd4c3" />
  
- **Планировщик**: cron - ежедневное выполнение в 2:30
- 
  <img width="575" height="463" alt="настройка Cron задание 2" src="https://github.com/user-attachments/assets/032a6f5e-9c66-43df-ad96-bb7f7eaa4dba" />
  
<img width="827" height="64" alt="Поиск скрытых файлов задание 2" src="https://github.com/user-attachments/assets/59a82ac6-dbc3-4218-a1d1-414010278a8b" />

- **Логирование**: запись в файл `~/backup.log` с timestamp
  <img width="722" height="217" alt="Логи задание 2" src="https://github.com/user-attachments/assets/3477fa1b-6ff3-42b8-9fe4-0db0fa20a055" />


## Структура проекта:
rsync-backup-system/
├── scripts/
│ └── backup_home.sh
├── docs/
│ ├── crontab_config.txt
│ ├── backup_log_example.txt
│ └── installation.md
├── screenshots/
│ └── README_SCREENSHOTS.md
└── README.md
