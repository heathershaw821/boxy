# boxy ❤️ 

Heather's Jail Management System for FreeBSD  

`boxy` is a user-friendly command-line tool designed to simplify the creation and management of FreeBSD jails. Whether you're managing templates, snapshots, or active jails, `boxy` provides intuitive commands to handle it all with ease.  

---

## Features  

- Create, manage, and destroy FreeBSD jails.  
- Manage templates and snapshots for quick deployment.  
- Install and remove packages within jails.  
- Access jails via an interactive shell.  
- Easily manage Linux compatibility with the `linuxify` command.  

---

## Installation  

1. Clone the repository:  
   ```bash
   git clone https://github.com/heathershaw821/boxy.git
   ```  

2. Navigate to the directory:  
   ```bash
   cd boxy
   ```  

3. Add `boxy` to your PATH for global use or alias it in your shell configuration.  

---

## Usage  

### Global Commands  

```bash
boxy <command> [args]
```  

#### Available Commands  

| Command          | Arguments          | Description                              |  
|------------------|--------------------|------------------------------------------|  
| **create**       | jail template      | Create a Jail and its base configuration.|  
| **destroy**      | jail               | Destroy a Jail and its configuration.    |  
| **template**     | [list|new|delete]  | Template manager.                        |  
| **snapshot**     | [list|new|delete]  | Snapshot manager.                        |  
| **running**      |                    | List currently running Jails.            |  

---

### Jail-Specific Commands  

```bash
boxy jail <command> [args]
```  

#### Available Commands  

| Command          | Arguments          | Description                              |  
|------------------|--------------------|------------------------------------------|  
| **start**        |                    | Start a Jail.                            |  
| **stop**         |                    | Stop a Jail.                             |  
| **restart**      |                    | Restart a Jail.                          |  
| **list**         |                    | List all Jails.                          |  
| **install**      | packages...        | Install packages to a Jail.              |  
| **remove**       | packages...        | Remove packages from a Jail.             |  
| **shell**        | user [cmd]         | Run a shell or a command in the Jail.    |  
| **linuxify**     |                    | Enable Linux compatibility for a Jail.   |  

---

### Template Manager Commands  

```bash
boxy template <command> [args]
```  

| Command          | Arguments   | Description                              |  
|------------------|-------------|------------------------------------------|  
| **new**          | name url    | Create a new template image.             |  
| **delete**       | name        | Delete a template image.                 |  
| **list**         |             | List available templates.                |  

---

### Snapshot Manager Commands  

```bash
boxy snapshot <command> [args]
```  

| Command          | Arguments   | Description                              |  
|------------------|-------------|------------------------------------------|  
| **new**          | name url    | Create a new snapshot.                   |  
| **delete**       | name        | Delete a snapshot.                       |  
| **list**         |             | List available snapshots.                |  

---

## Examples  

1. Create a new jail:  
   ```bash
   boxy create myjail FreeBSD-12.2
   ```  

2. List running jails:  
   ```bash
   boxy running
   ```  

3. Start a jail:  
   ```bash
   boxy myjail start
   ```  

4. Install a package inside a jail:  
   ```bash
   boxy myjail install nginx
   ```  

5. Enable Linux compatibility for a jail:  
   ```bash
   boxy myjail linuxify
   ```  

---

## Contributing  

Feel free to submit issues or pull requests to enhance `boxy`!  

---

## License  

`boxy` is licensed under the [®KILL](LICENSE.md).  

---

Happy jailing! ❤️
