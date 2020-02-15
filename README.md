# Backup project in linux
Create automatic backup with Cron from script

## TO DO

- [X] Add script
- [X] Add installation
- [X] Add file configuration
- [X] Add divers databases
- [ ] Add to Cron

Add divers databases:
- [X] MySql
 
## Installation

Run script `install.sh`:

```bash
bash your-localisation-from-script/install.sh
```

This installation create `config.sh`, which you must set:
* Path for your project
* Path for backup
* Name for file
* Name of databases
* Host of databases
* User of databases
* Password of databases

When will be done in terminal see communicate:

```bash
Create config.sh
```

## Used

Manual used created backup after installation. Just run the script:

```bash
bash your-localisation-from-scrypt/backup.sh
```

When will be done in terminal see communicate:

```bash
Done that created:  YOUR-PATH-FOR-BACKUP/FILENAME_DATE.tar.gz
```

## License
This script is licensed under the MIT Licence
