### Задание 1: Зеркальное копирование домашней директории
- **Команда rsync**: `rsync -av --delete --exclude='.*' -c ~/ /tmp/backup/`
- **Исключение скрытых файлов**: все файлы и директории, начинающиеся с точки
- **Проверка по хэш-суммам**: опция `-c` вместо сравнения по времени/размеру
- **Зеркальная синхронизация**: опция `--delete` для полного соответствия
  Команда rsync и её выполнение (Скриншот 1)
<img width="797" height="220" alt="Задание 1 rsync" src="https://github.com/user-attachments/assets/4169b8eb-882f-49f7-b7c0-c31e712bbff0" />

### Задание 2: Автоматическое резервное копирование
- **Скрипт**: `scripts/backup_home.sh` - автоматическое выполнение бэкапа
- **Планировщик**: cron - ежедневное выполнение в 2:30
- **Логирование**: запись в файл `~/backup.log` с timestamp

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
