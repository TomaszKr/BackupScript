# Backup project in linux
Create automatic backup with Cron from scrypt

## TO DO

- [X] Add scrypt
- [X] Add installation
- [X] Add file configuration
- [ ] Add divers databases
- [ ] Add to Cron
 
## Installation

Run script `install.sh`:

```bash
bash your-localisation-from-scrypt/install.sh
```

this installation create `config.sh`, which you must set:
* Path for your project
* Path for backup
* Name for file

When will be done in terminal see communicat:

```bash
Create config.sh
```

## Used

Manual used created backup after installation. Just run the script:

```bash
bash your-localisation-from-scrypt/backup.sh
```

When will be done in terminal see communicat:

```bash
Done that created:  YOUR-PATH-FOR-BACKUP/FILENAME_DATE.tar.gz
```

## License
This scrypt is licensed under the MIT License